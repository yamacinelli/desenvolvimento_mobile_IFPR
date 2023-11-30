import React, { useState } from 'react';
import { View, Text, TextInput, Button } from 'react-native';
import CasoUsoEndereco from '../../dominio/CasosUso/CasoUsoEndereco';

function PesquisaScreen() {
    const [cep, setCep] = useState('');
    const [endereco, setEndereco] = useState(null);

    const handleSearch = async () => {
        try {
            const enderedoData = await CasoUsoEndereco.getAddressByCEP(cep);
            setEndereco(enderedoData);
        } catch (error) {
            console.error(error);
            setEndereco(null);
        }
    }

    return (
        <View>
            <Text>Buscar Endereço por CEP</Text>
            <TextInput
                placeholder="Digite o CEP"
                value={cep}
                onChangeText={setCep}
            />
            <Button title="Buscar" onPress={handleSearch} />
            {endereco && (
                <View>
                    <Text>CEP: {endereco.cep}</Text>
                    <Text>Rua: {endereco.rua}</Text>
                    <Text>Cidade: {endereco.cidade}</Text>
                    <Text>Estado: {endereco.estado}</Text>
                </View>
            )}
        </View>
    );
}

export default PesquisaScreen;
