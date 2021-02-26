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

espirro([RiniteCronica]).

tosse([RiniteCronica, Asma, Dpoc, SinusiteCronica, Tuberculose, Gripe, Pneumonia, BronquiteAguda, GripeAviaria, GripeSuina]).

coriza([RiniteCronica, Gripe, BronquiteAguda, GripeSuina]).

nariz_congestionado([RiniteCronica, SinusiteCronica]).

dor_cabeca([RiniteCronica, Gripe, GripeAviaria, GripeSuina]).

coceira([RiniteCronica]).

falta_ar([Asma, Dpoc, Tuberculose, Pneumonia, GripeAviaria]).

chiado_peito([Asma, BronquiteAguda]).

fadiga([Asma, BronquiteAguda]).

catarro([Dpoc, Pneumonia]).

dor_rosto([SinusiteCronica]).

olhos_sensiveis([SinusiteCronica, GripeSuina]).

mau_halito([SinusiteCronica]).

dor_garganta([SinusiteCronica, Faringite, GripeAviaria]).

dor_respirar([Tuberculose, Pneumonia]).

dor_costas([BronquiteAguda]).

dor_muscular([GripeAviaria, GripeSuina]).

dor_articulacao([GripeSuina]).

febre([Tuberculose, Gripe, Faringite, Pneumonia, BronquiteAguda, GripeAviaria, GripeSuina]).

suor_noturno([Tuberculose]).

perda_peso([Tuberculose]).



questionario(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Faringite, Pneumonia, Bronquite, Aviaria, Suina) :-
    write_ln('Agora vamos iniciar um questionário de quinze perguntas, que irão nos auxiliar a entender o que está sentindo.'),
    write_ln('Por favor, tente prestar bem atenção na pergunta, e responder apenas com o que tiver certeza que está correto.'),
    teste0(Rinite, Asma, Dpoc, Sinusite, Tuberculose, Gripe, Pneumonia, Bronquite, Aviaria, Suina),
    teste1(Bronquite, Aviaria, Suina),
    teste2(Rinite, Sinusite, Gripe, Faringite, Aviaria, Suina),
    write_ln('A partir desse ponto, o questionário terá apenas perguntas de sim ou não. Caso a descrição fornecida seja claramente correspondente ao que está sentindo, digite 1. Em caso contrário, ou seja, a descrição não remete ao que está passando, digite 0.'),
    teste3(Rinite),
    teste4(Rinite, Gripe, Bronquite, Suina),
    teste5(Rinite, Sinusite),
    teste6(Asma, Dpoc, Tuberculose, Pneumonia, Aviaria),
    teste7(Asma, Bronquite),
    teste8(Asma, Bronquite),
    teste9(Tuberculose, Gripe, Faringite, Bronquite, Aviaria, Suina),
    teste10(Sinusite, Suina),
    teste11(Tuberculose, Pneumonia),
    teste12(Tuberculose),
    teste13(Tuberculose),
    teste14(Rinite),
    teste15(Sinusite).



