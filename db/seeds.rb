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

tag4 = Tag.create!(sub_category: "Bar", tag_name: "Romântico", tag_type: "activity")
puts tag4
tag5 = Tag.create!(sub_category: "Ambiente", tag_name: "Aberto", tag_type: "activity")
puts tag5
tag6 = Tag.create!(sub_category: "Horário", tag_name: "Noite", tag_type: "activity")
puts tag6

puts 'Feito!'

puts 'Criando 9 novas atividades...'

activity1 = Activity.create!(title: "Casa de Chá da Carol", description: "O lugar preferido de quem procura um chá bem diferentão.", address: "Rua Medeiros de Albuquerque, 85, São Paulo", ranking: 2.5, category: "Eat & Drink")
activity1.tags << [tag4, tag5]
activity1.save
puts activity1
activity2 = Activity.create!(title: "Show de Rock da Nath", description: "Todas as noites este é o lugar para os fans de Nath e Nic.", address: "Rua Harmonia, 337, São Paulo", ranking: 4.9, category: "Events")
activity2.tags << [tag4, tag6]
activity2.save
puts activity2
activity3 = Activity.create!(title: "Yoga no Parque com Maurício", description: "Todos os sábados no Ibira! Venha ficar com zen com o mestre Maurício.", address: "Rua Rodésia, 34, São Paulo", ranking: 4.2 , category: "To Do")
activity3.tags << [tag4, tag5, tag6]
activity3.save
puts activity3

activity4 = Activity.create!(title: "Pão de Queijo do Pedrinho", description: "Pra quem gosta de pão de queijo recheado com doce de leite, uai!", address: "Rua Purpurina, 170, São Paulo", ranking: 4.5 , category: "Eat & Drink")
activity4.tags << [tag5]
activity4.save
puts activity4

activity5 = Activity.create!(title: "Festa do Mars", description: "Vai rolar muito exploding kittens.", address: "Rua Rodésia, 34, São Paulo", ranking: 1.0 , category: "Events")
activity5.tags << [tag6]
activity5.save
puts activity5

activity6 = Activity.create!(title: "DemoDay dos Lindos", description: "Apresentação dos projetos do Batch #944!", address: "Rua Jericó, 193, São Paulo", ranking: 4.0, category: "To Do")
activity6.tags << [tag5]
activity6.save
puts activity6

activity7 = Activity.create!(title: "Cannoleria do Lucas", description: "O melhor da Itália apenas alguns passos de você!", address: "Rua Original, 173, São Paulo", ranking: 4.7, category: "Eat & Drink", image: "https://images.pexels.com/photos/7474126/pexels-photo-7474126.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity7.tags << [tag4, tag5]
activity7.save
puts activity7

activity8 = Activity.create!(title: "Batalha dos TikTokers", description: "Pra quem coordenação e nada pra fazer.", address: "Rua Jericó, 15, São Paulo", ranking: 3.7, category: "Events")
activity8.tags << [tag5]
activity8.save
puts activity8

activity9 = Activity.create!(title: "Aulão de Crossfit", description: "Com o nosso crossfiteiro Aurélio.", address: "Rua Wisard, 138, São Paulo", ranking: 4.2, category: "To Do")
activity9.tags << [tag5]
activity9.save
puts activity9

puts 'Feito!'

wishlist = Wishlist.create!(title: "Meus Favoritos:", user_id: "1")
