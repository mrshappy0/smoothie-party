# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Rememeber to destroy the join table first!
SmoothieIngredient.destroy_all
Smoothie.destroy_all
Ingredient.destroy_all

straw=Smoothie.create(name: "Strawberry", size: 16)
blueb=Smoothie.create(name: "Blueberry", size: 17)

protein=Ingredient.create(name: "Protein", stock: 500)
sberries=Ingredient.create(name: "Stawberries", stock: 200)
bberries=Ingredient.create(name: "Blueberry", stock: 300)
yogurt=Ingredient.create(name: "Yogurt", stock: 430)
figs=Ingredient.create(name: "Finnish Figs", stock: 1500)
gum=Ingredient.create(name: "Bubblegum", stock: 2000)


SmoothieIngredient.create(quantity: 5, smoothie: straw, ingredient: sberries )
SmoothieIngredient.create(quantity: 10, smoothie: blueb, ingredient: bberries)
SmoothieIngredient.create(quantity: 2, smoothie: blueb, ingredient: protein)