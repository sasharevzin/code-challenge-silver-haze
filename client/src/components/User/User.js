import React from "react"

import "./User.css"

const User = ({ user }) => (
  <div className="card p">
    <div class="user flex">
      <img className="user--image" src="https://placekitten.com/g/50/50" />
      <div className="user--details">
        <h4>{user.name}</h4>
        <div>
          Email: {user.email}
          Date of Birth: {user.date_of_birth}
        </div>
      </div>
    </div>
    <hr className="separator" />
    <div className="medical-recommendation flex">
      <div className="medical-recommendation--details">
        <strong>Medical recommendation</strong>
      </div>
      <img
        class="medical-recommendation--image"
        src="https://placekitten.com/g/50/50"
      />
    </div>
    <hr className="separator" />
    <div className="medical-recommendation flex">
      <div className="medical-recommendation--details">
        <strong>Medical recommendation</strong>
      </div>
      <img
        class="medical-recommendation--image"
        src="https://placekitten.com/g/50/50"
      />
    </div>
  </div>
)

export default User
