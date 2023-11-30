import React from 'react';
import { View, Button } from 'react-native';
import TarefaLista from './src/components/CamadaApresentacao/TarefaLista';
import GerenciadorTarefas from './src/layers/CamadaNegocios/GerenciadorTarefas';

const App = () => {
  const gerenciadorTarefas = GerenciadorTarefas();

  const aoAdicionarTarefa = () => {
    const nomeTarefa = `Tarefa ${gerenciadorTarefas.tarefas.length + 1}`;
    gerenciadorTarefas.adicionarTarefa(nomeTarefa);
  };

  return (
    <View>
      <TarefaLista tarefas={gerenciadorTarefas.tarefas} aoPressionarTarefa={gerenciadorTarefas.removerTarefa} />
      <Button title="Adicionar Tarefa" onPress={aoAdicionarTarefa} />
    </View>
  );
};

export default App;
