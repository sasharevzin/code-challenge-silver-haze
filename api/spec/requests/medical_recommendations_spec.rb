RSpec.describe "MedicalRecommendations", type: :request do
  describe "POST /users/:user_id/medical_recommendations" do
    let(:user) { create(:user) }
    let(:params) do
      {
        user_id: user.id,
        medical_recommendation: { number: Faker::IDNumber.valid,
                                  state: Faker::Address.state,
                                  issuer: Faker::Company.name,
                                  expiration_date: Faker::Date.in_date_period,
                                  image_path: "https://placekitten.com/g/300/200" }
      }
    end

    # NOTE: I can have one `expect` per spec or one spec with multiple `expect`s
    it "creates medical_recommendation" do
      expect { post user_medical_recommendations_path(user), params: params }
        .to change(MedicalRecommendation, :count).by(1)
    end

    it "returns 201 status" do
      post user_medical_recommendations_path(user), params: params
      expect(response).to have_http_status(201)
    end

    context "when errors" do
      let(:params) do
        {
          user_id: user.id,
          medical_recommendation: { number: Faker::IDNumber.valid }
        }
      end

      it "returns 422 status" do
        post user_medical_recommendations_path(user), params: params
        expect(response.parsed_body).to include(
          "issuer" => ["can't be blank"],
          "state" => ["can't be blank"],
          "expiration_date" => ["can't be blank"],
          "image_path" => ["can't be blank"]
        )
      end
    end
  end
end
