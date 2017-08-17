require 'rails_helper'

RSpec.describe "coursetypes/show", type: :view do
  before(:each) do
    @coursetype = assign(:coursetype, Coursetype.create!(
      :name => "Name",
      :symbol => "Symbol",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/MyText/)
  end
end
