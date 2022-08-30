# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Activity.destroy_all
User.destroy_all

user = User.create!(email: "teste@teste.com", password: "123123")

puts 'Criando 3 novas atividades...'

activity1 = Activity.create!(title: "Casa de Chá da Carol", description: "O lugar preferido de quem procura um chá bem diferentão", activity_address: "Rua da Mãe Joana", ranking: 2.5, category: "eat")
puts activity1
activity2 = Activity.create!(title: "Show de Rock da Nath", description: "Todas as noites este é o lugar para os fans de Nath e Nick", activity_address: "Rua das Baterias Violentas", ranking: 4.9, category: "event")
puts activity2
activity3 = Activity.create!(title: "Yoga no parque com Maurício" , description: "Todos os sábados no ibira! venha ficar com zen com o mestre Maurício.", activity_address: "Parque Ibirapuera" , ranking: 4.2 , category: "do")
puts activity3

puts 'Feito!!'

  