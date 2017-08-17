require 'rails_helper'

RSpec.describe "coursetypes/index", type: :view do
  before(:each) do
    assign(:coursetypes, [
      Coursetype.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText"
      ),
      Coursetype.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of coursetypes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
