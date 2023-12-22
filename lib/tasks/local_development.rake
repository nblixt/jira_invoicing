unless Rails.env.production?
  Rake::Task["db:seed"].enhance do
    Rake::Task["db:local_development:seed_users"].execute
  end
end

namespace :db do
  namespace :local_development do
    task seed_users: :environment do
      raise "Refusing to seed data in #{Rails.env}. This task is only meant for local development." if Rails.env.production?

      return if User.all.size.positive?

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
    end
  end
end
