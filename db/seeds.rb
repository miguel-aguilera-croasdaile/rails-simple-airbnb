# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |x|
  flat = Flat.new(name: Faker::Coffee.blend_name, address: Faker::Address.street_address, description: Faker::HitchhikersGuideToTheGalaxy.quote, price_per_night: [10,20,30,40,50].sample, number_of_guests: [1,2,3,4,5].sample )
  flat.save
end
