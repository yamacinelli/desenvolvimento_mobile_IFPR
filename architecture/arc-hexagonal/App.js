import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import PesquisaScreen from './src/aplicacao/screens/PesquisaScreen';

const Stack = createStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="Pesquisa" component={PesquisaScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
