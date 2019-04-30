-module(appdemo_num).

-export([sum/2, to_int/1]).

sum(N1, N2) -> N1 + N2.

to_int(S) when is_list(S) -> list_to_integer(S).
