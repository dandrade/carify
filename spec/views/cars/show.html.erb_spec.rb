require 'rails_helper'

RSpec.describe "cars/show", type: :view do
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
      model: "Model",
      color: "Color",
      name: "Name",
      doors: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
