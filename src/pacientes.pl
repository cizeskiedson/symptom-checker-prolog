:-use_module(library(plunit)).


cadastrar():-
    write_ln("======================="),
    write_ln("Bem vindo a tela de cadastro."),
    write_ln("Informe os campos requisitados para prosseguir."), nl,
    write_ln("Nome do paciente: "),
    get_char(_),
    read_string(user_input, "\n", "\t ", _, Nome),
    write_ln("Idade do paciente: "),
    read_string(user_input, "\n", "\t", _, Idade),
    adicionar(Nome, Idade),
    menuPacientes().



adicionar(Nome, Idade) :-
    open('pacientes.txt', append, PtrArq),
    current_output(Teclado),
    set_output(PtrArq),
    write(Nome),
    write(' '),
    write(Idade),
    write('\n'),
    close(PtrArq),
    set_output(Teclado).


buscaTodos :-
    get_char(_),
    open('pacientes.txt', read, PtrArq),
    current_input(Teclado),
    set_input(PtrArq),
    read_string(PtrArq, 20000, String),
    close(PtrArq),
    set_input(Teclado),
    write(String),
    nl,
    menuPacientes().

buscaTodos(X) :-
    get_char(_),
    open('pacientes.txt', read, PtrArq),
    current_input(Teclado),
    set_input(PtrArq),
    read_string(PtrArq, 20000, String),
    close(PtrArq),
    set_input(Teclado),
    X = String.

buscar :-
    write_ln('Digite o nome do paciente que quer encontrar'),
    get_char(_),
    read_string(user_input, "\n", "\t ", _, NomeBusca),
    write('Buscando paciente... '), write_ln(NomeBusca),
    open('pacientes.txt', read, PtrArq),
    current_input(Teclado),
    set_input(PtrArq),
    read_string(PtrArq, 20000, String),
    split_string(String, "\n", "", RestoArq),
    close(PtrArq),
    buscaProx(NomeBusca, RestoArq),
    set_input(Teclado),
    menuPacientes().

buscaProx(_, []) :-
    write_ln('Paciente não encontrado no banco de dados, por favor tente novamente.'), nl.

buscaProx(Nome, [Paciente|ListaResto]) :-
    split_string(Paciente, " ", "", [NomePaciente, IdadePaciente]),
    Nome == NomePaciente -> write_ln('Paciente encontrado com sucesso'),
    write('Nome do Paciente: '), write(NomePaciente), nl,
    write('Idade do Paciente: '), write_ln(IdadePaciente), nl, !, true;
    buscaProx(Nome, ListaResto).


buscaRemover(_, []) :- write_ln('Paciente removido com sucesso.').

buscaRemover(Nome, [Paciente|ListaResto]) :-
    split_string(Paciente, " ", "", [NomePaciente, _]),
    Nome == NomePaciente,
    buscaRemover(Nome, ListaResto).

buscaRemover(Nome, [Paciente|ListaResto]) :-
    split_string(Paciente, " ", "", [NomePaciente, IdadePaciente]),
    Nome \== NomePaciente,
    adicionar(NomePaciente, IdadePaciente),
    write_ln(NomePaciente),
    buscaRemover(Nome, ListaResto).

remover :-
    open('pacientes.txt', read, PtrArq),
    read_file(PtrArq, ListaArq),
    close(PtrArq),
    open('pacientes.txt', write, PtrArq2),
    close(PtrArq2),
    write_ln("====================================="),
    write_ln('Digite o nome do paciente que quer remover'),
    get_char(_),
    read_string(user_input, "\n", "\t ", _, NomeBusca),
    write_ln(ListaArq),
    buscaRemover(NomeBusca, ListaArq),
    menuPacientes().

atualizar:-
    open('pacientes.txt', read, PtrArq),
    read_file(PtrArq, ListaArq),
    close(PtrArq),
    write_ln(ListaArq),
    open('pacientes.txt', write, PtrArq2),
    close(PtrArq2),
    write_ln("==============================="),
    write_ln("Digite o nome do paciente que deseja atualizar dados."),
    get_char(_),
    read_string(user_input, "\n", "\t ", _, NomeBusca),
    buscaAtualizar(NomeBusca, ListaArq),
    menuPacientes().

buscaAtualizar(_, []):-
    write_ln("Dados atualizados com sucesso!").

buscaAtualizar(Nome, [Paciente|ListaResto]):-
    split_string(Paciente, " ", "", [NomePaciente, IdadePaciente]),
    Nome \== NomePaciente,
    adicionar(NomePaciente, IdadePaciente),
    buscaAtualizar(Nome, ListaResto).

buscaAtualizar(Nome, [Paciente|ListaResto]):-
    split_string(Paciente, " ", "", [NomePaciente, _]),
    Nome == NomePaciente,
    write_ln("Informe os novos campos."),
    write_ln("Nome: "),
    read_string(user_input, "\n", "\t ", _, NomeNovo),
    write_ln("Idade: "),
    read_string(user_input, "\n", "\t ", _, IdadeNovo),
    adicionar(NomeNovo, IdadeNovo),
    buscaAtualizar(Nome, ListaResto).

menuPacientes :-
    nl,
    nl,
    write_ln("=============================================="),
    write_ln("Bem vindo ao menu de controle de pacientes."),
    write_ln("Digite a opção correspondente ao que precisa."),
    write_ln("---------------------------------------------"),
    write_ln("1 - Cadastrar novo paciente."),
    write_ln("2 - Buscar um paciente."),
    write_ln("3 - Atualizar dados de um paciente."),
    write_ln("4 - Remover paciente."),
    write_ln("5 - Exibir lista de todos os pacientes."),
    write_ln("6 - Sair."),
    write_ln("---------------------------------------------"),
    read(user_input, X),
    navPacientes(X).

navPacientes(Opcao):-
    (   Opcao == 1 -> cadastrar());
    (   Opcao == 2 -> buscar());
    (   Opcao == 3 -> atualizar());
    (   Opcao == 4 -> remover());
    (   Opcao == 5 -> buscaTodos());
    (   Opcao == 6 -> abort()).

%Le arquivo e retorna lista com as linhas.

read_file(Stream, []) :-
    at_end_of_stream(Stream).

read_file(Stream, [Line | L]) :-
    \+ at_end_of_stream(Stream),
    read_string(Stream, "\n", "\r\t ", _, Line),
    read_file(Stream, L).
