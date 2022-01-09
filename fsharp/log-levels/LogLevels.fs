module LogLevels

open System.Text.RegularExpressions

let parseLine input =
    Regex.Match(input, "\[(?<level>\w+)\]:\s*(?<message>.*\w)")
    |> (fun x -> (x.Groups.["level"].Value.ToLower(), x.Groups.["message"].Value))

let message (logLine: string): string =
    logLine |> parseLine |> snd

let logLevel(logLine: string): string =
    logLine |> parseLine |> fst

let reformat(logLine: string): string =
    let level, message = parseLine logLine
    $"""{message} ({level})"""
