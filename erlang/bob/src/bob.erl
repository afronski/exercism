-module(bob).

-export([response/1]).


-spec is_letter(char()) -> boolean().
is_letter(Character) when Character >= $A andalso Character =< $Z -> true;
is_letter(Character) when Character >= $a andalso Character =< $z -> true;
is_letter(_Character)                                             -> false.

-spec is_uppercase(char()) -> boolean().
is_uppercase(Character) when Character >= $A andalso Character =< $Z -> true;
is_uppercase(_Character)                                             -> false.

-spec is_question(string()) -> boolean().
is_question([])        -> false;
is_question(Statement) -> lists:last(Statement) =:= $?.

-spec response(string()) -> string().
response(Statement) ->
    TrimmedStatement = string:trim(Statement),

    StatementLength = length(TrimmedStatement),

    SanitizedStatement = lists:filter(fun is_letter/1, TrimmedStatement),
    HasLetters = length(SanitizedStatement) > 0,

    AllUppercase = lists:all(fun is_uppercase/1, SanitizedStatement),

    QuestionLike = is_question(TrimmedStatement),

    if
        StatementLength =:= 0 -> "Fine. Be that way!";

        HasLetters andalso AllUppercase andalso QuestionLike -> "Calm down, I know what I'm doing!";
        HasLetters andalso AllUppercase andalso not QuestionLike -> "Whoa, chill out!";
        QuestionLike -> "Sure.";

        true -> "Whatever."
    end.
