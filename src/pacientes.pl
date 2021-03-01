:-use_module(library(plunit)).


cadastrar(Nome, Idade, Status) :-
    open('pacientes.txt', append, PtrArq),
    current_output(Teclado),
    set_output(PtrArq),
    write(Nome),
    write(' '),
    write(Idade),
    write(' '),
    write(Status),
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
    nl.

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
    buscaProx(NomeBusca, RestoArq, X),
    set_input(Teclado).

buscaProx(_, [], X) :-
    X is 'false',
    write('Paciente não encontrado no banco de dados, por favor tente novamente.').

buscaProx(Nome, [Paciente|ListaResto], X) :-
    split_string(Paciente, " ", "", [NomePaciente, IdadePaciente, StatusPaciente]),
    Nome == NomePaciente -> write_ln('Paciente encontrado com sucesso'),
    X is [NomePaciente, IdadePaciente, StatusPaciente],
    write('Nome do Paciente: '), write(NomePaciente), nl,
    write('Idade do Paciente: '), write(IdadePaciente), nl,
    write('Status do Paciente: '), write(StatusPaciente), nl, !, true;
    buscaProx(Nome, ListaResto, X).

remover :-
    write_ln("====================================="),
    write_ln("Vamos começar encontrando o usuário que deseja remover."),
    write_ln('Digite o nome do paciente que quer remover'),
    read_string(user_input, "\n", "\t ", _, NomeBusca),
    write('Buscando paciente... '), write_ln(NomeBusca),
    open('pacientes.txt', read, PtrArq),
    current_input(Teclado),
    set_input(PtrArq),
    read_string(PtrArq, 20000, String),
    split_string(String, "\n", "", RestoArq),
    close(PtrArq),
    buscaProx(NomeBusca, RestoArq, X),
    set_input(Teclado),
    write_ln(X)
    .



registrar :-
    cadastrar('Jorge', 10, 'true'),
    cadastrar('Vanessa', 30, 'true'),
    cadastrar('Edson', 54, 'true'),
    buscaTodos(),
    buscar().

menuPacientes :-
    write_ln("Bem vindo ao menu de controle de pacientes."),
    write_ln("Digite a opção correspondente ao que precisa."),
    write_ln("---------------------------------------------"),
    write_ln("1 - Cadastrar novo paciente."),
    write_ln("2 - Buscar paciente."),
    write_ln("3 - Atualizar dados de um paciente."),
    write_ln("4 - Remover paciente."),
    write_ln("5 - Sair."),
    write_ln("---------------------------------------------").

