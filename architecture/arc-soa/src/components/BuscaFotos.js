import React, { useState } from 'react';
import { View, TextInput, Button, FlatList, Image, Text } from 'react-native';
import buscarFotos from '../services/BuscarFotos';

const BuscaFotos = () => {
    const [query, setQuery] = useState('');
    const [results, setResults] = useState([]);

    const realizarBusca = async () => {
        try {
            const fotos = await buscarFotos(query);
            setResults(fotos);
        } catch (error) {
            // Lide com erros de busca aqui
        }
    };

    return (
        <View>
            <TextInput
                placeholder="Digite sua pesquisa"
                value={query}
                onChangeText={setQuery}
            />
            <Button title="Buscar Fotos" onPress={realizarBusca} />
            <FlatList
                data={results}
                keyExtractor={(item) => item.id}
                renderItem={({ item }) => (
                    <View>
                        <Image source={{ uri: item.urls.regular }} style={{ width: 200, height: 200 }} />
                        <Text>{item.description}</Text>
                    </View>
                )}
            />
        </View>
    );
};

export default BuscaFotos;
