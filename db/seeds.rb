# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "vibz")

u2 = User.create(name: "jason")
u3 = User.create(name: "bro")
u4 = User.create(name: "bhai")
u5 = User.create(name: "chalna")

# r1 = Relationship.create(friender_id: u1.id, friendee_id: u2.id, accepted: false)
# r2 = Relationship.create(friender_id: u1.id, friendee_id: u3.id, accepted: false)
# r3 = Relationship.create(friender_id: u3.id, friendee_id: u2.id, accepted: false)
# r4 = Relationship.create(friender_id: u4.id, friendee_id: u2.id, accepted: false)
# r5 = Relationship.create(friender_id: u5.id, friendee_id: u2.id, accepted: false)
