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
    writeln("Como ja mencionado, esse teste nao e um diagnostico, mas sim apenas uma verificaçao de sintomas."),
    writeln("Para cada pergunta responda de acordo com as instruções dadas."),
    nl,
    questionario(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    !.


