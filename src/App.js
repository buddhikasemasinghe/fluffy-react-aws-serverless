import React from 'react';
import logo from './logo.png';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
         My React Application
        </p>
        <a
          className="App-link"
          href="https://github.com/buddhikasemasinghe"
          target="_blank"
          rel="noopener noreferrer"
        >
          By Buddhika Semasinghe
        </a>
      </header>
    </div>
  );
}

export default App;
