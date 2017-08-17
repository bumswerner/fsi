require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      :name => "MyString",
      :discription => "MyText"
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input[name=?]", "section[name]"

      assert_select "textarea[name=?]", "section[discription]"
    end
  end
end
