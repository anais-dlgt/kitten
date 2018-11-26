# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

array_cat = [
"https://images.pexels.com/photos/127028/pexels-photo-127028.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
"https://images.pexels.com/photos/193255/pexels-photo-193255.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/693785/pexels-photo-693785.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/979247/pexels-photo-979247.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/302280/pexels-photo-302280.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/145939/pexels-photo-145939.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/800151/pexels-photo-800151.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/928152/pexels-photo-928152.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/978957/pexels-photo-978957.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/794590/pexels-photo-794590.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/533044/pexels-photo-533044.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/870827/pexels-photo-870827.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/1031460/pexels-photo-1031460.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/219770/pexels-photo-219770.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/736528/pexels-photo-736528.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/208906/pexels-photo-208906.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/416135/pexels-photo-416135.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/384555/pexels-photo-384555.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" , "https://images.pexels.com/photos/1082256/pexels-photo-1082256.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
]


array_cat.each do |url|

    Item.create(title: Faker::Cat.unique.name, description: Faker::Cat.unique.breed, price:9.99, image_url: url )

end
