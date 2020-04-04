require 'rails_helper'

RSpec.describe "rides/edit", type: :view do
  before(:each) do
    @ride = assign(:ride, Ride.create!(
      name: "MyString",
      tickets: 1,
      nausea_rating: 1,
      happiness_rating: 1,
      min_height: 1
    ))
  end

  it "renders the edit ride form" do
    render

    assert_select "form[action=?][method=?]", ride_path(@ride), "post" do

      assert_select "input[name=?]", "ride[name]"

      assert_select "input[name=?]", "ride[tickets]"

      assert_select "input[name=?]", "ride[nausea_rating]"

      assert_select "input[name=?]", "ride[happiness_rating]"

      assert_select "input[name=?]", "ride[min_height]"
    end
  end
end
