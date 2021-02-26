%Arquivo com todas as perguntas para avaliar os sintomas do usuario.
%
%
teste0(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
    write_ln('Sobre tosses, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com tosse.'),
    write_ln('1 - Estou com uma tosse seca, sem presença de catarro.'),
    write_ln('2 - Estou com tosse, e há a presença de catarro.'),
    write_ln('3 - Tenho tosse com presença de sangue.'),
    read(user_input, X),
    (   X=1 -> Rinite is Rinite + 1,
        Sinusite is Sinusite +1,
        Gripe is Gripe + 1,
        Aviaria is Aviaria + 1,
        Suina is Suina + 1),
    (   X=2 -> Asma is Asma + 1,
        Dpoc is Dpoc + 1,
        Pneumonia is Pneumonia + 1,
        Bronquite is Bronquite + 1),
    (   X=3 -> Tuberculose is Tuberculose + 1).

teste1(Bronquite, Aviaria, Suina) :-
    write_ln('Em relação a dores no corpo, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com dores em nenhuma região do corpo.'),
    write_ln('1 - Sinto dores nos músculos.'),
    write_ln('2 - Sinto dores nas articulações.'),
    write_ln('3 - Sinto dores nos músculos e nas articulações.'),
    write_ln('4 - Sinto dores apenas nas costas.'),
     read(user_input, X),
     (   X=1 -> Aviaria is Aviaria + 1, Suina is Suina + 1),
     (   X=2 -> Suina is Suina + 1),
     (   X=3 -> Suina is Suina + 2),
     (   X=4 -> Bronquite is Bronquite + 1).


teste2(Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina) :-
    write_ln('Em relação a dores na região da cabeça, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com dores em nenhuma região da cabeça.'),
    write_ln('1 - Sinto dores superficiais no rosto.'),
    write_ln('2 - Sinto dores de cabeça.'),
    write_ln('3 - Sinto dores na garganta.'),
    write_ln('4 - Sinto dores na garganta, e na parte superficial do rosto.'),
    write_ln('5 - Sinto dores na garganta apenas ao engolir, como se estivesse arranhada.'),
    write_ln('6 - Estou sentindo minha garganta inflamada e dores de cabeça.'),
    read(user_input, X),
     (   X=1 -> Sinusite is Sinusite + 1),

     (   X=2 -> Rinite is Rinite + 1,
         Gripe is Gripe + 1,
         Aviaria is Aviaria + 1,
         Suina is Suina + 1),

     (   X=3 -> Sinusite is Sinusite + 1,
         Faringite is Faringite + 1,
         Aviaria is Aviaria + 1),

     (   X=4 -> Sinusite is Sinusite + 2),

     (   X=5 -> Faringite is Faringite + 1),

     (   X=6 -> Aviaria is Aviaria + 2).

teste3(Rinite) :-
    write_ln('Você está espirrando frequentemente?'),
    read(user_input, X),
    (   X=1 -> Rinite is Rinite + 1
    ).

teste4(Rinite, Gripe, Bronquite, Suina) :-
    write_ln('Seu nariz apresenta coriza (nariz escorrendo)? '),
    read(user_input, X),
    (   X=1 -> Rinite is Rinite + 1,
        Gripe is Gripe + 1,
        Bronquite is Bronquite + 1,
        Suina is Suina + 1).


teste5(Rinite, Sinusite) :-
    write_ln('Seu nariz está congestionado?'),
    read(user_input, X),
    (   X=1 -> Rinite is Rinite + 1,
        Sinusite is Sinusite + 1
    ).


teste6(Asma, Dpoc, Tuberculose, Pneumonia, Aviaria) :-
    write_ln('Você está sentindo falta de ar ao respirar?'),
    read(user_input, X),
    (   X=1 -> Asma is Asma + 1,
        Dpoc is Dpoc + 1,
        Tuberculose is Tuberculose + 1,
        Pneumonia is Pneumonia + 1,
        Aviaria is Aviaria + 1
    ).


teste7(Asma, Bronquite) :-
    write_ln('Ao respirar seu peito emite um barulho, como um chiado?'),
    read(user_input, X),
    (   X=1 -> Asma is Asma + 1,
        Bronquite is Bronquite + 1
    ).


teste8(Asma, Bronquite) :-
    write_ln('Você está sentindo cansaço ou fadiga?'),
    read(user_input, X),
    (   X=1 -> Asma is Asma +1,
        Bronquite is Bronquite + 1
    ).


teste9(Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina) :-
    write_ln('Você está com febre alta?'),
    read(user_input, X),
    (   X=1 -> Tuberculose is Tuberculose + 1,
        Gripe is Gripe + 1,
        Faringite is Faringite + 1,
        Bronquite is Bronquite + 1,
        Aviaria is Aviaria + 1,
        Suina is Suina + 1
    ).


teste10(Sinusite, Suina) :-
    write_ln('Sobre seus olhos, eles estão sensíveis ou irritados?'),
    read(user_input, X),
    (   X=1 -> Sinusite is Sinusite + 1,
        Suina is Suina + 1
    ).


teste11(Tuberculose, Pneumonia) :-
    write_ln('Ao respirar, você sente dores?'),
    read(user_input, X),
    (   X=1 -> Tuberculose is Tuberculose + 1,
        Pneumonia is Pneumonia + 1
    ).


teste12(Tuberculose) :-
    write_ln('Ao acordar de manhã, você percebe que suou excessivamente durante a noite?'),
    read(user_input, X),
    (   X=1 -> Tuberculose is Tuberculose + 1
    ).


teste13(Tuberculose) :-
    write_ln('Você experenciou perda de peso desde a aparição dos sintomas?'),
    read(user_input, X),
    (   X=1 -> Tuberculose is Tuberculose +1
    ).


teste14(Rinite) :-
    write_ln('Sente coceiras em alguma região do seu corpo?'),
    read(user_input, X),
    (   X=1 -> Rinite is Rinite + 1
    ).


teste15(Sinusite) :-
    write_ln('Você está com mau hálito bucal?'),
    read(user_input, X),
    (   X=1 -> Sinusite is Sinusite + 1).












