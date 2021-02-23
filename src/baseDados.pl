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
% SDRA (falta de ar, respiração rapida e superficial, chiado no pulmão,
% pele azul, frequência cardíaca alta).
%

rinite_cronica(['espirro', 'tosse seca', 'coriza', 'nariz entupido', 'dor de cabeca',  'coceira']).
asma(['falta de ar', 'dificuldade respirar', 'tosse sem catarro', 'chiado peito', 'fadiga']).
dpoc(['tosse +3 meses', 'catarro', 'falta ar']).
sinusite_cronica(['dores rosto', 'olhos sensiveis', 'nariz entupido', 'tosse', 'mau halito', 'dor de garganta']).
tuberculose(['tosse +3 semanas', 'tosse com sangue', 'dor respirar', 'febre', 'suor noturno', 'perda peso', 'falta ar']).
gripe(['tosse', 'dor de cabeca', 'febre', 'coriza']).
faringite(['dor engolir', 'garganta arranhada', 'febre']).
pneumonia(['febre alta', 'dor respirar', 'tosse com catarro', 'calafrios', 'falta ar']).
bronquite_aguda(['coriza', 'tosse', 'fadiga', 'chiado peito', 'dor costas', 'febre']).
sdra(['falta ar', 'respiracao rapida', 'chiado peito', 'pele azul', 'batimentos rapidos']).



