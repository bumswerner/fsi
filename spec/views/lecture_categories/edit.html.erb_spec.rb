require 'rails_helper'

RSpec.describe "lecture_categories/edit", type: :view do
  before(:each) do
    @lecture_category = assign(:lecture_category, LectureCategory.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit lecture_category form" do
    render

    assert_select "form[action=?][method=?]", lecture_category_path(@lecture_category), "post" do

      assert_select "input[name=?]", "lecture_category[name]"

      assert_select "textarea[name=?]", "lecture_category[description]"
    end
  end
end
