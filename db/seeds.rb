# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Word.create!(title: "Moroso", description: "Devagar, Lento")
Word.create!(title: "Açodado", description: "Rápido, Veloz")
Word.create!(title: "Nepotismo", description: "favorito, favorecido")
Word.create!(title: "Fomentar", description: "incentivar, encorajar")
Word.create!(title: "Improbidade", description: "desonestidade, fraude")
Word.create!(title: "Apodentrar", description: "Apodrecer")
Word.create!(title: "Estafermo", description: "Paspalho, inútil")
Word.create!(title: "Aprobativo", description: "Aprovativo")
Word.create!(title: "Ojeriza", description: "Animosidade, antipatia")
Word.create!(title: "Arrabalde", description: "Ambiente, bairro")
