module IsPasswordKnown exposing
    ( hashAndCut, requestPossibleMatches
    , isPasswordKnown, IsPasswordKnown(..)
    )

{-| This package checks a given password against the public API of haveibeenpwned.com

A typical use would look like this:

    requestPassword : String -> Cmd Msg
    requestPassword pass =
        pass
            |> hashAndCut
            |> Debug.log "This will be sent to HaveIBeenPawned.com"
            |> requestPossibleMatches
            |> Http.send PasswordResponse

The reason that `hashAndCut` is separate from `requestPossibleMatches` is so that
the developer can easily inspect that the password does not actually get passed
to the request, only the first five digets of it's hash


# Generate the request to the API

@docs hashAndCut, requestPossibleMatches


# Check the returned list for a match

@docs isPasswordKnown, IsPasswordKnown

-}

import Http
import Parser exposing ((|.), (|=))
import SHA1


pawnedPasswordAPI =
    "https://api.pwnedpasswords.com/range/"


numberOfDigitsToSend =
    5


type Password
    = Password String


{-| Hash your password and take only the first 5 characters. This is the only
exposed function to create a password so you don't send your any passwords
by accident.

    requestPassword : String -> Cmd Msg
    requestPassword pass =
        pass
            |> hashAndCut
            |> Debug.log "This will be sent to HaveIBeenPawned.com"
            |> requestPossibleMatches
            |> Http.send PasswordResponse

-}
hashAndCut : String -> Password
hashAndCut password =
    password
        |> SHA1.fromString
        |> SHA1.toHex
        |> String.left numberOfDigitsToSend
        |> Password


{-| Turn the previously hased password into a request to the API of HaveIBeenPawned.com.
Because the password is hashed and limited to 5 characters, a potential Man-in-the-middle cannot easily capture
the password.
-}
requestPossibleMatches : Password -> Http.Request String
requestPossibleMatches password =
    case password of
        Password pass ->
            pass
                |> String.append pawnedPasswordAPI
                |> Http.getString



-- Response


{-| This takes the password and the result of the http request done before.
If the http request errored, the error is retuned in the result
-}
isPasswordKnown : String -> Result Http.Error String -> Result Http.Error IsPasswordKnown
isPasswordKnown password result =
    case result of
        Ok responseString ->
            let
                foldForKnownPassword =
                    \currentElement aggregate ->
                        case aggregate of
                            FoundInBreachedDataTimes _ ->
                                aggregate

                            PasswordUnknown ->
                                doesItMatch password currentElement
            in
            List.foldl
                foldForKnownPassword
                PasswordUnknown
                (parseResponse responseString)
                |> Ok

        Err errorHttp ->
            Err errorHttp


{-| Possible results of a request to the HaveIBeenPawned API.
Note that it does not matter how often a password was found in breaches:
I it was found even once, it is on lists that are used in actual attacks!
-}
type IsPasswordKnown
    = PasswordUnknown
    | FoundInBreachedDataTimes Int


doesItMatch : String -> PotentialMatch -> IsPasswordKnown
doesItMatch password potentialMatch =
    let
        remainingPasswordHash =
            password
                |> SHA1.fromString
                |> SHA1.toHex
                |> String.dropLeft numberOfDigitsToSend
    in
    case
        String.toLower remainingPasswordHash
            == String.toLower potentialMatch.hash
    of
        True ->
            FoundInBreachedDataTimes potentialMatch.ocurrences

        False ->
            PasswordUnknown


parseResponse : String -> List PotentialMatch
parseResponse apiResponse =
    let
        parserResult =
            Parser.run responseParser apiResponse
    in
    case parserResult of
        Ok potentialMatch ->
            potentialMatch

        Err err ->
            [ PotentialMatch (Parser.deadEndsToString err) 0 ]


responseParser : Parser.Parser (List PotentialMatch)
responseParser =
    Parser.sequence
        { start = ""
        , separator = ""
        , end = ""
        , spaces = Parser.spaces
        , item = potentialMatchParser
        , trailing = Parser.Optional
        }


type alias PotentialMatch =
    { hash : String, ocurrences : Int }


potentialMatchParser : Parser.Parser PotentialMatch
potentialMatchParser =
    Parser.succeed PotentialMatch
        |= Parser.getChompedString (Parser.chompUntil ":")
        |. Parser.symbol ":"
        |= Parser.int
