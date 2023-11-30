const tarefasIniciais = ["Tarefa 1", "Tarefa 2", "Tarefa 3"]; // Dados iniciais

export const obterTarefas = () => {
    return tarefasIniciais;
};

export const salvarTarefa = (tarefa) => {
    tarefasIniciais.push(tarefa);
};

export const excluirTarefa = (tarefa) => {
    const index = tarefasIniciais.indexOf(tarefa);
    if (index !== -1) {
        tarefasIniciais.splice(index, 1);
    }
};
