# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

post = Post.create(title: "My First Post", body: "This is the content of my first post.")

event = Event.create(title: "Rails Workshop", description: "Learn Ruby on Rails.")

post.comments.create(body: "Great post!")
post.comments.create(body: "Very informative!")

event.comments.create(body: "Looking forward to it!")
event.comments.create(body: "Excited to learn!");
