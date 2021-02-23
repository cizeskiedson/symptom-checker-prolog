% TRABALHO 1 PRÁTICO DE PPLF
% implementar um Sistema de Checagem de Sintomas usando Prolog
% escolhi 10 doenças respiratórias:
% rinite crônica (espirros, tosse seca, coriza, nariz entupido, dor de
% cabeça, se for alérgica: coceira no nariz, olhos e garganta);
% asma (falta de ar, dificuldade para respirar, tosse sem catarro,
% chiado no peito e fadiga);
% DPOC (tosse persistente +3 meses, catarro e falta de ar);
% Sinusite cronica (dores na regiao do rosto, sensibilidade nos olhos,
% nariz entupido, tosse, mau halito, e dor de garganta);
% tuberculose (tosse +3 semanas, tosse com sangue, dor para respirar,
% febre, suor noturno, perda de peso, falta de ar);
% Gripe (tosse, dor de cabeça, febre, coriza);
% Faringite (dor para engolir, garganta arranhada, febre);
% Pneumonia (febre alta, dor para respirar, tosse com catarro, calafrios
% e falta de ar);
% Bronquite aguda (coriza, tosse, cansaço, chiado no peito, dores nas
% costas, febre);
% SDRA (falta de ar, respiração rapida e superficial, chiado no pulmão,
% pele azul, frequência cardíaca alta).

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
    writeln("Para cada pergunta responda de acordo."),
    nl,
    !.


