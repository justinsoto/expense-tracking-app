import './navbar.css';

function Navbar(){
  return(
    <nav class="navbar">
      <span class="logo-container">
      </span>
      <ul>
        <li><a href="/index">Home</a></li>
        <li><a href="/credit">Credit</a></li>
        <li><a href="/debit">Debit</a></li>
        <li><a href="/investments">Investments</a></li>
        <li><a href="/login">Login</a></li>
      </ul>
    </nav>
  )
}

export default Navbar;