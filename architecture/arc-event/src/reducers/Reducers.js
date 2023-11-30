import { ADICIONAR_EVENTO } from "../actions/Action";

const estadoInicial = {
    eventos: [],
};

const redutorEvento = (state = estadoInicial, action) => {
    switch(action.type){
        case ADICIONAR_EVENTO:
            return {
                ...state,
                eventos: [...state.eventos, action.payload],
            };
        default:
            return state;
    }
};

export default redutorEvento;