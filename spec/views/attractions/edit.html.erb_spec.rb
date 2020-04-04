require 'rails_helper'

RSpec.describe "attractions/edit", type: :view do
  before(:each) do
    @attraction = assign(:attraction, Attraction.create!(
      name: "MyString",
      tickets: "",
      nausea_rating: "",
      happiness_rating: "",
      min_height: ""
    ))
  end

  it "renders the edit attraction form" do
    render

    assert_select "form[action=?][method=?]", attraction_path(@attraction), "post" do

      assert_select "input[name=?]", "attraction[name]"

      assert_select "input[name=?]", "attraction[tickets]"

      assert_select "input[name=?]", "attraction[nausea_rating]"

      assert_select "input[name=?]", "attraction[happiness_rating]"

      assert_select "input[name=?]", "attraction[min_height]"
    end
  end
end
