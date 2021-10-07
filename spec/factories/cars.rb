FactoryBot.define do
  factory :car do
    car_brand { nil }
    model { "MyString" }
    color { "MyString" }
    name { "MyString" }
    doors { 1 }
  end
end
