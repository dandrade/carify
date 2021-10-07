require 'rails_helper'

RSpec.describe "car_brands/edit", type: :view do
  before(:each) do
    @car_brand = assign(:car_brand, CarBrand.create!(
      name: "MyString"
    ))
  end

  it "renders the edit car_brand form" do
    render

    assert_select "form[action=?][method=?]", car_brand_path(@car_brand), "post" do

      assert_select "input[name=?]", "car_brand[name]"
    end
  end
end
