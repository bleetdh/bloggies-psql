# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do |i|
#   User.create(
#   name: "User#{i}",
#   email: "user#{i}@email.com",
#   password: "user123",
#   password_confirmation: "user123"
#   )
# end

# 5.times do |i|
#   Post.create(
#   title: "post#{i}",
#   content: "hihhi hello hello blah blah blah",
#   user_id: 6
#   )
# end

5.times do |i|
  Comment.create(
  content: "blah#{i}",
  upvote: 10,
  downvote: 0,
  post_id: 1
  )
end

5.times do |i|
  Comment.create(
  content: "blah#{i}",
  upvote: 10,
  downvote: 0,
  post_id: 2
  )
end
