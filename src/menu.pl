:-include('pacientes.pl').
:-include('diagnostico.pl').

:-use_module(library(plunit)).

% Arquivo menu do sistema
%

menu :-
    nl,
    nl,
    write_ln("======================================================================"),
    write_ln("Sistema de deteção de doenças e controle de pacientes."),
    write_ln("Seja bem-vindo, digite a opção correspondente ao que precisa."),
    write_ln("----------------------------------------------------------"),
    write_ln("1 - Controle de pacientes"),
    write_ln("2 - Realizar questionário de detecção de doenças"),
    write_ln("3 - Sair"),
    write_ln("----------------------------------------------------------"),
    read(user_input, X),
    navigation(X).

navigation(Opcao) :-
    (   Opcao == 1 ->
       menuPacientes());
    (   Opcao == 2 -> menuDoencas());
    (   Opcao == 3 -> abort()).
