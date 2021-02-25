:-use_module(library(plunit)).

switch(X, [
           a : writeln('1'),
           b : writeln('2'),
           c : writeln('3')
       ]).

switch( X, [Val:Goal|Cases]) :-
    (   X=Val -> call(Goal);

    switch(X, Cases)
    ).


