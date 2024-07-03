# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts "Creating gardens"
# Garden.destroy_all if Rails.env.development?

# little_garden = Garden.create!(
#   name: "My Little Garden",
#   banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
# )

# new_garden = Garden.create!(
#   name: "My New Garden",
#   banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
# )

puts "creating plants"
# Plant.destroy_all

plant = Plant.create(
name: "Alstroemeria",
image_url: "https://www.seedscape.net.au/wp-content/uploads/2022/03/ALSTROEMERIA-PSITTACINA-MONA-LISA.jpg",
garden: Garden.first
)

new_plant = Plant.create(
name: "Monstera",
image_url: "https://pcfb.gumlet.io/images/articles/small-monstera-in-pot.png?w=640&h=426&mode=crop&crop=smart&s=362b2438ad2bd22d5826fe12b96adf88",
garden: Garden.first
)

another_plant= Plant.create(
name: "Alstroemeria",
image_url: "https://www.farmergracy.co.uk/cdn/shop/files/alstroemeria-nicolas-0.jpg?v=1695733528",
garden: Garden.last
)
