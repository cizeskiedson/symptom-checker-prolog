% TRABALHO 1 PRÁTICO DE PPLF
% implementar um Sistema de Checagem de Sintomas usando Prolog

:- include('baseDados.pl').

%% Inicia-se o procedimento do sistema, avaliando as respostas dadas
% pelo usuario
%
%
%

menuDoencas :-
     writeln("----------------------------------------------------------------------"),
     writeln("Bem vindo ao nosso sistema de detecção de doenças respiratórias."),
     writeln("Iremos ajudá-lo através de um questionário a identificar possíveis doenças com base no que está sentindo."),
     writeln("É importante lembrar da importância de consultar um médico especialista, caso necessário."),
     writeln("Para iniciar o teste, e começar a responder o questionário digite 1, se quiser sair digite 0:"),
     read(user_input, X),
     (   X == 1 -> iniciar(); abort()
     ),
     writeln("Nao se esqueça do ponto final ao digitar o comando."),
     writeln("----------------------------------------------------------------------"),
     iniciar().



iniciar :-
    nl,
    writeln("Como já mencionado, esse teste não é um diagnóstico, mas sim apenas uma checagem de sintomas."),
    writeln("Para cada pergunta responda de acordo com as instruções dadas."),
    nl,
    questionario(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Faringite, Pneumonia, Bronquite, Aviaria, Suina),
    probabilidade(ResRinite, Rinite, 6),
    probabilidade(ResAsma, Asma, 4),
    probabilidade(ResDpoc, Dpoc, 2),
    probabilidade(ResSinusite, Sinusite, 5),
    probabilidade(ResTuberculose, Tuberculose, 6),
    probabilidade(ResGripe, Gripe, 4),
    probabilidade(ResFaringite, Faringite, 2),
    probabilidade(ResPneumonia, Pneumonia, 3),
    probabilidade(ResBronquite, Bronquite, 6),
    probabilidade(ResAviaria, Aviaria, 5),
    probabilidade(ResSuina, Suina, 6),
    mostraDoencasPossiveis(ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina),
    write_ln("Gostaria de visualizar o diagnóstico completo? Digite 1 para Sim ou 0 para Não."),
    read(user_input, X),
    completo(X, ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina),
    write_ln("=========================="),
    write_ln("O resultado do protótipo é apenas informativo e o paciente deve consultar um médico para
obter um diagnóstico correto e preciso."),
    write_ln("Encerrando diagnóstico vamos te levar de volta para o menu principal."),
    write_ln("Aperte 1. para continuar, ou 0. para sair"),
    read(Y),
    ifMenu(Y),
    nl,
    !.


completo(X, ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina) :-
     X == 1,
     mostraTodasDoencas(ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina).

completo(X, _, _, _, _, _, _, _, _, _, _, _) :-
     X == 0.

ifMenu(Y):-
     Y == 0,
     abort().

ifMenu(Y):-
     Y == 1,
     menu().
