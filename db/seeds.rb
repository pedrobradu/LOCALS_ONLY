# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Tag.destroy_all
Wishlist.destroy_all
LinkedTag.destroy_all
Chatroom.destroy_all
Activity.destroy_all
User.destroy_all


Chatroom.create(name: "general")

puts 'Criando 20 novas tags de user...'

u_tag1 = Tag.create!(sub_category: "Status Civil", tag_name: "Solteiro", tag_type: "user")
u_tag2 = Tag.create!(sub_category: "Status Civil", tag_name: "Casado", tag_type: "user")
u_tag3 = Tag.create!(sub_category: "Filhos", tag_name: "Com filho", tag_type: "user")
u_tag4 = Tag.create!(sub_category: "Filhos", tag_name: "Sem filho", tag_type: "user")
u_tag5 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Aventura", tag_type: "user")
u_tag7 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Sossego", tag_type: "user")
u_tag6 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Balada", tag_type: "user")
u_tag8 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Foodie", tag_type: "user")
u_tag9 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Dono de pet", tag_type: "user")
u_tag10 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Natureza", tag_type: "user")
u_tag11 = Tag.create!(sub_category: "Status Civil", tag_name: "Namorando", tag_type: "user")
u_tag12 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Saúde", tag_type: "user")
u_tag13 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Urbano", tag_type: "user")
u_tag14 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Curioso", tag_type: "user")
u_tag15 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Cultura", tag_type: "user")
u_tag16 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Música", tag_type: "user")
u_tag17 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Gamer", tag_type: "user")
u_tag18 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Econômico", tag_type: "user")
u_tag19 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Luxo", tag_type: "user")
u_tag20 = Tag.create!(sub_category: "Estilo de Vida", tag_name: "Custo/Benefício", tag_type: "user")

puts 'Feito!'

puts 'Criando 8 novos users...'

user1 = User.create!(email: "wagner@gmail.com", password: "123123", name: "Wagner Nogueira", address: "Rua João Lira, 39, Rio de Janeiro", birth_date: "1985/01/30", image: "wagner.jpg", state: "Rio de Janeiro")
user1.tags << [u_tag1, u_tag4, u_tag8, u_tag9, u_tag17, u_tag16]
user1.save

user2 = User.create!(email: "pedro@gmail.com", password: "123123", name: "Pedro Duarte", address: "Rua Ipero, 47, São Paulo", birth_date: "30/01/1993", image: "pedro.jpg", state: "São Paulo")
user2.tags << [u_tag1, u_tag4, u_tag8, u_tag10, u_tag17, u_tag16]
user2.save

user3 = User.create!(email: "mauricio@gmail.com", password: "123123", name: "Maurício Poças", address: "Rua Ipero, 47, São Paulo", birth_date: "05/04/1992", image: "mauricio.jpg", state: "São Paulo")
user3.tags << [u_tag2, u_tag4, u_tag7, u_tag15]
user3.save

user4 = User.create!(email: "ronaldinho@gmail.com", password: "123123", name: "Ronaldinho Gaúcho", address: "Rua Ipero, 47, São Paulo", birth_date: "21/03/1980", image: "ronaldinho.jpg", state: "São Paulo")
user4.tags << [u_tag2, u_tag3, u_tag8, u_tag14]
user4.save

user5 = User.create!(email: "lucas@gmail.com", password: "123123", name: "Lucas Turra", address: "Rua Ipero, 47, São Paulo", birth_date: "27/03/1996", image: "lucas.jpg", state: "São Paulo")
user5.tags << [u_tag2, u_tag10, u_tag5, u_tag18]
user5.save

user6 = User.create!(email: "marcio@gmail.com", password: "123123", name: "Márcio Pinho", address: "Rua Ipero, 47, São Paulo", birth_date: "27/03/1987", image: "marcio.jpg", state: "São Paulo")
user6.tags << [u_tag2, u_tag4, u_tag8, u_tag14]
user6.save

user7 = User.create!(email: "barbara@gmail.com", password: "123123", name: "Bárbara Soares", address: "Rua Ipero, 47, São Paulo", birth_date: "10/09/1990", image: "barbara.jpg", state: "São Paulo")
user7.tags << [u_tag1, u_tag4, u_tag8, u_tag11]
user7.save

user8 = User.create!(email: "juliana@gmail.com", password: "123123", name: "Juliana Bonardi", address: "Rua Ipero, 47, São Paulo", birth_date: "28/10/1990", image: "juliana.jpg", state: "São Paulo")
user8.tags << [u_tag1, u_tag4, u_tag8, u_tag10, u_tag17, u_tag14]
user8.save


puts 'Criando 37 novas tags de activity...'

a_tag1 = Tag.create!(sub_category: "Restaurante", tag_name: "Japonês", tag_type: "activity")
a_tag2 = Tag.create!(sub_category: "Restaurante", tag_name: "Italiano", tag_type: "activity")
a_tag3 = Tag.create!(sub_category: "Restaurante", tag_name: "Carne", tag_type: "activity")
a_tag4 = Tag.create!(sub_category: "Bar", tag_name: "Cerveja", tag_type: "activity")
a_tag5 = Tag.create!(sub_category: "Bar", tag_name: "Drinks", tag_type: "activity")
a_tag6 = Tag.create!(sub_category: "Bar", tag_name: "Café", tag_type: "activity")
a_tag7 = Tag.create!(sub_category: "Estilo", tag_name: "Amigos", tag_type: "activity")
a_tag8 = Tag.create!(sub_category: "Estilo", tag_name: "Romântico", tag_type: "activity")
a_tag9 = Tag.create!(sub_category: "Estilo", tag_name: "Família", tag_type: "activity")
a_tag10 = Tag.create!(sub_category: "Estilo", tag_name: "Pet-Friendly", tag_type: "activity")
a_tag11 = Tag.create!(sub_category: "Música", tag_name: "Rock", tag_type: "activity")
a_tag12 = Tag.create!(sub_category: "Música", tag_name: "Sertanejo", tag_type: "activity")
a_tag13 = Tag.create!(sub_category: "Música", tag_name: "Samba", tag_type: "activity")
a_tag14 = Tag.create!(sub_category: "Atividade", tag_name: "Dança", tag_type: "activity")
a_tag15 = Tag.create!(sub_category: "Atividade", tag_name: "Trilha", tag_type: "activity")
a_tag16 = Tag.create!(sub_category: "Atividade", tag_name: "Yoga", tag_type: "activity")
a_tag17 = Tag.create!(sub_category: "Atividade", tag_name: "Musculação", tag_type: "activity")
a_tag18 = Tag.create!(sub_category: "Atividade", tag_name: "Palestra", tag_type: "activity")
a_tag19 = Tag.create!(sub_category: "Restaurante", tag_name: "Brasileira", tag_type: "activity")
a_tag20 = Tag.create!(sub_category: "Atividade", tag_name: "Videogame", tag_type: "activity")
a_tag21 = Tag.create!(sub_category: "Bar", tag_name: "Chá", tag_type: "activity")
a_tag22 = Tag.create!(sub_category: "Ambiente", tag_name: "Praia", tag_type: "activity")
a_tag23 = Tag.create!(sub_category: "Ambiente", tag_name: "Cidade", tag_type: "activity")
a_tag24 = Tag.create!(sub_category: "Ambiente", tag_name: "Montanha", tag_type: "activity")
a_tag25 = Tag.create!(sub_category: "Ambiente", tag_name: "Fechado", tag_type: "activity")
a_tag26 = Tag.create!(sub_category: "Ambiente", tag_name: "Ao ar livre", tag_type: "activity")
a_tag27 = Tag.create!(sub_category: "Restaurante", tag_name: "Hamburguer", tag_type: "activity")
a_tag28 = Tag.create!(sub_category: "Restaurante", tag_name: "Salada", tag_type: "activity")
a_tag29 = Tag.create!(sub_category: "Restaurante", tag_name: "Vegano", tag_type: "activity")
a_tag30 = Tag.create!(sub_category: "Restaurante", tag_name: "Contemporâneo", tag_type: "activity")
a_tag31 = Tag.create!(sub_category: "Restaurante", tag_name: "Doces", tag_type: "activity")
a_tag32 = Tag.create!(sub_category: "Música", tag_name: "Pagode", tag_type: "activity")
a_tag33 = Tag.create!(sub_category: "Música", tag_name: "Eletrônica", tag_type: "activity")
a_tag34 = Tag.create!(sub_category: "Melhor horário", tag_name: "Manhã", tag_type: "activity")
a_tag36 = Tag.create!(sub_category: "Melhor horário", tag_name: "Tarde", tag_type: "activity")
a_tag37 = Tag.create!(sub_category: "Melhor horário", tag_name: "Noite", tag_type: "activity")


puts 'Feito!'

puts 'Criando 10 novas atividades...'

activity1 = Activity.create!(title: "Bar do Julinho", description: "Sambinha bom todas as sextas-feiras.", address: "Rua Mourato Coelho, 585, São Paulo", category: "Comer & Beber")
activity1.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/julinho.jpg')),
  filename: 'julinho.jpg',
  content_type: 'image/png'
)
activity1.tags << [a_tag10, a_tag7, a_tag13]
activity1.save

activity2 = Activity.create!(title: "Festival da IPA", description: "Muita cerveja, churrasco e música pra celebrar os IPA lovers.", address: "Rua Harmonia, 337, São Paulo", category: "Eventos")
activity2.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/lagunitas.jpg')),
  filename: 'lagunitas.jpg',
  content_type: 'image/png'
)
activity2.tags << [a_tag9, a_tag7, a_tag4, a_tag26]
activity2.save

activity3 = Activity.create!(title: "Web Development Demo Day", description: "Apresentação dos projetos finais do batch #944/946 da Le Wagon!", address: "Rua Coronel Oscar Porto, 70, São Paulo", category: "O Que Fazer")
activity3.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/demo.jpg')),
  filename: 'demo.jpg',
  content_type: 'image/png'
)
activity3.tags << [a_tag18]
activity3.save

activity4 = Activity.create!(title: "Cuscuz da Irina", description: "Comida nordestina e drinks autorais pelas mãos de uma chef também nordestina.", address: "Rua Ipero, 47, São Paulo", category: "Comer & Beber")
activity4.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/cuscuz.jpg')),
  filename: 'cuscuz.jpg',
  content_type: 'image/png'
)
activity4.tags << [a_tag5, a_tag19]
activity4.save

activity5 = Activity.create!(title: "Encontro de Cachorros", description: "Com adestramento gratuito, atividades para os pets e degustação de petiscos.", address: "Rua Guarará, 108, São Paulo", category: "Eventos")
activity5.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/pets.jpg')),
  filename: 'pets.jpg',
  content_type: 'image/png'
)
activity5.tags << [a_tag9, a_tag10, a_tag26]
activity5.save

activity6 = Activity.create!(title: "Curso de Barista", description: "Ministrado pelo mestre Juca Esmanhoto.", address: "Rua Girassol, 273, São Paulo", category: "O Que Fazer")
activity6.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/juca.jpg')),
  filename: 'juca.jpg',
  content_type: 'image/png'
)
activity6.tags << [a_tag18, a_tag6]
activity6.save

activity7 = Activity.create!(title: "Cannoleria do Calimano", description: "O melhor café com cannoli, direto da Sicília.", address: "Rua Original, 173, São Paulo", category: "Comer & Beber")
activity7.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/cannoli.jpg')),
  filename: 'cannoli.jpg',
  content_type: 'image/png'
)
activity7.tags << [a_tag2, a_tag7, a_tag9, a_tag6]
activity7.save

activity8 = Activity.create!(title: "Festival Anos 60", description: "Competição de dança, muito rock e exposição de carros antigos.", address: "Rua Thomaz Gonzaga, 66, São Paulo", category: "Eventos")
activity8.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/danca.jpg')),
  filename: 'danca.jpg',
  content_type: 'image/png'
)
activity8.tags << [a_tag14, a_tag11, a_tag10]
activity8.save

activity9 = Activity.create!(title: "Yoga no Parque Augusta", description: "Prática vai ser ministrada pelo mestre indiano Aurélio.", address: "Rua Augusta, 200, São Paulo", category: "O Que Fazer")
activity9.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/yoga.jpg')),
  filename: 'yoga.jpg',
  content_type: 'image/png'
)
activity9.tags << [a_tag16, a_tag26, a_tag34]
activity9.save

activity10 = Activity.create!(title: "Corrida Mario Kart", description: "Competição de corrida pra quem cresceu jogando Nintendo e é fã do encanador.", address: "Av Paulista, 1313, São Paulo", category: "O Que Fazer")
activity10.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/mario.jpg')),
  filename: 'mario.jpg',
  content_type: 'image/png'
)
activity10.tags << [a_tag20, a_tag7]
activity10.save

activity11 = Activity.create!(title: "Izakaya San", description: "Petiscos japoneses com drinks autorais.", address: "Rua Guaicuí, 33, São Paulo", category: "Comer & Beber")
activity11.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/sushi.jpg')),
  filename: 'sushi.jpg',
  content_type: 'image/png'
)
activity11.tags << [a_tag1,a_tag5, a_tag30, a_tag37]
activity11.save

activity12 = Activity.create!(title: "Trilha na Serra", description: "Trilha leve para iniciantes.", address: "Rua Francisco Leitão, 77, São Paulo", category: "O Que Fazer")
activity12.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/trilha.jpg')),
  filename: 'trilha.jpg',
  content_type: 'image/png'
)
activity12.tags << [a_tag15, a_tag24, a_tag26, a_tag34]
activity12.save

puts 'Feito!'

puts 'Criando Wishlist...'

Wishlist.create!(title: "Meus Favoritos:", user_id: user1.id)
Wishlist.create!(title: "Meus Favoritos:", user_id: user2.id)

puts 'Feito!'
