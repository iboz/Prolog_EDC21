drink(gin_tonik, 4).
%% A friend of ours is experiencing terrible hangovers each time he goes out. Let's write a program that calculates his experience based on
%% amount of alcohol he had. Write method advice that takes list as an input for exaple: ?-advice([wiskey, wiskey, beer, cosmopolitan])
%% writes an output 'strong headache'. Depending on the sum of strenghts program prints following messages:
%% (Strength =< 15) 'happy'..... (Strength =<20, Strength >15) 'headache'....(Strength =<25, Strength >20) 'blackout'...(Strength >25) 'legevakt'
%% input list might contain drinks that are not in the base, they count as 0 for example ?-advice([beer, wiskey, cola, rakija]).


drink(cosmopolitan, 4).
drink(beer, 2).
drink(wine, 3).
drink(vodka, 3).
drink(shoot, 5).
drink(rum, 5).
drink(wiskey, 5).
drink(brandy, 5).

%% write function reaction that finds drink in the base knowledge and returns Strength, if a drink is not in the base returns Strength 0

%% base case for reaction/2
reaction.
%% recursive case for reaction/2 (tip: you might need cut! why?)
reaction/2

	
%% finish function message
message(Strength, 'happy'):- 
message(Strength, 'headache') :- 
message(Strength, 'blackout') :- 
message(Strength, 'legevakt') :- 

%% base case for function get_strength/2
get_strength/2.
%% recusive case for function get_strength/2..It calls reaction and itself(recursion) and sum up the Strengths of all drinks
get_strength([H | T], Result):-
	reaction(H, Strength),
	get_strength(T, NewResult),
	Result is Strength + NewResult.

% write function advice that calls get_strength and print the message.	
advice(List):-
	