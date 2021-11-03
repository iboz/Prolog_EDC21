parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).

mother(X,Y) :- parent(X,Y), female(X).

grandparent(X,Z) :- parent(X,Y), parent(Y,Z).

%% write function sister(X,Y) .

ancestor(X,Z) :- parent(X,Z).

ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z).

%% write function fullsyblings(X, Y). Assume that X and Y have the same parents.
