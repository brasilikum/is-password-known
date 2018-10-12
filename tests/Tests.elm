module Tests exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import IsPasswordKnown exposing (PotentialMatch, parseResponse)
import Test exposing (..)


suite : Test
suite =
    describe "The IsPasswordKnown module"
        [ describe "parseResponse"
            [ test "decodes one entry correctly" <|
                \_ ->
                    Expect.equal
                        [ PotentialMatch "00169791E84389EFBAA05C2EAE449D45D00" 1 ]
                        (parseResponse "00169791E84389EFBAA05C2EAE449D45D00:1")
            , test "decodes multiple entries correctly" <|
                \_ ->
                    Expect.equal
                        [ PotentialMatch "00169791E84389EFBAA05C2EAE449D45D00" 1
                        , PotentialMatch "01BC5A02D8F0DDA6DB019ACDD3F36051F7F" 1
                        ]
                        (parseResponse """00169791E84389EFBAA05C2EAE449D45D00:1
01BC5A02D8F0DDA6DB019ACDD3F36051F7F:1""")
            ]
        ]
