require 'rails_helper'

RSpec.describe "Species", type: :request do
  describe "GET /species" do
    it "works! (now write some real specs)" do
      get species_path
      expect(response).to have_http_status(200)
    end
  end
end
