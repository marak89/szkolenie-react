import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import heroImg from './assets/hero.png'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <section id="center">
        
        <div>
          <h1>Aplikacja</h1>
          <p>
            Nowa wersja super aplikacji
          </p>
          <p>Za tydzień dalszy ciąg programu...</p>
        </div>
      </section>
    </>
  )
}

export default App
