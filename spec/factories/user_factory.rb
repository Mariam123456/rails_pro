FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "name#{n}" }
    sequence(:last_name) { |n| "last_name#{n}" }
    sequence(:email) { |n| "email#{n}@hot.com" }
    password '123456'
    admin false

    factory :admin do
      admin true
    end
  end
end