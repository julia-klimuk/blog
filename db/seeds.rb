# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

return if User.count > 0

10.times do |i|
  u = User.create(name: "User #{i}")
  Post.create(user: u, title: "Post #{i} by #{u.name}", body: "This is my awesome post. By #{u.name}")
end

10.times do
  Comment.create(post: Post.offset(rand(9)).first, user: User.offset(rand(9)).first, body: "This is great!")
end
