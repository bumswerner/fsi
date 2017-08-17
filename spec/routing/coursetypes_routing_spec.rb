require "rails_helper"

RSpec.describe CoursetypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coursetypes").to route_to("coursetypes#index")
    end

    it "routes to #new" do
      expect(:get => "/coursetypes/new").to route_to("coursetypes#new")
    end

    it "routes to #show" do
      expect(:get => "/coursetypes/1").to route_to("coursetypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coursetypes/1/edit").to route_to("coursetypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coursetypes").to route_to("coursetypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coursetypes/1").to route_to("coursetypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coursetypes/1").to route_to("coursetypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coursetypes/1").to route_to("coursetypes#destroy", :id => "1")
    end

  end
end
