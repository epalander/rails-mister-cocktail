# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating cocktails & ingredients..."

# kir = {
#   name:      "Kir",
# }
# Cocktail.create!(kir)

Cocktail.create(name: 'Old Fashioned', picture: 'https://images.unsplash.com/photo-1552299100-a3abff9291e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1361&q=80')
Cocktail.create(name: 'Margarita', picture: 'https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80')
Cocktail.create(name: 'Gin Tonic', picture: 'https://images.unsplash.com/photo-1551887558-68148b03eb90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80')
Cocktail.create(name: 'Negroni', picture: 'https://images.unsplash.com/photo-1551751299-1b51cab2694c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80')
Cocktail.create(name: 'Moscow Mule', picture: 'https://images.unsplash.com/photo-1513416543495-10c173ed9908?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
Cocktail.create(name: 'Mojito', picture: 'https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
Cocktail.create(name: 'Whiskey Sour', picture: 'https://images.unsplash.com/photo-1541546006121-5c3bc5e8c7b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80')
Cocktail.create(name: 'Mimosa', picture: 'https://images.unsplash.com/photo-1517087209106-3f42cd661afa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
# Cocktail.create(name: '', picture: '')
# Cocktail.create(name: '', picture: '')

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


puts "Created cocktails & ingredients"

puts "Finished!"
