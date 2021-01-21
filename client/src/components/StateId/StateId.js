import React from "react"

const StateId = ({ stateId }) => (
  <div className="flex bt py">
    <ul className="list stretch">
      <li>
        <strong>State ID</strong>
      </li>
      <li>State ID Number: {stateId.number}</li>
      <li>State: {stateId.state}</li>
      <li>
        Expiration Date: {stateId.expiration_date}
        {stateId.expired && <span className="label">Expired</span>}
      </li>
    </ul>
    <img src={stateId.image_path} />
  </div>
)
export default StateId
