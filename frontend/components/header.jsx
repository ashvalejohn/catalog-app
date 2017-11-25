import React from 'react';
import { Link } from 'react-router-dom';

const Header = ({ currentUser, logout }) => {
  const display = currentUser ? (
    <div className="header__buttons">
      <button onClick={logout} className="header__button">Logout</button>
      <Link to="/cart" className="header__button--last"><button className="header__button">Cart</button></Link>
    </div>
  ) : (
    <div className="header__buttons">
      <Link to="/login">
        <button className="header__button">Log In</button>
      </Link>
      <Link to="/cart" className="header__button--last">
        <button className="header__button">Cart</button>
      </Link>
    </div>
  );

  return (
    <header className="header">
      <form className="header__search" action="">
        <label htmlFor="search">Search
          <input id="search" type="text" />
        </label>
      </form>
      <Link to="/" className="header__logo">
        <h1>Catalog App</h1>
      </Link>
      {display}
    </header>
  );
};

export default Header;
