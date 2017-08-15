require 'rails_helper'

RSpec.describe "LectureCategories", type: :request do
  describe "GET /lecture_categories" do
    it "works! (now write some real specs)" do
      get lecture_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
