FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@example.com" }
    password "foobar"
  end
end
