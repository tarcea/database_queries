# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clean DB"
Post.destroy_all
puts "start creating posts"
3000.times do |count|
  Post.create(body: "This is the body for post #{count + 1}", title: "This is the title for post #{count + 1}")
end
puts "DONE creating posts!!!!"
