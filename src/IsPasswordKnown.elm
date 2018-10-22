module IsPasswordKnown exposing (IsPasswordKnown(..), hashAndCut, isPasswordKnown, requestPossibleMatches)

import Http
import Parser exposing ((|.), (|=))
import SHA1


pawnedPasswordAPI =
    "https://api.pwnedpasswords.com/range/"


numberOfDigitsToSend =
    5


type Password
    = Password String


hashAndCut password =
    password
        |> SHA1.fromString
        |> SHA1.toHex
        |> String.left numberOfDigitsToSend
        |> Password


requestPossibleMatches password =
    case password of
        Password pass ->
            pass
                |> String.append pawnedPasswordAPI
                |> Http.getString



-- Response


isPasswordKnown : String -> String -> IsPasswordKnown
isPasswordKnown password responseString =
    List.foldl
        (\currentElement aggregate ->
            case aggregate of
                FoundInBreachedDataTimes _ ->
                    aggregate

                PasswordUnknown ->
                    doesItMatch password currentElement
        )
        PasswordUnknown
        (parseResponse responseString)


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


type IsPasswordKnown
    = PasswordUnknown
    | FoundInBreachedDataTimes Int
