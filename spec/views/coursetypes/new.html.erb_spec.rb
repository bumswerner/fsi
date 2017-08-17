require 'rails_helper'

RSpec.describe "coursetypes/new", type: :view do
  before(:each) do
    assign(:coursetype, Coursetype.new(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new coursetype form" do
    render

    assert_select "form[action=?][method=?]", coursetypes_path, "post" do

      assert_select "input[name=?]", "coursetype[name]"

      assert_select "input[name=?]", "coursetype[symbol]"

      assert_select "textarea[name=?]", "coursetype[description]"
    end
  end
end
