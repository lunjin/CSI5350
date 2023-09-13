solve(true).
solve((A,As)) :- 
	solve(A),
	solve(As).
solve(A) :-
        A \= true,
        A \= (_,_),
	clause(A,B),
	solve(B).



p(X) :- q(X), r(X), s(X).
p(a). 

q(a). q(b). q(c). 
r(b). r(c).
s(c). 
