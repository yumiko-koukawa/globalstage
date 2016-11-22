# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "seeds runninng..."

# ユーザー
User.create!(name:  "Example User",
             nickname: "Bob",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")
print "."
99.times do |n|
  name  = Faker::Name.name
  nickname  = Faker::Name.first_name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
              nickname: nickname,
              email: email,
              password:              password,
              password_confirmation: password)
  print "."
end
puts "\n-> User_seeds OK!!"

# Article
50.times do
  Article.create!(resource_code: Faker::Lorem.sentence(20),
                  title: Faker::Lorem.word,
                  date: Faker::Date.backward([*1..50].sample))
  print "."
end
puts "\n-> Article_seeds OK!!"

# マイクロポスト
users = User.order(:created_at).take(6)
30.times do
  content = Faker::Lorem.sentence(5)
  users.each.with_index(0) { |user, i| user.microposts.create!(content: content, article_id: [*1..50].sample) }
  print "."
end
puts "\n-> Micropost_seeds OK!!"