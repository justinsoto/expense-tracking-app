import Navbar from "../components/navbar.jsx"
import "../styles/index.css"

function Index() {
  return(
    <div class="index-container">
      <Navbar></Navbar>
      <h1 class="hook">
        Take Control of Your Finances, 
        <br></br>
        Build Your Future.
      </h1>
      <p class="subtitle">
        Unlock smart, simple tools to plan, manage, and grow your wealth, no matter where you’re starting from.
      </p>
      <a href="/login">
        <button class="get-started">
        Get Started
        </button>
      </a>
    </div>
  )
}

export default Index