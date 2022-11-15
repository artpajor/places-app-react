import './App.css';
import '@testing-library/jest-dom'

function App() {
  const version = window['appConfig']?.version || 'demo';

  return (
    <div className="App">
      Places app

      <h3>Version: {version}</h3>
    </div>
  );
}

export default App;
