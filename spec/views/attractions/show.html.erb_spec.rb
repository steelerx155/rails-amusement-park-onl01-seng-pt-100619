require 'rails_helper'

RSpec.describe "attractions/show", type: :view do
  before(:each) do
    @attraction = assign(:attraction, Attraction.create!(
      name: "Name",
      tickets: "",
      nausea_rating: "",
      happiness_rating: "",
      min_height: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
