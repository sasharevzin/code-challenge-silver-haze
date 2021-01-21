import React, { Component, Fragment } from 'react';
import PropTypes from 'prop-types';

import Header from './Header/Header';

import '../styles/global.css';

export class App extends Component {
  constructor(props) {
    super();
  }

  render() {
    return(
      <Fragment>
        <Header />
      </Fragment>
    );
  }
}

App.propTypes = {};

App.defaultProps = {};

export default App;
