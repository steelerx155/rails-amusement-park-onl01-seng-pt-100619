require 'rails_helper'

RSpec.describe "rides/show", type: :view do
  before(:each) do
    @ride = assign(:ride, Ride.create!(
      name: "Name",
      tickets: 2,
      nausea_rating: 3,
      happiness_rating: 4,
      min_height: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
