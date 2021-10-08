require 'rails_helper'

RSpec.describe "cars/index", type: :view do
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

    assign(:cars, [
      Car.create!(
        car_brand: @brand,
        model: "Model",
        color: "Color",
        name: "Name",
        doors: 2
      ),
      Car.create!(
        car_brand: @brand,
        model: "Model",
        color: "Color",
        name: "Name",
        doors: 2
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", text: nil.to_s, count: 8
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 4
  end
end
