import Navbar from "../components/navbar.jsx";
import SocialLogin from "../components/SocialLogin";
import InputField from "../components/InputField";
import "../styles/login.css";

const Login = () => {
  return (
    <>
      {/* Navbar at the top */}
      <Navbar />

      {/* Main login container */}
      <div className="login-container">
        <h2 className="form-title">Log in with</h2>

        {/* Social login options */}
        <SocialLogin />

        {/* Separator */}
        <p className="separator">
          <span>or</span>
        </p>

        {/* Login form */}
        <form action="#" className="login-form">
          <InputField type="email" placeholder="Email address" />
          <InputField type="password" placeholder="Password" />

          <a href="#" className="forgot-password-link">
            Forgot password?
          </a>

          <button type="submit" className="login-button">
            Log In
          </button>
        </form>

        {/* Signup prompt */}
        <p className="signup-prompt">
          Don&apos;t have an account?{" "}
          <a href="#" className="signup-link">
            Sign up
          </a>
        </p>
      </div>
    </>
  );
};

export default Login;