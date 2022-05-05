# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# City.destroy_all
# User.destroy_all
# Gossip.destroy_all
# Tag.destroy_all
# TagsGossip.destroy_all
PrivateMessage.destroy_all

# "villes
# 10.times do
#     city = City.new(name: Faker::Nation.capital_city, zip_code: Faker::Address.postcode)
#     if city.save
#       puts "#{city.name}"
#     end
# end

# #users
# 10.times do
#     firstname = Faker::Name.first_name
#     lastname = Faker::Name.last_name
#     email = firstname + "." + lastname + "@thp.com"
#     User.create!(first_name: firstname, last_name: lastname , email: email, description: Faker::Quote.jack_handey, city_id: Faker::Number.between(from: City.all.first.id, to: City.all.last.id), age: Faker::Number.within(range: 20..40))
# end



##gossips
# 20.times do
#     Gossip.create!(title: Faker::Fantasy::Tolkien.poem, content: Faker::Quote.matz, user_id: Faker::Number.between(from: User.all.first.id, to: User.all.last.id) )
# end

##tags
# 10.times do
#     Tag.create!(title: Faker::Emotion.noun)     
# end

##tags_gossips
# 5.times do
#     Gossip.all.each do |gossip|
#         nb = rand(1..3)
#         nb.times do
#             tag = TagsGos5.times do
#     Gossip.all.each do |gossip|
#         nb = rand(1..3)
#         nb.times do
#             tag = TagsGossip.new(tag_id: Faker::Number.between(from: Tag.all.first.id, to: Tag.all.last.id), gossip_id: gossip.id )
#             if tag.save
#             end
#         end
#     end
# endsip.new(tag_id: Faker::Number.between(from: Tag.all.first.id, to: Tag.all.last.id), gossip_id: gossip.id )
#             if tag.save
#             end
#         end
#     end
# end

##Private Messages
5.times do
    pm = PrivateMessage.new(content: Faker::Books::Lovecraft.sentence, sender_id: Faker::Number.between(from: User.all.first.id, to: User.all.last.id), recipient_id: Faker::Number.between(from: User.all.first.id, to: User.all.last.id))
    if pm.save
        puts "message : #{pm.content}"
        puts "sent by : #{User.find(pm.sender_id).first_name} #{User.find(pm.sender_id).last_name}"
        puts "to : #{User.find(pm.recipient_id).first_name} #{User.find(pm.recipient_id).last_name}"+"\n"
    else
        puts "message non envoyé!"+"\n"
    end  
end 















# for i in 3..12 do
#     City.find(i).update(zip_code: Faker::Address.postcode)
# end

# PrivateMessage.find(1).update(recipient_id: Faker::Number.between(from: User.all.first.id, to: User.all.last.id))
