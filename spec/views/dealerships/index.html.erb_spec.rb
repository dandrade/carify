require 'rails_helper'

RSpec.describe "dealerships/index", type: :view do
  before(:each) do
    assign(:dealerships, [
      Dealership.create!(
        name: "Name",
        address: "MyText"
      ),
      Dealership.create!(
        name: "Name",
        address: "MyText"
      )
    ])
  end

  it "renders a list of dealerships" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
