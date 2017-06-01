# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create! screen_name: 'BB-8', avatar: 'bb-8.png', online: false
User.create! screen_name: 'Boba Fett', avatar: 'boba-fett.png', online: false
User.create! screen_name: 'C-3PO', avatar: 'c-3po.png', online: false
User.create! screen_name: 'Chewbacca', avatar: 'chewbacca.png', online: false
User.create! screen_name: 'Darth Vader', avatar: 'darth-vader.png', online: false
User.create! screen_name: 'Darth Maul', avatar: 'darth-maul.png', online: false
User.create! screen_name: 'Princess Amidala', avatar: 'princess-amidala.png', online: false
User.create! screen_name: 'R2 D2', avatar: 'r2-d2.png', online: false
User.create! screen_name: 'Royal Guard', avatar: 'royal-guard.png', online: false
User.create! screen_name: 'Yoda', avatar: 'yoda.png', online: false
User.create! screen_name: 'Stormtrooper', avatar: 'stormtrooper.png', online: false
User.create! screen_name: 'The Emperor', avatar: 'the-emperor.png'