require 'rails_helper'

RSpec.describe "module_categories/show", type: :view do
  before(:each) do
    @module_category = assign(:module_category, ModuleCategory.create!(
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
