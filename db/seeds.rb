# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  # Test moderator
  User.create(
    username: Faker::Name.middle_name
    email: 'admin@test.com'
    password: "123456"
    is_admin: true
    is_moderator: false
  )
# Test admin
  User.create(
    username: Faker::Name.middle_name,
    email: 'mod@test.com',
    password: "123456",
    is_admin: false,
    is_moderator: true
  )

  # Test users
5.times do
  user = User.create(
    username: Faker::Name.middle_name,
    email: Faker::Internet.email,
    password: "123456"
  )
  5.times do
    user.recipes.new(
      title: Faker::Food.dish,
      summary: Faker::Food.description,
      published: true
    )
  end
end