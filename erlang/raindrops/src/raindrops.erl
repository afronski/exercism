-module(raindrops).

-export([convert/1]).

-define(RULES, [ {3, "Pling"}, {5, "Plang"}, {7, "Plong"} ]).

convert(Number) ->
    return_number_if_empty(
        Number,
        lists:foldl(
            fun ({Divider, Sound}, Acc) when Number rem Divider =:= 0 -> Acc ++ Sound;
                (_Element, Acc)                                       -> Acc
            end,
            "",
            ?RULES
        )
    ).

return_number_if_empty(Number, Acc) when length(Acc) =:= 0 -> io_lib:format("~B", [Number]);
return_number_if_empty(_Number, Acc)                       -> Acc.
