inv(0,1).
inv(1,0).

and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1). 

circuit(1,1).
circuit(0,0).
circuit(C,V) :-
    nonvar(C),
    C = and(X,Y),
    circuit(X,V1),
    circuit(Y,V2),
    and(V1,V2,V).
circuit(C,V) :- 
    nonvar(C),
    C = or(X,Y),
    circuit(X,V1),
    circuit(Y,V2),
    or(V1,V2,V).
circuit(C,V) :-
    nonvar(C), 
    C = inv(X),
    circuit(X,V1),
    inv(V1,V).
