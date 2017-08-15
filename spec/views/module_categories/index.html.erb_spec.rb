require 'rails_helper'

RSpec.describe "module_categories/index", type: :view do
  before(:each) do
    assign(:module_categories, [
      ModuleCategory.create!(
        :name => "Name",
        :description => "MyText"
      ),
      ModuleCategory.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of module_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
