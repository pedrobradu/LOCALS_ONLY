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
LinkedTag.destroy_all

puts 'Criando 9 novas tags de user...'

u_tag1 = Tag.create!(sub_category: "Status Civil", tag_name: "Solteiro", tag_type: "user")
u_tag2 = Tag.create!(sub_category: "Status Civil", tag_name: "Casado", tag_type: "user")
u_tag3 = Tag.create!(sub_category: "Filhos", tag_name: "Com filho", tag_type: "user")
u_tag4 = Tag.create!(sub_category: "Filhos", tag_name: "Sem filho", tag_type: "user")
u_tag5 = Tag.create!(sub_category: "Estilo", tag_name: "Aventura", tag_type: "user")
u_tag6 = Tag.create!(sub_category: "Estilo", tag_name: "Balada", tag_type: "user")
u_tag7 = Tag.create!(sub_category: "Estilo", tag_name: "Sossego", tag_type: "user")
u_tag8 = Tag.create!(sub_category: "Estilo", tag_name: "Foodie", tag_type: "user")
u_tag9 = Tag.create!(sub_category: "Estilo", tag_name: "Natureza", tag_type: "user")

puts 'Feito!!'

user1 = User.create!(email: "teste@teste.com", password: "123123", name: "Pedro", address: "Rua Jericó, 193, São Paulo", birth_date: "1993/01/30")
user1.tags << [u_tag1, u_tag4, u_tag8]
user1.save

puts 'Criando 15 novas tags de activity...'

a_tag1 = Tag.create!(sub_category: "Restaurante", tag_name: "Japonês", tag_type: "activity")
a_tag2 = Tag.create!(sub_category: "Restaurante", tag_name: "Italiano", tag_type: "activity")
a_tag3 = Tag.create!(sub_category: "Restaurante", tag_name: "Churrasco", tag_type: "activity")
a_tag4 = Tag.create!(sub_category: "Bar", tag_name: "Cerveja", tag_type: "activity")
a_tag5 = Tag.create!(sub_category: "Bar", tag_name: "Drinks", tag_type: "activity")
a_tag6 = Tag.create!(sub_category: "Bar", tag_name: "Café", tag_type: "activity")
a_tag7 = Tag.create!(sub_category: "Estilo", tag_name: "Amigos", tag_type: "activity")
a_tag8 = Tag.create!(sub_category: "Estilo", tag_name: "Romântico", tag_type: "activity")
a_tag9 = Tag.create!(sub_category: "Estilo", tag_name: "Família", tag_type: "activity")
a_tag10 = Tag.create!(sub_category: "Estilo", tag_name: "Pet-friendely", tag_type: "activity")
a_tag11 = Tag.create!(sub_category: "Música", tag_name: "Rock", tag_type: "activity")
a_tag12 = Tag.create!(sub_category: "Música", tag_name: "Sertanejo", tag_type: "activity")
a_tag13 = Tag.create!(sub_category: "Música", tag_name: "Eletrônica", tag_type: "activity")
a_tag14 = Tag.create!(sub_category: "Atividade", tag_name: "Dança", tag_type: "activity")
a_tag15 = Tag.create!(sub_category: "Atividade", tag_name: "Trilha", tag_type: "activity")
a_tag16 = Tag.create!(sub_category: "Atividade", tag_name: "Yoga", tag_type: "activity")
a_tag17 = Tag.create!(sub_category: "Atividade", tag_name: "Musculação", tag_type: "activity")
a_tag18 = Tag.create!(sub_category: "Atividade", tag_name: "Palestra", tag_type: "activity")

puts 'Feito!'

puts 'Criando 10 novas atividades...'

activity1 = Activity.create!(title: "Casa de Chá da Carol", description: "O lugar preferido de quem procura um chá bem diferentão.", address: "Rua Medeiros de Albuquerque, 85, São Paulo", ranking: 2.5, category: "Eat & Drink", image: "https://images.pexels.com/photos/4974504/pexels-photo-4974504.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity1.tags << [a_tag6, a_tag8]
activity1.save

activity2 = Activity.create!(title: "Show de Rock da Nath", description: "Todas as noites este é o lugar para os fans de Nath e Nic.", address: "Rua Harmonia, 337, São Paulo", ranking: 4.9, category: "Events", image: "https://images.pexels.com/photos/7239916/pexels-photo-7239916.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity2.tags << [a_tag11, a_tag7]
activity2.save

activity3 = Activity.create!(title: "Yoga no Parque com Maurício", description: "Todos os sábados! Venha ficar com zen com o mestre Maurício.", address: "Rua Rodésia, 34, São Paulo", ranking: 4.2, category: "To Do", image: "https://images.pexels.com/photos/3822621/pexels-photo-3822621.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity3.tags << [a_tag16]
activity3.save

activity4 = Activity.create!(title: "Churrascada do Pedrinho", description: "O melhor churrasco direto de Vitória, uai!", address: "Rua Purpurina, 170, São Paulo", ranking: 4.5, category: "Eat & Drink", image: "https://images.pexels.com/photos/2491273/pexels-photo-2491273.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity4.tags << [a_tag3, a_tag4, a_tag9]
activity4.save

activity5 = Activity.create!(title: "Festa do Mars", description: "Vai rolar muito exploding kittens.", address: "Rua Rodésia, 34, São Paulo", ranking: 1.0, category: "Events", image: "https://images.pexels.com/photos/1706018/pexels-photo-1706018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity5.tags << [a_tag7, a_tag5, a_tag13, a_tag14]
activity5.save

activity6 = Activity.create!(title: "DemoDay dos Lindos", description: "Apresentação dos projetos do Batch #944!", address: "Rua Jericó, 193, São Paulo", ranking: 4.0, category: "To Do", image: "https://images.pexels.com/photos/276452/pexels-photo-276452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity6.tags << [a_tag18]
activity6.save

activity7 = Activity.create!(title: "Cannoleria do Lucas", description: "O melhor da Itália apenas alguns passos de você!", address: "Rua Original, 173, São Paulo", ranking: 4.7, category: "Eat & Drink", image: "https://images.pexels.com/photos/7474126/pexels-photo-7474126.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity7.tags << [a_tag2, a_tag7, a_tag9]
activity7.save

activity8 = Activity.create!(title: "Batalha dos TikTokers", description: "Pra quem coordenação e nada pra fazer.", address: "Rua Jericó, 15, São Paulo", ranking: 3.7, category: "Events", image: "https://images.pexels.com/photos/2467768/pexels-photo-2467768.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity8.tags << [a_tag14]
activity8.save

activity9 = Activity.create!(title: "Aulão de Crossfit", description: "Com o nosso crossfiteiro Aurélio.", address: "Rua Wisard, 138, São Paulo", ranking: 4.2, category: "To Do", image: "https://images.pexels.com/photos/3289711/pexels-photo-3289711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
activity9.tags << [a_tag17]
activity9.save

activity10 = Activity.create!(title: "Blue Pub", description: "Pub Irlandês raiz com muito chop e música de qualidade. ", address: " Alameda Ribeirão Preto, 384, Bela Vista, São Paulo", ranking: 4.7, category: "Eat & Drink")
activity10.tags << [a_tag11, a_tag4]
activity10.save

puts 'Feito!'

puts 'Criando Wishlist...'

wishlist = Wishlist.create!(title: "Meus Favoritos:", user_id: "1")

puts 'Feito!'