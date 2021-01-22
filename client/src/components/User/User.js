import React, { useState } from "react"
import MedicalRecommendation from "../MedicalRecommendation/MedicalRecommendation"
import StateId from "../StateId/StateId"
import Separator from "../Separator"

import "./User.css"

const User = ({ user }) => {
  const [open, setOpen] = useState(false)

  const collapse = () => {
    if (!open) return

    return (
      <div className="pt">
        <MedicalRecommendation
          medicalRecommendation={user.medical_recommendation}
        />
        <StateId stateId={user.state_id} />
      </div>
    )
  }

  return (
    <div className="card p">
      <div className="flex">
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
        <span
          className={open ? "arrow arrow__up" : "arrow arrow__down"}
          onClick={() => setOpen(!open)}
        />
      </div>
      {collapse()}
    </div>
  )
}

export default User
