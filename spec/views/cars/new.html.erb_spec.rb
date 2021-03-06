require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      car_brand: nil,
      model: "MyString",
      color: "MyString",
      name: "MyString",
      doors: 1
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "select[name=?]", "car[car_brand_id]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[color]"

      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[doors]"
    end
  end
end
