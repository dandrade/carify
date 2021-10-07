require 'rails_helper'

RSpec.describe "dealerships/new", type: :view do
  before(:each) do
    assign(:dealership, Dealership.new(
      name: "MyString",
      address: "MyText"
    ))
  end

  it "renders new dealership form" do
    render

    assert_select "form[action=?][method=?]", dealerships_path, "post" do

      assert_select "input[name=?]", "dealership[name]"

      assert_select "textarea[name=?]", "dealership[address]"
    end
  end
end
