require "rails_helper"

RSpec.describe NeedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/needs").to route_to("needs#index")
    end

    it "routes to #new" do
      expect(:get => "/needs/new").to route_to("needs#new")
    end

    it "routes to #show" do
      expect(:get => "/needs/1").to route_to("needs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/needs/1/edit").to route_to("needs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/needs").to route_to("needs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/needs/1").to route_to("needs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/needs/1").to route_to("needs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/needs/1").to route_to("needs#destroy", :id => "1")
    end

  end
end
