require 'json'
import 'artwork.json'


#TEST BELOW
puts 'Cleaning database...'
Order.destroy_all
Art.destroy_all



puts 'Creating Art...'




file_path = File.join(Rails.public_path.join("/Users/laurabrooks/code/LHB410/melissa-portfolio/melissa-goodway-portfolio/artwork.json"))
json = File.read(file_path)
art_info = JSON.parse(json)

art_info.each do |art|
  created_art = Art.create!(
    title: art["title"],
    description: art["description"],
    price_cents: art["price_cents"],
    category: art["category"],
    position: art["position"]
  )
  created_art.photo.attach(io: File.open(art["photo_url"]), filename: "#{art["title"]}.jpg", content_type: "image/jpg")
  created_art.save
end
puts "Art created"


# // REMEMBER TO MOVE IMAGES BACK INTO ASSETS/IMAGES BEFORE SEEDING //
