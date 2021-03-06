:-include('perguntas.pl').
:-use_module(library(plunit)).

% Doenças a serem checadas pelo sistema
% escolhi 11 doenças respiratórias:
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
% gripe_aviaria(tosse, febre, garganta inflamada, dor muscular, dor
% cabeça, falta de ar).
% gripe_suina(febre, dor de cabeça, dores musculares, dor nas
% articulaçoes, tosse, irritaçao nos olhos, fluxo.
%


probabilidade(Resultado, SintomasEncontrados, SintomasTotal):-
    X is SintomasEncontrados/SintomasTotal,
    Resultado is X * 100.

pp([]):-
    write_ln("===========================").


pp([(X, Y)|RestoLista]):-
    write('Doença testada: '), write(X), nl,
    write('Probabilidade de ser: '),format('~2f~n', Y), nl,
    nl,
    pp(RestoLista).

appendDoenca(Doenca, Probabilidade, ListaEntrada, ListaSaida):-
  Probabilidade >= 30.0, %Se for menor que 30% nao eh tao importante pra ser colocado nas doencas possiveis
  append(ListaEntrada, [(Doenca, Probabilidade)], ListaSaida);
  ListaSaida = ListaEntrada.


criaListaDoenca(Saida, ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina):-
  appendDoenca('Rinite', ResRinite, [], Saida0),
  appendDoenca('Asma', ResAsma, Saida0, Saida1),
  appendDoenca('Dpoc', ResDpoc, Saida1, Saida2),
  appendDoenca('Sinusite', ResSinusite, Saida2, Saida3),
  appendDoenca('Tuberculose', ResTuberculose, Saida3, Saida4),
  appendDoenca('Gripe', ResGripe, Saida4, Saida5),
  appendDoenca('Faringite', ResFaringite, Saida5, Saida6),
  appendDoenca('Pneumonia', ResPneumonia, Saida6, Saida7),
  appendDoenca('Bronquite', ResBronquite, Saida7, Saida8),
  appendDoenca('Aviaria', ResAviaria, Saida8, Saida9),
  appendDoenca('Suina', ResSuina, Saida9, Saida10),
  Saida = Saida10.



mostraDoencasPossiveis(ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina) :-
  criaListaDoenca(Saida, ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina),
  sort(2, @>=, Saida, Ordenada),
  nl,
  write_ln("============================"),
  write_ln("Diagnóstico do paciente: "), nl,
  pp(Ordenada).


mostraTodasDoencas(ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina) :-
    write_ln("============================="),
    write("Doença testada: Rinite Crônica,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResRinite]), write(" de chance."),
    nl,
    write("Doença testada: Asma,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResAsma]), write(" de chance."),
    nl,
    write("Doença testada: Dpoc,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResDpoc]), write(" de chance."),
    nl,
    write("Doença testada: Sinusite,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResSinusite]), write(" de chance."),
    nl,
    write("Doença testada: Tuberculose,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResTuberculose]), write(" de chance."),
    nl,
    write("Doença testada: Gripe Comum,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResGripe]), write(" de chance."),
    nl,
    write("Doença testada: Faringite,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResFaringite]), write(" de chance."),
    nl,
    write("Doença testada: Pneumonia,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResPneumonia]), write(" de chance."),
    nl,
    write("Doença testada: Bronquite Crônica,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResBronquite]), write(" de chance."),
    nl,
    write("Doença testada: Gripe Aviária,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResAviaria]), write(" de chance."),
    nl,
    write("Doença testada: Gripe Suína,  "),
    write("Probabilidade de ser: "), format('~2f~n', [ResSuina]), write(" de chance."),
    nl.



questionario(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Faringite, Pneumonia, Bronquite, Aviaria, Suina) :-
    write_ln('Agora vamos iniciar um questionário de quinze perguntas, que irão nos auxiliar a entender o que está sentindo.'),
    write_ln('Por favor, tente prestar bem atenção na pergunta, e responder apenas com o que tiver certeza que está correto.'),
    teste0(0,0,0,0,0,0,0,0,0,0, Rinite0, Asma0, Dpoc0, Sinusite0, Tuberculose0, Gripe0, Pneumonia0, Bronquite0, Aviaria0, Suina0), nl,
    teste1(Bronquite0, Aviaria0, Suina0, Bronquite1, Aviaria1, Suina1),nl,
    teste2(Rinite0, Sinusite0, Gripe0, 0, Aviaria1, Suina1, Rinite1, Sinusite1, Gripe1, Faringite0, Aviaria2, Suina2),nl,
    write_ln('A partir desse ponto, o questionário terá apenas perguntas de sim ou não. Caso a descrição fornecida seja claramente correspondente ao que está sentindo, digite 1. Em caso contrário, ou seja, a descrição não remete ao que está passando, digite 0.'),nl,
    teste3(Rinite1, Rinite2), nl,
    teste4(Rinite2, Gripe1, Bronquite1, Suina2, Rinite3, Gripe2, Bronquite2, Suina3), nl,
    teste5(Rinite3, Sinusite1, Rinite4, Sinusite2), nl,
    teste6(Asma0, Dpoc0, Tuberculose0, Pneumonia0, Aviaria2, Asma1, Dpoc1, Tuberculose1, Pneumonia1, Aviaria3), nl,
    teste7(Asma1, Bronquite2, Asma2, Bronquite3), nl,
    teste8(Asma2, Bronquite3, Asma3, Bronquite4), nl,
    teste9(Tuberculose1, Gripe2, Faringite0, Bronquite4, Aviaria3, Suina3,  Tuberculose2, Gripe3, Faringite1, Bronquite5, Aviaria4, Suina4), nl,
    teste10(Sinusite2, Suina4, Sinusite3, Suina5), nl,
    teste11(Tuberculose2, Pneumonia1, Tuberculose3, Pneumonia2), nl,
    teste12(Tuberculose3, Tuberculose4), nl,
    teste13(Tuberculose4, Tuberculose5), nl,
    teste14(Rinite4, Rinite5), nl,
    teste15(Sinusite3, Sinusite4), nl,
    Rinite is Rinite5,
    Asma is Asma3,
    Dpoc is Dpoc1,
    Sinusite is Sinusite4,
    Tuberculose is Tuberculose5,
    Gripe is Gripe3,
    Faringite is Faringite1,
    Pneumonia is Pneumonia2,
    Bronquite is Bronquite5,
    Aviaria is Aviaria4,
    Suina is Suina5.



