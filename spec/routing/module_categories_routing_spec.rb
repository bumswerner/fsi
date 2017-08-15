require "rails_helper"

RSpec.describe ModuleCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/module_categories").to route_to("module_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/module_categories/new").to route_to("module_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/module_categories/1").to route_to("module_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/module_categories/1/edit").to route_to("module_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/module_categories").to route_to("module_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/module_categories/1").to route_to("module_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/module_categories/1").to route_to("module_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/module_categories/1").to route_to("module_categories#destroy", :id => "1")
    end

  end
end
