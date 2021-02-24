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







