import { useState } from 'react';

const GerenciadorTarefas = () => {
    const [tarefas, setTarefas] = useState([]);

    const adicionarTarefa = (tarefa) => {
        setTarefas([...tarefas, tarefa]);
    };

    const removerTarefa = (tarefa) => {
        const tarefasAtualizadas = tarefas.filter((t) => t !== tarefa);
        setTarefas(tarefasAtualizadas);
    };

    return { tarefas, adicionarTarefa, removerTarefa };
};

export default GerenciadorTarefas;
