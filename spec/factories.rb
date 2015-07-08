FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    username 'tester'
    password 'password'
    password_confirmation 'password'
  end
end
