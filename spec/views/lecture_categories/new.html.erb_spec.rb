require 'rails_helper'

RSpec.describe "lecture_categories/new", type: :view do
  before(:each) do
    assign(:lecture_category, LectureCategory.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new lecture_category form" do
    render

    assert_select "form[action=?][method=?]", lecture_categories_path, "post" do

      assert_select "input[name=?]", "lecture_category[name]"

      assert_select "textarea[name=?]", "lecture_category[description]"
    end
  end
end
