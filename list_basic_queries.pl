%% run and analyse following queries:

a = [a | []].

[H | T] = [a, b, c, d].

[H | T] = [a, b | []].

[E1, E2 | T] = [a, b, c].

X = a,   Y = [1, [2,3]], Z = [X | Y].

X = a,   Y = [1, [2,3]], Z = [X,Y].

X = [a], Y = [1, [2,3]], Z = [X,Y].