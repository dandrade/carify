require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do

    @user = assign(:current_user, User.create!(
      email: Faker::Internet.unique.email,
      password: "123456",
      password_confirmation: "123456",
      role: :admin
    ))

    sign_in @user

    @brand = assign(:brand, CarBrand.create!(
      name: "Name"
    ))
    @car = assign(:car, Car.create!(
      car_brand: @brand,
      model: "MyString",
      color: "MyString",
      name: "MyString",
      doors: 1
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "select[name=?]", "car[car_brand_id]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[color]"

      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[doors]"
    end
  end
end
