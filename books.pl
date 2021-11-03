book(1,'Prolog',400).
book(23,'Norsk grammatikk',42).
person('Bratko').
person('Mac Donald').
author('Bratko',1).
author('Mac Donald',23).
hates('Bratko',1).
owns('Mac Donald',23).

%% Formulate a query to retrieve book Titles numbers.
%% queryTitles(Title) .

%% Formulate a query to retrieve the names of books that are hated by their author.
%% hatedBooks(Name) .

%% Formulate a query to retrieve the names of the books together with their author. Make Prolog print for each result a line like this:
%% the book booktitle is written by author name 
print_info:-
	author(Person,ISBN),
	book(ISBN,Title,_),
	write('The book '),
	write(Title),
	write(' is written by '),
	write(Person).

%% Write a predicate proud_author/1 which succeeds for all people that own at least one of the books they have written.
%% proud_author(Person).