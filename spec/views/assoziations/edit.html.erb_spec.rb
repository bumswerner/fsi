require 'rails_helper'

RSpec.describe "assoziations/edit", type: :view do
  before(:each) do
    @assoziation = assign(:assoziation, Assoziation.create!(
      :category => nil,
      :course => nil,
      :lecture => nil
    ))
  end

  it "renders the edit assoziation form" do
    render

    assert_select "form[action=?][method=?]", assoziation_path(@assoziation), "post" do

      assert_select "input[name=?]", "assoziation[category_id]"

      assert_select "input[name=?]", "assoziation[course_id]"

      assert_select "input[name=?]", "assoziation[lecture_id]"
    end
  end
end
