import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, Button, FlatList } from 'react-native';
import { connect } from 'react-redux';
import { adicionarEvento } from '../actions/Action';

const EventoComponent = ({ eventos, adicionarEvento }) => {

    const [novoEvento, setNovoEvento] = useState('');

    useEffect(() => {
        console.log('Estados eventos:', eventos);
    }, [eventos]);

    const lidarComAdicaoDeEvento = () => {
        adicionarEvento(novoEvento);
        setNovoEvento('');
    };

    return (
        <View>
            <Text>Lista de eventos:</Text>
            <FlatList
                data={eventos}
                keyExtractor={(item, index) => index.toString()}
                renderItem={({ item }) => <Text>{item}</Text>}
            />
            <Text>Novo Evento:</Text>
            <TextInput value={novoEvento} onChangeText={(texto) => setNovoEvento(texto)} />
            <Button title='Adicionar evento' onPress={lidarComAdicaoDeEvento} />
        </View>
    );
};

const mapearEstadoParaPropos = (estado) => ({
    eventos: estado.eventos,
})

const mapearDispatchParaProps = {
    adicionarEvento,
}

export default connect(
    mapearEstadoParaPropos,
    mapearDispatchParaProps
)(EventoComponent);