require 'rails_helper'

RSpec.describe "lectures/edit", type: :view do
  before(:each) do
    @lecture = assign(:lecture, Lecture.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit lecture form" do
    render

    assert_select "form[action=?][method=?]", lecture_path(@lecture), "post" do

      assert_select "input[name=?]", "lecture[name]"

      assert_select "textarea[name=?]", "lecture[description]"
    end
  end
end
