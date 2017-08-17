require 'rails_helper'

RSpec.describe "coursetypes/edit", type: :view do
  before(:each) do
    @coursetype = assign(:coursetype, Coursetype.create!(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit coursetype form" do
    render

    assert_select "form[action=?][method=?]", coursetype_path(@coursetype), "post" do

      assert_select "input[name=?]", "coursetype[name]"

      assert_select "input[name=?]", "coursetype[symbol]"

      assert_select "textarea[name=?]", "coursetype[description]"
    end
  end
end
