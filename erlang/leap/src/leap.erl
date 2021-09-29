-module(leap).

-export([leap_year/1]).

%% Normally I would do this way:

% leap_year(Year) -> calendar:is_leap_year(Year).

leap_year(Year) when Year rem 4 =:= 0, Year rem 100 =/= 0; Year rem 400 =:= 0 -> true;
leap_year(_Year)                                                              -> false.

% Or cleaner way:

% leap_year(Year) when Year rem 400 =:= 0 -> true;
% leap_year(Year) when Year rem 100 =:= 0 -> false;
% leap_year(Year) when Year rem   4 =:= 0 -> true;
% leap_year(_)                            -> false.