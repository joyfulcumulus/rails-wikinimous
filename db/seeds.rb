puts "Cleaning database..."
Article.destroy_all

puts "Generating data..."

10.times do
  Article.create(title: Faker::Movie.title, content: Faker::Lorem.paragraph(sentence_count: 5))
end

puts "Finished"
