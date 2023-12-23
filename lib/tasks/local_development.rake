unless Rails.env.production?
  Rake::Task["db:seed"].enhance do
    Rake::Task["db:local_development:seed_users"].execute
    Rake::Task["db:local_development:seed_projects"].execute
  end
end

namespace :db do
  namespace :local_development do
    task seed_users: :environment do
      raise "Refusing to seed data in #{Rails.env}. This task is only meant for local development." if Rails.env.production?

      unless User.all.size.positive?
        puts "Seeding users"
        User.create(first_name: "Nick", last_name: "Blixt", username: "blixt", account_id: Faker::Internet.unique.uuid)

        25.times do
          last_name = Faker::Name.unique.last_name
          User.create(
            username: "#{last_name.delete("'")[0..6]}#{Faker::Number.number(digits: 3)}".downcase,
            first_name: Faker::Name.first_name,
            last_name: last_name,
            account_id: Faker::Internet.unique.uuid
          )
        end
        puts "Seeded #{User.all.size} users"
      end
    end

    task seed_projects: :environment do
      raise "Refusing to seed data in #{Rails.env}. This task is only meant for local development." if Rails.env.production?

      unless Project.all.size.positive?
        puts "Seeding projects"

        10.times do |i|
          key = Faker::Alphanumeric.unique.alpha(number: rand(3..8)).upcase
          Project.create(
            jira_id: Faker::Number.unique.number(digits: 5),
            key: key,
            name: Faker::Company.name,
            url: "https://jira.ahc.umn.edu/projects/#{key}/summary",
            archived: [7, 9].include?(i),
            deleted: i == 9,
            description: Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 4)
          )
        end
        puts "Seeded #{Project.all.size} projects"
      end
    end
  end
end
