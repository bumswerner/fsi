require 'rails_helper'

RSpec.describe "ModuleCategories", type: :request do
  describe "GET /module_categories" do
    it "works! (now write some real specs)" do
      get module_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
