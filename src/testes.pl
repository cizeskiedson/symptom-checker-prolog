%Arquivo com todas as perguntas para avaliar os sintomas do usuario.
%
%
%
%

soma(X, Y, Z) :-
    X = Y + Z.

if0(X, R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
       X == 1,
       write_ln("teste1"),
       Rinite is R + 1,
       Sinusite is GS +1,
       Gripe is G + 1,
       Aviaria is GA + 1,
       Suina is S + 1,
       Asma is A,
       Dpoc is D,
       Pneumonia is P,
       Bronquite is B,
       Tuberculose is T.

if0(X,R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
      X == 2,
      write_ln("teste2"),
      Asma is A + 1,
      Dpoc is D + 1,
      Pneumonia is P + 1,
      Bronquite is B + 1,
      Rinite is R,
      Sinusite is S,
      Tuberculose is T,
      Gripe is G,
      Aviaria is GA,
      Suina is GS.

if0(X, R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
      X == 3,
      write_ln("teste3"),
      Tuberculose is T + 1,
      Rinite is R,
      Asma is A,
      Dpoc is D,
      Sinusite is S,
      Gripe is G,
      Pneumonia is P,
      Bronquite is B,
      Aviaria is GA,
      Suina is GS.

if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==1,
    Aviaria is GA + 1, Suina is GS + 1, Bronquite is B.

if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==2,
     X==2 -> Suina is GS + 1, Aviaria is GA, Bronquite is B.


if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==3,
     Suina is GS + 2, Aviaria is GA, Bronquite is B.

if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==4,
    Bronquite is B + 1, Aviaria is GA, Suina is GS.

if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==1,
    Sinusite is S + 1,
         Rinite is R,
         Gripe is G,
         Faringite is F,
         Aviaria is GA,
         Suina is GS.
if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==2,
    Rinite is R + 1,
         Gripe is G + 1,
         Aviaria is GA + 1,
         Suina is GS + 1,
         Faringite is F,
         Sinusite is S.

if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==3,
    Sinusite is S + 1,
         Faringite is F + 1,
         Aviaria is GA + 1,
         Suina is GS,
         Rinite is R,
         Sinusite is S,
         Gripe is G.

if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==4,
    Sinusite is S + 2,
          Rinite is R,
         Gripe is G,
         Faringite is F,
         Aviaria is GA,
         Suina is GS.

if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==5,
     Faringite is F + 1,
         Rinite is R,
         Gripe is G,
         Sinusite is S,
         Aviaria is GA,
         Suina is GS.


if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==6,
    Aviaria is GA + 2,
         Rinite is R,
         Gripe is G,
         Sinusite is S,
         Faringite is F,
         Suina is GS.



teste0(R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
    write_ln('Sobre tosses, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com tosse.'),
    write_ln('1 - Estou com uma tosse seca, sem presença de catarro.'),
    write_ln('2 - Estou com tosse, e há a presença de catarro.'),
    write_ln('3 - Tenho tosse com presença de sangue.'),
    read(X),
    if0(X,R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina).


teste1(B, GA, GS, Bronquite, Aviaria, Suina) :-
    write_ln('Em relação a dores no corpo, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com dores em nenhuma região do corpo.'),
    write_ln('1 - Sinto dores nos músculos.'),
    write_ln('2 - Sinto dores nas articulações.'),
    write_ln('3 - Sinto dores nos músculos e nas articulações.'),
    write_ln('4 - Sinto dores apenas nas costas.'),
     read(user_input, X),
     if1(X, B, GA, GS, Bronquite, Aviaria, Suina).

teste2(R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina) :-
    write_ln('Em relação a dores na região da cabeça, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com dores em nenhuma região da cabeça.'),
    write_ln('1 - Sinto dores superficiais no rosto.'),
    write_ln('2 - Sinto dores de cabeça.'),
    write_ln('3 - Sinto dores na garganta.'),
    write_ln('4 - Sinto dores na garganta, e na parte superficial do rosto.'),
    write_ln('5 - Sinto dores na garganta apenas ao engolir, como se estivesse arranhada.'),
    write_ln('6 - Estou sentindo minha garganta inflamada e dores de cabeça.'),
    read(user_input, X),
    if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina).

teste3(R, Rinite) :-
    write_ln('Você está espirrando frequentemente?'),
    read(user_input, X),
    (   X==1 -> Rinite is R + 1
    ).

teste4(R, G, B, S, Rinite, Gripe, Bronquite, Suina) :-
    write_ln('Seu nariz apresenta coriza (nariz escorrendo)? '),
    read(user_input, X),
    (   X==1 -> Rinite is R + 1,
        Gripe is G + 1,
        Bronquite is B + 1,
        Suina is S + 1).


teste5(R, S, Rinite, Sinusite) :-
    write_ln('Seu nariz está congestionado?'),
    read(user_input, X),
    (   X==1 -> Rinite is R + 1,
        Sinusite is S + 1
    ).


teste6(A, D, T, P, GA, Asma, Dpoc, Tuberculose, Pneumonia, Aviaria) :-
    write_ln('Você está sentindo falta de ar ao respirar?'),
    read(user_input, X),
    (   X==1 -> Asma is A + 1,
        Dpoc is D + 1,
        Tuberculose is T + 1,
        Pneumonia is P + 1,
        Aviaria is GA + 1
    ).


teste7(A, B, Asma, Bronquite) :-
    write_ln('Ao respirar seu peito emite um barulho, como um chiado?'),
    read(user_input, X),
    (   X==1 -> Asma is A + 1,
        Bronquite is B + 1
    ).


teste8(A, B, Asma, Bronquite) :-
    write_ln('Você está sentindo cansaço ou fadiga?'),
    read(user_input, X),
    (   X==1 -> Asma is A +1,
        Bronquite is B + 1
    ).


teste9(T, G, F, B, GA, GS, Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina) :-
    write_ln('Você está com febre alta?'),
    read(user_input, X),
    (   X==1 -> Tuberculose is T + 1,
        Gripe is G + 1,
        Faringite is F + 1,
        Bronquite is B + 1,
        Aviaria is GA + 1,
        Suina is GS + 1
    ).


teste10(S, GS, Sinusite, Suina) :-
    write_ln('Sobre seus olhos, eles estão sensíveis ou irritados?'),
    read(user_input, X),
    (   X==1 -> Sinusite is S + 1,
        Suina is GS + 1
    ).


teste11(T, P, Tuberculose, Pneumonia) :-
    write_ln('Ao respirar, você sente dores?'),
    read(user_input, X),
    (   X==1 -> Tuberculose is T + 1,
        Pneumonia is P + 1
    ).


teste12(T, Tuberculose) :-
    write_ln('Ao acordar de manhã, você percebe que suou excessivamente durante a noite?'),
    read(user_input, X),
    (   X==1 -> Tuberculose is T + 1
    ).


teste13(T, Tuberculose) :-
    write_ln('Você experenciou perda de peso desde a aparição dos sintomas?'),
    read(user_input, X),
    (   X==1 -> Tuberculose is T +1
    ).


teste14(R, Rinite) :-
    write_ln('Sente coceiras em alguma região do seu corpo?'),
    read(user_input, X),
    (   X==1 -> Rinite is R + 1
    ).


teste15(S, Sinusite) :-
    write_ln('Você está com mau hálito bucal?'),
    read(user_input, X),
    (   X==1 -> Sinusite is S + 1).












