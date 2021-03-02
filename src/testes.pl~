%Arquivo com todas as perguntas para avaliar os sintomas do usuario.
%
%
%%
%

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
    if3(X, R, Rinite).

teste4(R, G, B, S, Rinite, Gripe, Bronquite, Suina) :-
    write_ln('Seu nariz apresenta coriza (nariz escorrendo)? '),
    read(user_input, X),
    if4(X, R, G, B, S, Rinite, Gripe, Bronquite, Suina).


teste5(R, S, Rinite, Sinusite) :-
    write_ln('Seu nariz está congestionado?'),
    read(user_input, X),
    if5(X, R, S, Rinite, Sinusite).

teste6(A, D, T, P, GA, Asma, Dpoc, Tuberculose, Pneumonia, Aviaria) :-
    write_ln('Você está sentindo falta de ar ao respirar?'),
    read(user_input, X),
    if6(X, A, D, T, P, GA, Asma, Dpoc, Tuberculose, Pneumonia, Aviaria).


teste7(A, B, Asma, Bronquite) :-
    write_ln('Ao respirar seu peito emite um barulho, como um chiado?'),
    read(user_input, X),
    if7(X, A, B, Asma, Bronquite).


teste8(A, B, Asma, Bronquite) :-
    write_ln('Você está sentindo cansaço ou fadiga?'),
    read(user_input, X),
    if8(X, A, B, Asma, Bronquite).


teste9(T, G, F, B, GA, GS, Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina) :-
    write_ln('Você está com febre alta?'),
    read(user_input, X),
    if9(X,T, G, F, B, GA, GS, Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina).


teste10(S, GS, Sinusite, Suina) :-
    write_ln('Sobre seus olhos, eles estão sensíveis ou irritados?'),
    read(user_input, X),
    if10(X, S, GS, Sinusite, Suina).


teste11(T, P, Tuberculose, Pneumonia) :-
    write_ln('Ao respirar, você sente dores?'),
    read(user_input, X),
    if11(X, T, P, Tuberculose, Pneumonia).


teste12(T, Tuberculose) :-
    write_ln('Ao acordar de manhã, você percebe que suou excessivamente durante a noite?'),
    read(user_input, X),
     if12(X, T, Tuberculose).


teste13(T, Tuberculose) :-
    write_ln('Você experenciou perda de peso desde a aparição dos sintomas?'),
    read(user_input, X),
    if13(X, T, Tuberculose).


teste14(R, Rinite) :-
    write_ln('Sente coceiras em alguma região do seu corpo?'),
    read(user_input, X),
    if14(X, R, Rinite).


teste15(S, Sinusite) :-
    write_ln('Você está com mau hálito bucal?'),
    read(user_input, X),
    if15(X, S, Sinusite).


if0(X, R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
    Rinite is R, Asma is A, Dpoc is D, Sinusite is S, Tuberculose is T, Gripe is G, Pneumonia is P, Bronquite is B, Aviaria is GA, Suina is GS.


if0(X, R,A,D,S,T,G, P, B, GA,GS, Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
       X == 1,
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
    X==0,
    Aviaria is GA, Suina is GS, Bronquite is B.



if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==1,
    Aviaria is GA + 1, Suina is GS + 1, Bronquite is B.

if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==2,
      Suina is GS + 1, Aviaria is GA, Bronquite is B.


if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==3,
     Suina is GS + 2, Aviaria is GA, Bronquite is B.

if1(X, B, GA, GS, Bronquite, Aviaria, Suina):-
    X==4,
    Bronquite is B + 1, Aviaria is GA, Suina is GS.

if2(X, R, S, G, F, GA, GS, Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina):-
    X==0,
    Sinusite is S,
         Rinite is R,
         Gripe is G,
         Faringite is F,
         Aviaria is GA,
         Suina is GS.


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

if3(X, R, Rinite) :-
    X==0,
    Rinite is R.

if3(X, R, Rinite) :-
    X==1,
    Rinite is R + 1.

if4(X, R, G, B, S, Rinite, Gripe, Bronquite, Suina) :-
    X==0,
    Rinite is R,
    Gripe is G,
    Bronquite is B,
    Suina is S.

if4(X, R, G, B, S, Rinite, Gripe, Bronquite, Suina) :-
    X==1,
    Rinite is R+1,
    Gripe is G+1,
    Bronquite is B+1,
    Suina is S+1.

if5(X, R, S, Rinite, Sinusite) :-
    X==0,
    Rinite is R,
    Sinusite is S.

if5(X, R, S, Rinite, Sinusite) :-
    X==1,
    Rinite is R+1,
    Sinusite is S+1.

if6(X, A, D, T, P, GA, Asma, Dpoc, Tuberculose, Pneumonia, Aviaria) :-
    X==0,
    Asma is A,
        Dpoc is D,
        Tuberculose is T,
        Pneumonia is P,
        Aviaria is GA.

if6(X, A, D, T, P, GA, Asma, Dpoc, Tuberculose, Pneumonia, Aviaria) :-
    X==1,
    Asma is A + 1,
        Dpoc is D + 1,
        Tuberculose is T + 1,
        Pneumonia is P + 1,
        Aviaria is GA + 1.

if7(X, A, B, Asma, Bronquite) :-
    X==0,
     Asma is A,
        Bronquite is B.


if7(X, A, B, Asma, Bronquite) :-
    X==1,
     Asma is A + 1,
        Bronquite is B + 1.

if8(X, A, B, Asma, Bronquite) :-
    X==0,
    Asma is A,
        Bronquite is B.

if8(X, A, B, Asma, Bronquite) :-
    X==1,
    Asma is A+1,
    Bronquite is B+1.

if9(X, T, G, F, B, GA, GS, Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina) :-
    X==0,
    Tuberculose is T,
        Gripe is G,
        Faringite is F,
        Bronquite is B,
        Aviaria is GA,
        Suina is GS.

if9(X, T, G, F, B, GA, GS, Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina) :-
    X==1,
    Tuberculose is T + 1,
        Gripe is G + 1,
        Faringite is F + 1,
        Bronquite is B + 1,
        Aviaria is GA + 1,
        Suina is GS + 1.



if10(X, S, GS, Sinusite, Suina):-
    X==0,
    Sinusite is S ,
        Suina is GS .

if10(X, S, GS, Sinusite, Suina):-
    X==1,
    Sinusite is S+1,
    Suina is GS+1.

if11(X, T, P, Tuberculose, Pneumonia):-
    X==0,
    Tuberculose is T,
        Pneumonia is P.


if11(X, T, P, Tuberculose, Pneumonia):-
    X==1,Tuberculose is T + 1,
        Pneumonia is P + 1.


if12(X, T, Tuberculose):-
    X==0, Tuberculose is T.

if12(X, T, Tuberculose):-
    X==1, Tuberculose is T+1.

if13(X, T, Tuberculose) :-
    X==0, Tuberculose is T.

if13(X, T, Tuberculose) :-
    X==1, Tuberculose is T+1.

if14(X, R, Rinite) :-
    X==0, Rinite is R.

if14(X, R, Rinite) :-
    X==1, Rinite is R+1.

if15(X, S, Sinusite):-
    X==0, Sinusite is S.

if15(X, S, Sinusite):-
    X==1, Sinusite is S+1.






















