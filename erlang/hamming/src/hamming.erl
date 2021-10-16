-module(hamming).

-export([distance/2]).

-spec boolean_to_integer(boolean()) -> integer().
boolean_to_integer(false) -> 0;
boolean_to_integer(true)  -> 1.

-spec distance(Strand1::string(), Strand2::string()) -> HammingDistance::integer | {error, Reason::string()}.
distance(Strand1, Strand2) when length(Strand1) =/= length(Strand2) ->
    {error, "left and right strands must be of equal length"};

distance(Strand1, Strand2) ->
    lists:sum(lists:zipwith(fun(L, R) -> boolean_to_integer(L =/= R) end, Strand1, Strand2)).
