# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activity.destroy_all
User.destroy_all
Tag.destroy_all
Wishlist.destroy_all

user = User.create!(email: "teste@teste.com", password: "123123", name: "Pedro", adress: "rua jericó 197", birth_date: "1993/01/30")


puts 'Criando 3 novas tags de user...'

tag1 = Tag.create!(sub_category: "Status Civil", tag_name: "Solteiro", tag_type: "user")
puts tag1
tag2 = Tag.create!(sub_category: "Status Civil", tag_name: "Casado", tag_type: "user")
puts tag2
tag3 = Tag.create!(sub_category: "Status Civil", tag_name: "Viúvo", tag_type: "user")
puts tag3

puts 'Feito!!'

puts 'Criando 3 novas tags de activity...'

tag4 = Tag.create!(sub_category: "Bar", tag_name: "Romantico", tag_type: "activity")
puts tag4
tag5 = Tag.create!(sub_category: "Ambiente", tag_name: "Aberto", tag_type: "activity")
puts tag5
tag6 = Tag.create!(sub_category: "Horário", tag_name: "Noite", tag_type: "activity")
puts tag6

puts 'Feito!!'

puts 'Criando 3 novas atividades...'

activity1 = Activity.create!(title: "Casa de Chá da Carol", description: "O lugar preferido de quem procura um chá bem diferentão.", address: "Rua Jericó, 193, São Paulo", ranking: 2.5, category: "Eat & Drink")
activity1.tags << [tag4, tag5]
activity1.save
puts activity1
activity2 = Activity.create!(title: "Show de Rock da Nath", description: "Todas as noites este é o lugar para os fans de Nath e Nic.", address: "Avenida Paulista, 1578, São Paulo", ranking: 4.9, category: "Events")
activity2.tags << [tag4, tag6]
activity2.save
puts activity2
activity3 = Activity.create!(title: "Yoga no Parque com Maurício", description: "Todos os sábados no Ibira! Venha ficar com zen com o mestre Maurício.", address: "Rua Rodésia, 34, São Paulo", ranking: 4.2 , category: "To Do")
activity3.tags << [tag4, tag5, tag6]
activity3.save
puts activity3

puts 'Feito!!'

wishlist = Wishlist.create!(title: "Meus Favoritos:", user_id: "1")


