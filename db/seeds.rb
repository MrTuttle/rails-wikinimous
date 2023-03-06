# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


Article.create!(title: "Titre d'article", content: "Test de contenu lorem ipsum")

(1..25).each do | n |
  title = Faker::Book.title
  content = Faker::Books::Lovecraft.paragraph(sentence_count: 2)
  Article.create!(title: title, content: content)
end
