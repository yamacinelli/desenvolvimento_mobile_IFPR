import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import BuscaFotos from './src/components/BuscaFotos';

const App = () => {
  return (
    <NavigationContainer> 
      <BuscaFotos /> 
    </NavigationContainer>
  );
};

export default App;
