require 'rails_helper'

RSpec.describe "attractions/index", type: :view do
  before(:each) do
    assign(:attractions, [
      Attraction.create!(
        name: "Name",
        tickets: "",
        nausea_rating: "",
        happiness_rating: "",
        min_height: ""
      ),
      Attraction.create!(
        name: "Name",
        tickets: "",
        nausea_rating: "",
        happiness_rating: "",
        min_height: ""
      )
    ])
  end

  it "renders a list of attractions" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
