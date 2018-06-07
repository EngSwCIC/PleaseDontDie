require 'rails_helper'

RSpec.describe "Duties", type: :request do
  describe "GET /duties" do
    it "works! (now write some real specs)" do
      get duties_path
      expect(response).to have_http_status(200)
    end
  end
end
