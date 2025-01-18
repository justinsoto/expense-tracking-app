import { Route, Routes, BrowserRouter } from 'react-router-dom'
import {Index, Credit, Investments, Login} from './pages'
import './App.css'

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route index element={<Index />} />
        <Route path="/credit" element={<Credit />} />
        <Route path="/investments" element={<Investments />} />
        <Route path="/login" element={<Login />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App
