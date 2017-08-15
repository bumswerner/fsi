require 'rails_helper'

RSpec.describe "module_categories/edit", type: :view do
  before(:each) do
    @module_category = assign(:module_category, ModuleCategory.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit module_category form" do
    render

    assert_select "form[action=?][method=?]", module_category_path(@module_category), "post" do

      assert_select "input[name=?]", "module_category[name]"

      assert_select "textarea[name=?]", "module_category[description]"
    end
  end
end
