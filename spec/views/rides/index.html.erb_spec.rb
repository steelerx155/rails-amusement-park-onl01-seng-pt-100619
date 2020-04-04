require 'rails_helper'

RSpec.describe "rides/index", type: :view do
  before(:each) do
    assign(:rides, [
      Ride.create!(
        name: "Name",
        tickets: 2,
        nausea_rating: 3,
        happiness_rating: 4,
        min_height: 5
      ),
      Ride.create!(
        name: "Name",
        tickets: 2,
        nausea_rating: 3,
        happiness_rating: 4,
        min_height: 5
      )
    ])
  end

  it "renders a list of rides" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
