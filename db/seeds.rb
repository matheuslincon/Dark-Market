# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

User.create!(nickname: 'Leon', email: 'leon@test.com', password: '123123')
User.create!(nickname: 'Mice', email: 'mice@test.com', password: '123123')
User.create!(nickname: 'Mamma Bear', email: 'bear@test.com', password: '123123')

Item.create!(name: 'Chain Saw', price: 500, description: 'okok', user_id: User.first)
Item.create!(name: 'Axe', price: 500, description: 'okok', user_id: User.first)
Item.create!(name: 'Sword', price: 500, description: 'okok', user_id: User.last)
