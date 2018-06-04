require 'rails_helper'

RSpec.describe "Needs", type: :request do
  describe "GET /needs" do
    it "works! (now write some real specs)" do
      get needs_path
      expect(response).to have_http_status(200)
    end
  end
end
