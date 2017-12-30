FactoryBot.define do
	
  factory :user do
    email "p@exle.com"
    password "1234567890"
    last_name "Example"
    admin false
  end

  factory :admin, class: User do
  email "peter2@eample.com"
  password "qwertyuiop"
  admin true
  last_name "User"
end
end