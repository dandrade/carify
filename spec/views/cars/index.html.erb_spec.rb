require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        car_brand: nil,
        model: "Model",
        color: "Color",
        name: "Name",
        doors: 2
      ),
      Car.create!(
        car_brand: nil,
        model: "Model",
        color: "Color",
        name: "Name",
        doors: 2
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
