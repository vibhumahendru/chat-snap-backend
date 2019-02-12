# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "vibz", avatarUrl: "https://cdn3.iconfinder.com/data/icons/supericon-animals-1/512/Hippo_Square_Clear.png")

u2 = User.create(name: "jason", avatarUrl: "http://icons.iconarchive.com/icons/google/noto-emoji-animals-nature/1024/22252-hamster-face-icon.png")
u3 = User.create(name: "bro", avatarUrl:"https://www.directlink.coop/img/icons/avatars/235348-animals/png/tiger.png")
u4 = User.create(name: "bhai", avatarUrl: "https://cdn.iconscout.com/icon/free/png-256/pig-face-sus-wild-animal-food-33928.png")
u5 = User.create(name: "chalna", avatarUrl: "http://icons.iconarchive.com/icons/google/noto-emoji-animals-nature/1024/22259-bear-face-icon.png")

# r1 = Relationship.create(friender_id: u1.id, friendee_id: u2.id, accepted: false)
# r2 = Relationship.create(friender_id: u1.id, friendee_id: u3.id, accepted: false)
# r3 = Relationship.create(friender_id: u3.id, friendee_id: u2.id, accepted: false)
# r4 = Relationship.create(friender_id: u4.id, friendee_id: u2.id, accepted: false)
# r5 = Relationship.create(friender_id: u5.id, friendee_id: u2.id, accepted: false)
