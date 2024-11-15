# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.create(title: 'Inception', overview: 'A mind-bending thriller...', poster_url: 'https://example.com/inception.jpg', rating: 8.8)
Movie.create(title: 'The Matrix', overview: 'A computer hacker learns...', poster_url: 'https://example.com/matrix.jpg', rating: 8.7)
