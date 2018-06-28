# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Review.destroy_all
#  Category.destroy_all
  Dog.destroy_all
  User.destroy_all
  Walk.destroy_all


  userAndreia = User.create!(
  email:"andreiadomingues@gmail.com",
  password:"123456",
  firstname:"Andreia",
  lastname: "Domingues",
  # remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135116/Le_Wagon_18.04.27_039.jpg",
  address_line1: "Rua Moeda 7",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  userJerome = User.create!(
  email:"jerome.dharveng@hotmail.com",
  password:"123456",
  firstname:"Jerome",
  lastname: "Harveng",
  #remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/v1527684917/image_2.png",
  address_line1: "Rua Moeda 7",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  userPedro = User.create!(
  email:"pedromarzagao@gmail.com",
  password:"123456",
  firstname:"Pedro",
  lastname: "Marzagão",
  #remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/v1527683243/Pedro_Headshot_2.jpg",
  address_line1: "Rua Senhora da Glória 104",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  userMarta = User.create!(
  email:"marta.keller.pie@gmail.com",
  password:"123456",
  firstname:"Marta",
  lastname: "Keller",
  #remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/v1527683260/8GaEWuxK_400x400.jpg",
  address_line1: "Rua Moeda 7",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  userEmily = User.create!(
  email:"emily@gmail.com",
  password:"123456",
  firstname:"Emily",
  lastname: "Burns",
  #remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135035/Le_Wagon_18.04.27_064.jpg",
  address_line1: "Rua Constantino Fernandes 2 ",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  userSwen = User.create!(
  email:"swen@gmail.com",
  password:"123456",
  firstname:"Swen",
  lastname: "Kunzel",
  #remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135086/Le_Wagon_18.04.27_016.jpg",
  address_line1: "Rua Manuel Marques 15",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  userAntoine = User.create!(
  email:"antoine@gmail.com",
  password:"123456",
  firstname:"Antoine",
  lastname: "Quellier",
  #remote_picture_url: "https://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135017/Le_Wagon_18.04.27_045.jpg",
  address_line1: "Rua da Misericordia 15",
  address_city: "Lisboa",
  address_country: "Portugal"
  )

  puts 'Users created'

# ////////////////////////////////////////////////

dogHatchiko = Dog.create!(
  name: "Hatchiko",
  breed: "Akita Inu",
  sex: "Female",
  age: 5,
  bio: "I'm 5 years old, love being lazy and therefore sleep big part of the day. But I love to have a walk too. Will we have a walk together ?",
  user: userJerome
  )

dogRex = Dog.create!(
  name: "Rex",
  breed: "German shepherd",
  sex: "Male",
  age: 3,
  bio: "I'm 3 years old, love going outside and I'm quite clever, to understand my human friends. Will we have a walk together ?",
  user: userEmily
  )


dogWhite = Dog.create!(
  name: "White Fang",
  breed: "Husky",
  sex: "Male",
  age: 4,
  bio: "I'm 4 years old, love run outside and run attached to the bike of my parents. Often I try to discover now horizons myself. So it's important, always walk with my leash Will we have a run together ?",
  user: userAntoine
  )

puts 'Dogs Created'

# ////////////////////////////////////////////////

 walk1 = Walk.create!(
  startdate: '15-06-2018',
  startime: '12:00:00',
  duration: 60,
  user: userSwen,
  dog: dogHatchiko
  )

  walk2 = Walk.create!(
  startdate: '19-06-2018',
  startime: '16:00:00',
  duration: 60,
  user: userMarta,
  dog: dogRex
  )

  walk3 = Walk.create!(
  startdate: '19-07-2018',
  startime: '12:30:00',
  duration: 60,
  user: userJerome,
  dog: dogWhite
  )



 puts 'Walks created'




