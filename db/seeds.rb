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

user = User.create!(email: "teste@teste.com", password: "123123", name: "Pedro", adress: "rua jericó 197", birth_date: "1993/01/30")

puts 'Criando 3 novas atividades...'

activity1 = Activity.create!(title: "Casa de Chá da Carol", description: "O lugar preferido de quem procura um chá bem diferentão.", address: "Rua Jericó, 193, São Paulo", ranking: 2.5, category: "Eat & Drink")
puts activity1
activity2 = Activity.create!(title: "Show de Rock da Nath", description: "Todas as noites este é o lugar para os fans de Nath e Nic.", address: "Avenida Paulista, São Paulo", ranking: 4.9, category: "Events")
puts activity2
activity3 = Activity.create!(title: "Yoga no Parque com Maurício", description: "Todos os sábados no Ibira! Venha ficar com zen com o mestre Maurício.", address: "Avenida Brasil, São Paulo", ranking: 4.2 , category: "To Do")
puts activity3

puts 'Feito!!'

wishlist1 = Wishlist.create!(title: "Yoga no parque com Maurício", user_id: user.id)
puts wishlist1

wishlist1 = Wishlist.create!(title: "Yep le wagon", user_id: user.id)
puts wishlist1

wishlist2 = Wishlist.create!(title: "Escadaria", user_id: user.id)
puts wishlist2

wishlist2 = Wishlist.create!(title: "Super lua", user_id: user.id)
puts wishlist2




#cria uma wishlista na mao
puts 'Criando 3 novas tags...'

tag1 = Tag.create!(sub_category: "Status Civil", tag_name: "Solteiro", tag_type: "user")
puts tag1
tag2 = Tag.create!(sub_category: "Status Civil", tag_name: "Casado", tag_type: "user")
puts tag2
tag3 = Tag.create!(sub_category: "Status Civil", tag_name: "Viúvo", tag_type: "user")
puts tag3


puts 'Feito!!'
