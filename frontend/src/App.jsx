import { Route, Routes, BrowserRouter } from 'react-router-dom'
import Index from './pages/index.jsx';
import Credit from './pages/credit.jsx';
import Investments from './pages/investments.jsx';
import Login from './pages/login.jsx';
import Debit from './pages/debit.jsx';
import './App.css'

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route index element={<Index />} />
        <Route path="/index" element={<Index />} />
        <Route path="/credit" element={<Credit />} />
        <Route path="/investments" element={<Investments />} />
        <Route path="/login" element={<Login />} />
        <Route path="/debit" element={<Debit />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App
