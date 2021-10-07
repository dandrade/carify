require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      car_brand: nil,
      model: "MyString",
      color: "MyString",
      name: "MyString",
      doors: 1
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input[name=?]", "car[car_brand_id]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[color]"

      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[doors]"
    end
  end
end
