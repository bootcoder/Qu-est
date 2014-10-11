# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    first_name "MyText"
    last_name ""
    email "MyText"
    phone "MyText"
  end
end
