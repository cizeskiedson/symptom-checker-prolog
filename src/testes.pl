%Arquivo com todas as perguntas para avaliar os sintomas do usuario.
%
%
teste1(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina) :-
    write_ln('Sobre tosses, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com tosse.'),
    write_ln('1 - Estou com uma tosse seca, sem presença de catarro.'),
    write_ln('2 - Estou com tosse, e há a presença de catarro.'),
    write_ln('3 - Tenho tosse com presença de sangue.'),
    read(user_input, X),
    (   X=1 -> dostuff ),
    (   X=2 -> dostuff),
    (   X=3 -> dostuff).

teste2(Sintoma) :-
    write_ln('Em relação a dores no corpo, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com dores em nenhuma região do corpo.'),
    write_ln('1 - Sinto dores nos músculos.'),
    write_ln('2 - Sinto dores nas articulações.'),
    write_ln('3 - Sinto dores nos músculos e nas articulações.'),
    write_ln('4 - Sinto dores apenas nas costas.'),
     read(user_input, X),
     (   X=1 -> dostuff),
     (   X=2 -> dostuff),
     (   X=3 -> dostuff),
     (   X=4 -> dostuff).


teste3(Sintoma) :-
    write_ln('Em relação a dores na região da cabeça, responda digitando o número da opção que melhor descreve o que está sentindo.'),
    write_ln('0 - Não estou com dores em nenhuma região da cabeça.'),
    write_ln('1 - Sinto dores superficiais no rosto.'),
    write_ln('2 - Sinto dores de cabeça.'),
    write_ln('3 - Sinto dores na garganta.'),
    write_ln('4 - Sinto dores na garganta, e na parte superficial do rosto.'),
    write_ln('5 - Sinto dores na garganta apenas ao engolir, como se estivesse arranhada.'),
    write_ln('6 - Estou sentindo minha garganta inflamada e dores de cabeça.'),
    read(user_input, X),
     (   X=1 -> dostuff),
     (   X=2 -> dostuff),
     (   X=3 -> dostuff),
     (   X=4 -> dostuff),
     (   X=5 -> dostuff),
     (   X=6 -> dostuff).




teste3(Sintoma) :-
    write_ln('Você está espirrando frequentemente?'),
    read(user_input, X).

teste4(Sintoma) :-
    write_ln('Seu nariz apresenta coriza (nariz escorrendo)? '),
    read(user_input, X).

teste5(Sintoma) :-
    write_ln('Seu nariz está congestionado?'),
    read(user_input, X).

teste6(Sintoma) :-
    write_ln('Você está sentindo falta de ar ao respirar?'),
    read(user_input, X).

teste7(Sintoma) :-
    write_ln('Ao respirar seu peito emite um barulho, como um chiado?'),
    read(user_input, X).

teste8(Sintoma) :-
    write_ln('Você está sentindo cansaço ou fadiga?'),
    read(user_input, X).

teste9(Sintoma) :-
    write_ln('Você está com febre alta?'),
    read(user_input, X).

teste10(Sintoma) :-
    write_ln('Sobre seus olhos, eles estão sensíveis ou irritados?'),
    read(user_input, X).

teste11(Sintoma) :-
    write_ln('Ao respirar, você sente dores?'),
    read(user_input, X).

teste12(Sintoma) :-
    write_ln('Ao acordar de manhã, você percebe que suou excessivamente durante a noite?'),
    read(user_input, X).

teste13(Sintoma) :-
    write_ln('Você experenciou perda de peso desde a aparição dos sintomas?'),
    read(user_input, X).

teste14(Sintoma) :-
    write_ln('Sente coceiras em alguma região do seu corpo?'),
    read(user_input, X).

teste15(Sintoma) :-
    write_ln('Você está com mau hálito bucal?'),
    read(user_input, X).











