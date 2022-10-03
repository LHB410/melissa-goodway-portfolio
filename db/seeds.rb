import 'artwork.json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#TEST BELOW
puts 'Cleaning database...'
Art.destroy_all


puts 'Creating Art...'
tester = Art.create(
  title: 'san fran',
  description: "very nice art",
  price_cents: 1650
)
tester.photo.attach(io: File.open('/Users/laurabrooks/code/LHB410/melissa-portfolio/melissa-goodway-portfolio/app/assets/images/DSC02585.JPG'), filename: 'test1.JPG', content_type: 'image/JPG')


puts "Art created"

file_path = "melissa-goodway-portfolio/db/artwork.json"
json = File.read(file_path)
art_info = JSON.parse(json)

art_info.each do |art|
  created_art = Art.create(
    title: art["title"],
    description: art["description"],
    price_cents: art["price_cents"],
  )
  created_art.photo.attach(io: File.open(art["photo"]), filename: "#{art["title"]}.jpg", content_type: "image/jpg")
end

# create a JSON file with all of the info
# [
#   {title: "",
#   description: "",
#   photo: "",
#   price: ""}
# ]


# parse it using JSON.parse(file)
#iterate thorugh teh json and create each item
#use above method to save each image to cloudinary
