module Test.Generated.Main2698586821 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.suite] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport Monochrome), seed = 1545325704331, processes = 8, paths = ["/Users/georghartmann/Code/elm/is-password-known/tests/Tests.elm"]}