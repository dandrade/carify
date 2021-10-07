require 'rails_helper'

RSpec.describe "car_brands/index", type: :view do
  before(:each) do
    assign(:car_brands, [
      CarBrand.create!(
        name: "Name"
      ),
      CarBrand.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of car_brands" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
