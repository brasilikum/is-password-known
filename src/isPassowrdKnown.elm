module IsPasswordKnown exposing (check)

import Http
import SHA1


pawnedPasswordAPI =
    "https://api.pwnedpasswords.com/range/"


numberOfDigitsToSend =
    5


type Msg
    = LoadPossibleMatches (Result Http.Error String)


send : String -> Cmd Msg
send password =
    Http.send LoadPossibleMatches (check password)


check password =
    password
        |> SHA1.fromString
        |> SHA1.toHex
        |> String.left numberOfDigitsToSend
        |> String.append pawnedPasswordAPI
        |> Http.getString


parseResponse : String -> List ( String, Int )
parseResponse string =
    []


type IsPasswordKnown
    = PasswordUnknown
    | FoundTimes Int
    | Error Http.Error
