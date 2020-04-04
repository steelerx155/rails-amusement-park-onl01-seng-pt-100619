require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Name",
        password: "Password",
        nausea: 2,
        happiness: 3,
        tickets: 4,
        height: 5
      ),
      User.create!(
        name: "Name",
        password: "Password",
        nausea: 2,
        happiness: 3,
        tickets: 4,
        height: 5
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
