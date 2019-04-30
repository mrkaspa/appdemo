-module(appdemo).

%% API exports
-export([main/1]).

-import(appdemo_num, [sum/2, to_int/1]).

%%====================================================================
%% API functions
%%====================================================================

%% escript Entry point
main(Args) ->
    [S1, S2 | _] = Args,
    {N1, N2} = {to_int(S1), to_int(S2)},
    Res = sum(N1, N2),
    io:format("Args: ~w + ~w = ~w ~n", [N1, N2, Res]),
    erlang:halt(0).

%%====================================================================
%% Internal functions
%%====================================================================

