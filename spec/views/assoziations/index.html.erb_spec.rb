require 'rails_helper'

RSpec.describe "assoziations/index", type: :view do
  before(:each) do
    assign(:assoziations, [
      Assoziation.create!(
        :category => nil,
        :course => nil,
        :lecture => nil
      ),
      Assoziation.create!(
        :category => nil,
        :course => nil,
        :lecture => nil
      )
    ])
  end

  it "renders a list of assoziations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
