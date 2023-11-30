import React from "react";
import { Provider } from "react-redux";
import loja from "./src/store/Store";
import EventoComponent from "./src/components/EventoComponent";

const App = () => {
  return (
    <Provider store={loja}>
      <EventoComponent />
    </Provider>
  );
};

export default App;