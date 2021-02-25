% TRABALHO 1 PRÁTICO DE PPLF
% implementar um Sistema de Checagem de Sintomas usando Prolog

:- include('baseDados.pl').

:- writeln("----------------------------------------------------------------------").
:- writeln("Bem vindo ao nosso sistema de detecçao de doenças respiratorias.").
:- writeln("Iremos ajuda-lo atraves de um questionario a identificar possiveis doenças com base no que esta sentindo.").
:- writeln("Vale sempre lembrar da importancia de consultar um medico especialista, caso necessario.").
:- writeln("Para iniciar o teste, e começar a responder o questionario digite o comando a seguir:").
:- writeln("iniciar.").
:- writeln("Nao se esqueça do ponto final ao digitar o comando.").
:- writeln("----------------------------------------------------------------------").

%% Inicia-se o procedimento do sistema, avaliando as respostas dadas
% pelo usuario

iniciar :-
    nl,
    writeln("Como ja mencionado, esse teste nao e um diagnostico, mas sim apenas uma verificaçao de sintomas."),
    writeln("Para cada pergunta responda de acordo com as instruções dadas."),
    nl,
    questionario(D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11),
    !.


