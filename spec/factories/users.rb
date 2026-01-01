FactoryBot.define do
  factory :user, aliases: [:owner] do
    first_name { "Aaron" }
    last_name { "Summer" }
  end
end