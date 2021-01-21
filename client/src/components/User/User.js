import React from "react"
import MedicalRecommendation from "../MedicalRecommendation/MedicalRecommendation"
import StateId from "../StateId/StateId"

import "./User.css"

const User = ({ user }) => (
  <div className="card p">
    <div className="user flex">
      <img className="user--image" src="https://placekitten.com/g/50/50" />
      <div className="user--details">
        <h4>{user.name}</h4>
        <div>
          Email: {user.email} Date of Birth: {user.date_of_birth}
        </div>
      </div>
    </div>
    <hr className="separator" />
    <MedicalRecommendation />
    <hr className="separator" />
    <StateId />
  </div>
)

export default User
