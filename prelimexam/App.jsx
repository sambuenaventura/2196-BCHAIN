import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
// import Hello from './components/Hello'
// import Welcome from './components/Welcome'
// import TodoList from './components/TodoList'
// import MovieList from './components/MovieList'
// import BookList from './components/BookList'
import ConditionalDemo1 from "./components/Conditional-Demo-1.jsx"
import ConditionalDemo2 from "./components/Conditional-Demo-2.jsx"
import ConditionalDemo3 from "./components/Conditional-Demo-3.jsx"
import ConditionalDemo4 from "./components/Conditional-Demo-4.jsx"
import PrelimExam from "./components/PrelimExam.jsx"

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <PrelimExam/>
    </>
  )
  
}



export default App

