import Endereco from '../entidades/Endereco';
import CEPRepositorio from '../../infra/repositorio/CEPRepositorio';

const CasoUsoEndereco = {
    async getAddressByCEP(cep) {
        const enderecoData = await CEPRepositorio.fetchAddressByCEP(cep);
        return new Endereco(enderecoData.cep, enderecoData.rua, enderecoData.cidade, enderecoData.estado);
    },
};

export default CasoUsoEndereco;
