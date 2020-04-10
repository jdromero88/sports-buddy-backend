# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
User.destroy_all
UserGame.destroy_all

jose = User.create first_name: 'Jose', last_name: 'Romero', email:'jr@josedromero.com', username: 'jodarove', password:'password', location:20009, avatar: 'none'
