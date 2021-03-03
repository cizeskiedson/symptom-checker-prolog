%% Arquivo com os testes unitarios
%
% Teste unitario feito com a funcao probabilidade() que encontra a
% porcentagem da possibilidade de uma doenca com base no nro de
% sintomams relatados dividido pelo nro de sintomas totais relacionadas
% aquela doenca.
%
:- use_module(library(plunit)).
:- include('baseDados.pl').

:- begin_tests(probabilidade).

test(probabilidade1) :- probabilidade(X, 5, 10).
test(probabilidade2) :- probabilidade(Y, 3, 4).

:- end_tests(probabilidade).
