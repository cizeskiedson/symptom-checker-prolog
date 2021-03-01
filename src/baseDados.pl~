:-include('testes.pl').
:-use_module(library(plunit)).

% Doenças a serem checadas pelo sistema
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
% gripe_aviaria(tosse, febre, garganta inflamada, dor muscular, dor
% cabeça, falta de ar).
% gripe_suina(febre, dor de cabeça, dores musculares, dor nas
% articulaçoes, tosse, irritaçao nos olhos, fluxo.
%


doenca(Rinite).
doenca(Asma).
doenca(Dpoc).
doenca(Sinusite).
doenca(Tuberculose).
doenca(Gripe).
doenca(Faringite).
doenca(Pneumonia).
doenca(Bronquite).
doenca(Aviaria).
doenca(Suina).

probabilidade(Resultado, SintomasEncontrados, SintomasTotal):-
    Resultado is SintomasEncontrados/SintomasTotal,
    write('Resultado: '), write_ln(Resultado).

mostraDoencasPossiveis(ResRinite, ResAsma, ResDpoc, ResSinusite, ResTuberculose, ResGripe, ResFaringite, ResPneumonia, ResBronquite, ResAviaria, ResSuina) :-
    write('teste').


MostraTodasDoencas :-
    write('teste').



questionario(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Faringite, Pneumonia, Bronquite, Aviaria, Suina) :-
    write_ln('Agora vamos iniciar um questionário de quinze perguntas, que irão nos auxiliar a entender o que está sentindo.'),
    write_ln('Por favor, tente prestar bem atenção na pergunta, e responder apenas com o que tiver certeza que está correto.'),
    teste0(0,0,0,0,0,0,0,0,0,0, Rinite0, Asma0, Dpoc0, Sinusite0, Tuberculose0, Gripe0, Pneumonia0, Bronquite0, Aviaria0, Suina0),
    teste1(Bronquite0, Aviaria0, Suina0, Bronquite1, Aviaria1, Suina1),
    teste2(Rinite0, Sinusite0, Gripe0, 0, Aviaria1, Suina1, Rinite1, Sinusite1, Gripe1, Faringite0, Aviaria2, Suina2),
    write_ln('A partir desse ponto, o questionário terá apenas perguntas de sim ou não. Caso a descrição fornecida seja claramente correspondente ao que está sentindo, digite 1. Em caso contrário, ou seja, a descrição não remete ao que está passando, digite 0.'),
    teste3(Rinite1, Rinite2),
    teste4(Rinite2, Gripe1, Bronquite1, Suina2, Rinite3, Gripe2, Bronquite2, Suina3),
    teste5(Rinite3, Sinusite1, Rinite4, Sinusite2),
    teste6(Asma0, Dpoc0, Tuberculose0, Pneumonia0, Aviaria2, Asma1, Dpoc1, Tuberculose1, Pneumonia1, Aviaria3),
    teste7(Asma1, Bronquite2, Asma2, Bronquite3),
    teste8(Asma2, Bronquite3, Asma3, Bronquite4),
    teste9(Tuberculose1, Gripe2, Faringite0, Bronquite4, Aviaria3, Suina3,  Tuberculose2, Gripe3, Faringite1, Bronquite5, Aviaria4, Suina4),
    teste10(Sinusite2, Suina4, Sinusite3, Suina5),
    teste11(Tuberculose2, Pneumonia1, Tuberculose3, Pneumonia2),
    teste12(Tuberculose3, Tuberculose4),
    teste13(Tuberculose4, Tuberculose5),
    teste14(Rinite4, Rinite5),
    teste15(Sinusite3, Sinusite4),
    write_ln('terminei o questionario'),
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
    Suina is Suina5,
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
    probabilidade(ResSuina, Suina, 6).



