module IsPasswordKnown exposing (IsPasswordKnown(..), createRequest, isPasswordKnown)

import Http
import Parser exposing ((|.), (|=))
import SHA1


pawnedPasswordAPI =
    "https://api.pwnedpasswords.com/range/"


numberOfDigitsToSend =
    5


createRequest password =
    password
        |> SHA1.fromString
        |> SHA1.toHex
        |> String.left numberOfDigitsToSend
        |> String.append pawnedPasswordAPI
        |> Http.getString


isPasswordKnown : String -> String -> IsPasswordKnown
isPasswordKnown password responseString =
    List.foldl
        (\currentElement aggregate ->
            case aggregate of
                PasswordMatchedTimes _ ->
                    aggregate

                PasswordUnknown ->
                    isItMatch password currentElement
        )
        PasswordUnknown
        (parseResponse responseString)


isItMatch : String -> PotentialMatch -> IsPasswordKnown
isItMatch password potentialMatch =
    let
        remainingPasswordHash =
            password
                |> SHA1.fromString
                |> SHA1.toHex
                |> String.dropLeft numberOfDigitsToSend
    in
    case String.toLower remainingPasswordHash == String.toLower potentialMatch.hash of
        True ->
            PasswordMatchedTimes potentialMatch.ocurrences

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
    | PasswordMatchedTimes Int
