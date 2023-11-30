import { configureStore } from '@reduxjs/toolkit';
import redutorEvento from '../reducers/Reducers';

const loja = configureStore({
    reducer: {
        eventos: redutorEvento,
    },
});

export default loja;