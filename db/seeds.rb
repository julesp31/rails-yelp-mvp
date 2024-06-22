# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
[
{name: "Banana Tree", address: " 103 Wardour St, London W1F 0UG", phone_number: "02082345678", category: "chinese"},
{name: "Gymkhana", address: "42 Albemarle St, London W1S 4JH", phone_number: "02074376784", category: "belgian" },
{name: "Sketch", address: "9 Conduit St, London W1S 2XG", phone_number: "02074898765", category: "french"},
{name: "Pizza Hot 4 You", address: "208 Rotherhithe New Rd, London SE16 3EH", phone_number: "02086357286", category: "italian"},
{name: "Japanese Canteen", address: "162 Tottenham Court Road, London W1T 7NW England", phone_number: "02086453783", category: "japanese"}
].each do |attributes|
  restaurant = Restaurant.find_or_create_by!(attributes) # create with '!' raises errors
  puts "Created #{restaurant.name}"
end

puts "Finished!"
