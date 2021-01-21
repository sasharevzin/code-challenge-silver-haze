User.transaction do
  state_id = StateId.new(
    number: "132-21-4826",
    state: "Washington",
    expiration_date: "Sun, 29 Aug 2021",
    image_path: "https://placekitten.com/g/300/200"
  )
  medical_recommendation = MedicalRecommendation.new(
    number: "377-78-4893",
    state: "Florida",
    issuer: "Bartell, Runolfsdottir and Haag",
    expiration_date: "Tue, 02 Feb 2021",
    image_path: "https://placekitten.com/g/300/200"
  )

  # NOTE: `!` just in case if one of validations didn't go
  User.create!(
    name: "Sasha",
    email: "sasha@gmail.com",
    date_of_birth: "1985-09-26",
    state_ids: [state_id],
    medical_recommendations: [medical_recommendation]
  )
end
