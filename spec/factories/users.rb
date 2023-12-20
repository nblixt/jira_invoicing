FactoryBot.define do
  factory :user do
    username { "#{last_name.delete("'")[0..6]}#{Faker::Number.number(digits: 3)}".downcase }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.unique.last_name }
    account_id { Faker::Internet.unique.uuid }
  end
end
