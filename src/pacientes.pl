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
    write('Paciente não encontrado no banco de dados, por favor tente novamente.').

buscaProx(Nome, [Paciente|ListaResto]) :-
    split_string(Paciente, " ", "", [NomePaciente, IdadePaciente, StatusPaciente]),
    Nome == NomePaciente -> write_ln('Paciente encontrado com sucesso'),
    X is [NomePaciente, IdadePaciente, StatusPaciente],
    write('Nome do Paciente: '), write(NomePaciente), nl,
    write('Idade do Paciente: '), write(IdadePaciente), nl,
    write('Status do Paciente: '), write(StatusPaciente), nl, !, true;
    buscaProx(Nome, ListaResto, X).


buscaRemover(_, []).

buscaRemover(Nome, [Paciente|ListaResto]) :-
    split_string(Paciente, " ", "", [NomePaciente, _]),
    Nome == NomePaciente,
    buscaRemover(Nome, ListaResto).

buscaRemover(Nome, [Paciente|ListaResto]) :-
    split_string(Paciente, " ", "", [NomePaciente, IdadePaciente]),
    Nome \== NomePaciente,
    adicionar(NomePaciente, IdadePaciente),
    buscaRemover(Nome, ListaResto).

remover :-
    buscaTodos(Arquivo),
    split_string(Arquivo, "\n", "", ListaArq),
    open('pacientes.txt', write, PtrArq),
    close(PtrArq),
    write_ln("====================================="),
    write_ln('Digite o nome do paciente que quer remover'),
    read_string(user_input, "\n", "\t ", _, NomeBusca),
    buscaRemover(NomeBusca, ListaArq),
    menuPacientes().

atualizar:-
    write('test'),
    menuPacientes().


menuPacientes :-
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

