export const ADICIONAR_EVENTO = 'ADICIONAR_EVENTO';

export const adicionarEvento = (evento) => ({
    type: ADICIONAR_EVENTO,
    payload: evento,
});