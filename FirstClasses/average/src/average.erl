-module(average).

-export([average/1]).

average([]) ->
    0;

average(List) ->
    Sum = sum(List, 0),
    Sum/length(List).

sum(List, Sum) when length(List) == 0 ->
    Sum;

sum(List, Sum) ->
    [H|T] = List,
    sum(T, Sum+H).


