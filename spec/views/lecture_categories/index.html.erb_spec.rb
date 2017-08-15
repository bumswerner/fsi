require 'rails_helper'

RSpec.describe "lecture_categories/index", type: :view do
  before(:each) do
    assign(:lecture_categories, [
      LectureCategory.create!(
        :name => "Name",
        :description => "MyText"
      ),
      LectureCategory.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of lecture_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
