require 'rails_helper'

RSpec.describe "Coursetypes", type: :request do
  describe "GET /coursetypes" do
    it "works! (now write some real specs)" do
      get coursetypes_path
      expect(response).to have_http_status(200)
    end
  end
end
