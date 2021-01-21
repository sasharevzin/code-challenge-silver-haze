import React from "react"

const MedicalRecommendation = ({ medicalRecommendation }) => (
  <div className="flex bt py mt">
    <ul className="list stretch">
      <li>
        <strong>Medical recommendation</strong>
      </li>
      <li>Issuer: {medicalRecommendation.issuer}</li>
      <li>State: {medicalRecommendation.state}</li>
      <li>
        Expiration Date: {medicalRecommendation.expiration_date}
        {medicalRecommendation.expired && (
          <span className="label">Expired</span>
        )}
      </li>
    </ul>
    <img src={medicalRecommendation.image_path} />
  </div>
)
export default MedicalRecommendation
