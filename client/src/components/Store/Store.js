import React from "react"
import Separator from "../Separator"

import "./Store.css"

const Store = () => (
  <div className="store">
    <div className="container">
      <div className="flex">
        <img src="https://placekitten.com/g/200/200" />
        <ul className="stretch list">
          <li>
            <h1>Hank's Dank</h1>
          </li>
          <li>
            Dispensary
            <Separator />
            Danville, California
          </li>
          <li>Medical & Recreational</li>
          <li>
            <span className="stars">
              &#9733; &#9733; &#9733; &#9733; &#9734;
            </span>
            <Separator /> 4.1
          </li>
        </ul>
      </div>
    </div>
  </div>
)

export default Store
