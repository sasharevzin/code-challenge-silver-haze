import React from "react"
import MedicalRecommendation from "../MedicalRecommendation/MedicalRecommendation"
import StateId from "../StateId/StateId"
import Separator from "../Separator"

import "./User.css"

const User = ({ user }) => (
  <div className="card p">
    <div className="flex mb">
      <img className="user--image" src="https://placekitten.com/g/50/50" />
      <ul className="list stretch">
        <li>
          <h3>{user.name}</h3>
        </li>
        <li>
          Email: {user.email}
          <Separator />
          Date of Birth: {user.date_of_birth}
        </li>
      </ul>
    </div>
    <MedicalRecommendation
      medicalRecommendation={user.medical_recommendation}
    />
    <StateId stateId={user.state_id} />
  </div>
)

export default User
