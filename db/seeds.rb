# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "bike 1", :description => "A red bike!", :color => "red")
Product.create(:name => "bike 2", :description => "A black bike!", :color => "black")
Product.create(:name => "seed-generated product", :description => "I also created this product without using the HTML form!", :color => "yellow")