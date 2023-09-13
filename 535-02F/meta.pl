solve([]).
solve([A|As]) :- 
	solve(A),
	solve(As).
solve(A) :-
	pg_clause(A,B),
	solve(B).

pg_clause(p(X), [q(X), r(X), s(X)]).
pg_clause(p(a),[]). 

pg_clause(q(a),[]).
pg_clause(q(b),[]). 
pg_clause(q(c),[]).
 
pg_clause(r(b),[]). 
pg_clause(r(c),[]).

pg_clause(s(c),[]). 
