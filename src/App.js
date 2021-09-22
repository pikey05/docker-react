import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          I was changed in feature branch!
        </p>
      </header>
      <p className="App-intro">
        Bye there!
      </p>
    </div>
  );
}

export default App;
