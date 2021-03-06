RSpec.describe "StateIds", type: :request do
  describe "POST /users/:user_id/state_ids" do
    let(:user) { create(:user) }
    let(:params) do
      {
        user_id: user.id,
        state_id: { number: Faker::IDNumber.valid,
                    state: Faker::Address.state,
                    expiration_date: Faker::Date.in_date_period,
                    image_path: "https://placekitten.com/g/300/200" }
      }
    end

    # NOTE: I can have one `expect` per spec or one spec with multiple `expect`s
    it "creates state_id" do
      expect { post user_state_ids_path(user), params: params }
        .to change(StateId, :count).by(1)
    end

    it "returns 201 status" do
      post user_state_ids_path(user), params: params
      expect(response).to have_http_status(201)
    end

    context "when errors" do
      let(:params) do
        {
          user_id: user.id,
          state_id: { number: Faker::IDNumber.valid }
        }
      end

      it "returns 422 status" do
        post user_state_ids_path(user), params: params
        expect(response.parsed_body).to include(
          "state" => ["can't be blank"],
          "expiration_date" => ["can't be blank"],
          "image_path" => ["can't be blank"]
        )
      end
    end
  end

  describe "PATCH /users/:user_id/state_ids" do
    let!(:state_id) { create(:state_id, user: user) }
    let(:params) do
      {
        user_id: user.id,
        state_id: { number: "6666" }
      }
    end

    it "updates state_id" do
      patch user_state_ids_path(user, params: params)
      expect(state_id.reload.number).to eq("6666")
    end
  end

  describe "DELETE /users/:user_id/state_ids" do
    let!(:state_id) { create(:state_id, user: user) }

    it "deletes state_id" do
      expect { delete user_state_ids_path(user) }
        .to change(MedicalRecommendation, :count).by(-1)
    end
  end
end
