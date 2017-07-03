namespace :utils do
  desc "Cria administradores fakes"
  task generate_admins: :environment do
    puts 'Cadastradno o administrador padrão....'
    10.times do
      admin = Admin.create!([name: Faker::Name.name,
                              email: Faker::Internet.email, 
                              password:'123456', 
                              password_confirmation: '123456',
                              role: [0,1].sample])
    end
    puts "O usuário admin foi cadastrado com sucesso!"
  end

end
