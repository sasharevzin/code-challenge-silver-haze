RSpec.describe "Users", type: :request do
  describe "GET /users" do
    let!(:users) { create_list(:user, 3) }

    it "returns users" do
      get users_path
      expect(response.parsed_body.count).to eq(3)
    end
  end
end
