FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email) {|n| "#{n}_#{Faker::Internet.email}" }
    password { Faker::Internet.password(min_length: 7) }

    trait :with_article do
      article
    end

    trait :with_comment do
      comment
    end

    trait :with_article_like do
      article_like
    end
  end
end
