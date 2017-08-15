require "rails_helper"

RSpec.describe LectureCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lecture_categories").to route_to("lecture_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/lecture_categories/new").to route_to("lecture_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/lecture_categories/1").to route_to("lecture_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lecture_categories/1/edit").to route_to("lecture_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lecture_categories").to route_to("lecture_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lecture_categories/1").to route_to("lecture_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lecture_categories/1").to route_to("lecture_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lecture_categories/1").to route_to("lecture_categories#destroy", :id => "1")
    end

  end
end
