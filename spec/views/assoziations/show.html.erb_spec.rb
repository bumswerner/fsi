require 'rails_helper'

RSpec.describe "assoziations/show", type: :view do
  before(:each) do
    @assoziation = assign(:assoziation, Assoziation.create!(
      :category => nil,
      :course => nil,
      :lecture => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
