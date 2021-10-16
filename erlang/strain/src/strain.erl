-module(strain).

-export([keep/2, discard/2]).

-spec evaluator(function(), term(), boolean()) -> list().
evaluator(Fn, Value, When) ->
  case Fn(Value) of
    When -> [ Value ];
    _    -> []
  end.

-spec keep(function(), list()) -> list().
keep(Fn, List) -> keep(Fn, List, []).

-spec keep(function(), list(), list()) -> list().
keep(_Fn, [], Acc)     -> Acc;
keep(Fn, [H | T], Acc) -> keep(Fn, T, Acc ++ evaluator(Fn, H, true)).

-spec discard(function(), list()) -> list().
discard(Fn, List) -> discard(Fn, List, []).

-spec discard(function(), list(), list()) -> list().
discard(_Fn, [], Acc)     -> Acc;
discard(Fn, [H | T], Acc) -> discard(Fn, T, Acc ++ evaluator(Fn, H, false)).
