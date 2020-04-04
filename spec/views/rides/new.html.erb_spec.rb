require 'rails_helper'

RSpec.describe "rides/new", type: :view do
  before(:each) do
    assign(:ride, Ride.new(
      name: "MyString",
      tickets: 1,
      nausea_rating: 1,
      happiness_rating: 1,
      min_height: 1
    ))
  end

  it "renders new ride form" do
    render

    assert_select "form[action=?][method=?]", rides_path, "post" do

      assert_select "input[name=?]", "ride[name]"

      assert_select "input[name=?]", "ride[tickets]"

      assert_select "input[name=?]", "ride[nausea_rating]"

      assert_select "input[name=?]", "ride[happiness_rating]"

      assert_select "input[name=?]", "ride[min_height]"
    end
  end
end
