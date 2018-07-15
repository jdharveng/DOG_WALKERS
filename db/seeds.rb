# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Review.destroy_all
#  Category.destroy_all
  Chat.destroy_all
  Dog.destroy_all
  User.destroy_all
  Walk.destroy_all



  userAndreia = User.create!(
  email:"andreiadomingues@gmail.com",
  password:"123456",
  firstname:"Andreia",
  lastname: "Domingues",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530260897/Andreia.jpg",
  address_line1: "Rua Moeda 7",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Moeda 7,Lisboa Portugal"
  )

  userJerome = User.create!(
  email:"jerome.dharveng@hotmail.com",
  password:"123456",
  firstname:"Jerome",
  lastname: "Harveng",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530260881/Le_Wagon_18.04.27_067.jpg",
  address_line1: "Rua Moeda 7",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Moeda 7, Lisboa Portugal"
  )

  userPedro = User.create!(
  email:"pedromarzagao@gmail.com",
  password:"123456",
  firstname:"Pedro",
  lastname: "Marzagão",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530260887/Pedro.jpg",
  address_line1: "Rua Senhora da Glória 104",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Senhora da Glória 104, Lisboa Portugal"
  )

  userMarta = User.create!(
  email:"marta.keller.pie@gmail.com",
  password:"123456",
  firstname:"Marta",
  lastname: "Keller",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530260891/Marta.jpg",
  address_line1: "Rua Moeda 1",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Moeda 1, Lisboa Portugal"
  )

  userEmily = User.create!(
  email:"emily@gmail.com",
  password:"123456",
  firstname:"Emily",
  lastname: "Burns",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530262402/Emily.jpg",
  address_line1: "Rua Constantino Fernandes 2 ",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Constantino Fernandes 2, Lisboa Portugal"
  )

  userSwen = User.create!(
  email:"swen@gmail.com",
  password:"123456",
  firstname:"Swen",
  lastname: "Kunzel",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530260889/Swen.jpg",
  address_line1: "Rua Manuel Marques 15",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Manuel Marques 15, Lisboa Portugal"
  )

  userAntoine = User.create!(
  email:"antoine@gmail.com",
  password:"123456",
  firstname:"Antoine",
  lastname: "Quellier",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530262579/Antoine.jpg",
  address_line1: "Rua da Misericordia 15",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua da Misericordia 15, Lisboa Portugal"
  )


  userDavid = User.create!(
  email:"david@gmail.com",
  password:"123456",
  firstname:"David",
  lastname: "Zwage",
  remote_picture_url: "https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530260898/David.jpg",
  address_line1: "Rua Moeda 10",
  address_city: "Lisboa",
  address_country: "Portugal",
  address: "Rua Moeda 10, Lisboa Portugal"
  )

  puts 'Users created'

# ////////////////////////////////////////////////

dogHatchiko = Dog.create!(
  name: "Hatchi",
  breed: "Akita Inu",
  sex: "Female",
  age: 5,
  hourly_price: 10,
  bio: "I'm 5 years old, love being lazy and therefore sleep big part of the day. But I love to have a walk too. Will we have a walk together ?",
  user: userJerome,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268753/DogWalker/Akita.jpg"
  )

dogRex = Dog.create!(
  name: "Rex",
  breed: "German shepherd",
  sex: "Male",
  age: 3,
  hourly_price: 5,
  bio: "I'm 3 years old, love going outside and I'm quite clever, to understand my human friends. Will we have a walk together ?",
  user: userEmily,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268753/DogWalker/German_shepherd.jpg"
  )


dogWhite = Dog.create!(
  name: "White Fang",
  breed: "Husky",
  sex: "Male",
  age: 4,
  hourly_price: 5,
  bio: "I'm 4 years old, love run outside and run attached to the bike of my parents. Often I try to discover now horizons myself. So it's important, always walk with my leash Will we have a run together ?",
  user: userAntoine,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268744/DogWalker/Husky.jpg"
  )

dogRocky = Dog.create!(
  name: "Rocky",
  breed: "Jack Russel",
  sex: "Male",
  age: 7,
  hourly_price: 5,
  bio: "I'm 7 years old, I enjoy long walks near to my home. Will we have a walk together ?",
  user: userSwen,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268821/DogWalker/JackRusselTerrier.jpg"
  )

dogHarley = Dog.create!(
  name: "Harley",
  breed: "Dalmatian",
  sex: "Male",
  age: 7,
  hourly_price: 5,
  bio: "I'm 2 years old, I'm pretty and I know it ;). I love running in the woods. Will we have a walk together ?",
  user: userDavid,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268752/DogWalker/Dalmatian.jpg"
  )

dogSam = Dog.create!(
  name: "Sam",
  breed: "Labrador",
  sex: "Male",
  age: 8,
  hourly_price: 5,
  bio: "I'm 8 years old, even if I'm not that young anymore, I still love the fresh air of nice walks. I love running in the woods. Will we have a walk together ?",
  user: userMarta,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268791/DogWalker/Labrador.jpg"
  )

dogMolly = Dog.create!(
  name: "Molly",
  breed: "Beagle",
  sex: "Female",
  age: 1,
  hourly_price: 5,
  bio: "I'm 1 years old, I'm small and cute. I love playing around during a walk. Will we have a walk together ?",
  user: userMarta,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268760/DogWalker/Beagle.jpg"
  )

dogOscar = Dog.create!(
  name: "Oscar",
  breed: "Mastiff",
  sex: "Male",
  age: 6,
  hourly_price: 15,
  bio: " Even if I look like a bear, I'm as nice as a Teddy one. I enjoy looking around while walking with my friends.  Will we have a walk together ?",
  user: userSwen,
  remote_picture_url:"https://res.cloudinary.com/dcqlq9kjf/image/upload/v1530268941/DogWalker/Mastiff.jpg"
  )




puts 'Dogs Created'

# ////////////////////////////////////////////////

 walk1 = Walk.create!(
  date_begin: '15-06-2018',
  startime: '12:00:00',
  duration: 60,
  user: userSwen,
  dog: dogHatchiko
  )

  walk2 = Walk.create!(
  date_begin: '19-06-2018',
  startime: '16:00:00',
  duration: 60,
  user: userMarta,
  dog: dogRex
  )

  walk3 = Walk.create!(
  date_begin: '19-07-2018',
  startime: '12:30:00',
  duration: 60,
  user: userJerome,
  dog: dogWhite
  )



 puts 'Walks created'


 # /////////////////////////////////////////////////

 ch1 = Chat.create(sender_id: userJerome.id, recipient_id:userSwen.id);
 ch2 = Chat.create(sender_id:userJerome.id, recipient_id: userPedro.id );
 ch3 = Chat.create(sender_id:userJerome.id, recipient_id: userDavid.id );
 ch4 = Chat.create(sender_id:userJerome.id, recipient_id: userMarta.id );

 msg1 = Message.create(body: "Hoy Swen", user_id: userJerome.id, chat_id: ch1.id);
 msg2 = Message.create(body: "How are you?", user_id: userJerome.id, chat_id: ch1.id);
 msg3 = Message.create(body: "Fine Jé, what are you doing?", user_id: userSwen.id, chat_id: ch1.id);
 msg4 = Message.create(body: "Hello Pedro?", user_id: userJerome.id, chat_id: ch2.id);
 msg5 = Message.create(body: "Did you watch the match?", user_id: userPedro.id, chat_id: ch2.id);
 msg6 = Message.create(body: "Hoi David?", user_id: userDavid.id, chat_id: ch3.id);
 msg7 = Message.create(body: "Hoi Marta?", user_id: userMarta.id, chat_id: ch4.id);


 puts 'Chats and messages created'




