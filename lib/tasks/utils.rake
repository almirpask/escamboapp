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


  desc "Cria Anuncios fakes"
  task generate_ads: :environment do
    puts 'Cadastradno Anuncios....'
    100.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2,3,4,5].sample),
        description: Faker::Lorem.sentence([2,3,4,5].sample),
        member: Member.all.sample,
        category: Category.all.sample
      )
    end
    puts "Anuncios cadastrados com sucesso!"
  end

end
