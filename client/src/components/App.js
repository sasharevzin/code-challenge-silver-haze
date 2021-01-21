import React, { Component, Fragment } from "react"
import PropTypes from "prop-types"

import Header from "./Header/Header"
import Footer from "./Footer/Footer"
import UsersList from "./UsersList/UsersList"
import Store from "./Store/Store"

import "../styles/global.css"

const App = () => {
  return (
    <Fragment>
      <Header />
      <Store />
      <UsersList />
      <Footer />
    </Fragment>
  )
}

App.propTypes = {}

App.defaultProps = {}

export default App
