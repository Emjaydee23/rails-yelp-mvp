# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# puts 'Creating restaurants...'

# ["chinese", "italian", "japanese", "french", "belgian"].each do |restaurant_type|
#   Restaurant.find_or_create_by!(
#     name: restaurant_type,
#     address: restaurant_type,
#     phone_number: restaurant_type,
#     category: restaurant_type
#   )
# end
Restaurant.destroy_all

puts 'Creating restaurants...'

  [{
    name:'Red Lantern',
    address:'123 High Street, London, UK',
    phone_number: '+44 20 1234 5678',
    category: 'Chinese'
  },
  {
    name: 'Trattoria Romana',
    address: '456 Oxford Street, Manchester, UK',
    phone_number: '+44 161 987 6543',
    category: 'Italian'
  },
  {
    name: 'Sushi Samba',
    address: '789 Covent Garden, London, UK',
    phone_number: '+44 20 3456 7890',
    category: 'Japanese'

  },
  {
    name: 'Le Petit Bistro',
    address: '321 Baker Street, Edinburgh, UK',
    phone_number: '+44 131 234 5678',
    category: 'French'
  },
  {
    name: 'Belgian Waffle House',
    address: '567 George Street, Glasgow, UK',
    phone_number: '+44 141 876 5432',
    category: 'Belgian'
  }].each do |details|
    Restaurant.create(details)
  end
