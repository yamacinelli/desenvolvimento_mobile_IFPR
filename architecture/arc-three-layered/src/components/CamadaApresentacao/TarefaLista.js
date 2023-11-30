import React from 'react';
import { View, Text, FlatList, TouchableOpacity } from 'react-native';

const TarefaLista = ({ tarefas, aoPressionarTarefa }) => {
    return (
        <View>
            <Text>Lista de Tarefas</Text>
            <FlatList
                data={tarefas}
                keyExtractor={(item, index) => index.toString()}
                renderItem={({ item }) => (
                    <TouchableOpacity onPress={() => aoPressionarTarefa(item)}>
                        <Text>{item}</Text>
                    </TouchableOpacity>
                )}
            />
        </View>
    );
};

export default TarefaLista;
