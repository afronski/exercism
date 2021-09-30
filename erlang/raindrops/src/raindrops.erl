-module(raindrops).

-export([convert/1]).

convert(Number) ->
    return_number_if_empty(Number,
        make_sound(Number, 7, "Plong",
            make_sound(Number, 5, "Plang",
                make_sound(Number, 3, "Pling", "")
            )
        )
    ).

make_sound(Number, Divider, Sound, Acc) when Number rem Divider =:= 0 -> Acc ++ Sound;
make_sound(_Number, _Divider, _Sound, Acc)                            -> Acc.

return_number_if_empty(Number, Acc) when length(Acc) =:= 0 -> io_lib:format("~B", [Number]);
return_number_if_empty(_Number, Acc)                       -> Acc.
