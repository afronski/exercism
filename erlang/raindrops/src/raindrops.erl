-module(raindrops).

-export([convert/1]).

-define(RULES, [
    {3, "Pling"},
    {5, "Plang"},
    {7, "Plong"},
    {default, fun(N) -> io_lib:format("~B", [N]) end}
]).

convert(Number) ->
    lists:foldl(
        fun ({default, Fn}, Acc) when length(Acc) =:= 0           -> Fn(Number);
            ({default, _Fn}, Acc)                                 -> Acc;
            ({Divider, Sound}, Acc) when Number rem Divider =:= 0 -> Acc ++ Sound;
            ({_Divider, _Sound}, Acc)                             -> Acc
        end,
        "",
        ?RULES
    ).
