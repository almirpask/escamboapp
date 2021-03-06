# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = ["Animais e acessórios",
              "Esportes",
              "Para sua casa",
              "Eletrônicos e celulares",
              "Musica e hobbies",
              "Bebês e crianças",
              "Moda e beleza",
              "Veículos e barcos",
              "Imóveis",
              "Empregos" 
            ]
puts "Cadastrando Categorias"
categories.each do |category|
  Category.find_or_create_by(description: category)
end
puts "#{categories.size} Categorias cadastradas"

############################

puts 'Cadastradno o administrador padrão....'
 admin = Admin.create!([name: "Administrador", 
                        email: 'admin@admin.com', 
                        password:'123456', 
                        password_confirmation: '123456',
                        role: 0])
puts "O usuário admin foi cadastrado com sucesso!"