import React from "react"

import "./Header.css"
import logo from "../../assets/logo.png"

const Header = () => (
  <header className="header">
    <div className="container">
      <img src={logo} alt="Weedmaps" width="150px" />
    </div>
  </header>
)

export default Header
