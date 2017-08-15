require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText",
      :faculty => nil
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "input[name=?]", "course[symbol]"

      assert_select "textarea[name=?]", "course[description]"

      assert_select "input[name=?]", "course[faculty_id]"
    end
  end
end
