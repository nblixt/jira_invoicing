FactoryBot.define do
  factory :project do
    jira_id { Faker::Number.unique.number(digits: 5) }
    key { Faker::Alphanumeric.alpha(number: 5).upcase }
    name { Faker::Company.name }

    trait :description do
      description { Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 4) }
    end

    trait :archived do
      archived { true }
    end

    trait :deleted do
      deleted { true }
    end
  end
end
