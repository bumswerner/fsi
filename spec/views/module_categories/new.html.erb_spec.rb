require 'rails_helper'

RSpec.describe "module_categories/new", type: :view do
  before(:each) do
    assign(:module_category, ModuleCategory.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new module_category form" do
    render

    assert_select "form[action=?][method=?]", module_categories_path, "post" do

      assert_select "input[name=?]", "module_category[name]"

      assert_select "textarea[name=?]", "module_category[description]"
    end
  end
end
