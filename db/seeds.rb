require 'faker'

10.times do
  title = Faker::Lorem.sentence(word_count: rand(3..7))
  content = Faker::Lorem.paragraph
  Article.create(title:, content:)
end
