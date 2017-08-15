require 'rails_helper'

RSpec.describe "lecture_categories/show", type: :view do
  before(:each) do
    @lecture_category = assign(:lecture_category, LectureCategory.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
