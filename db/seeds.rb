# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

companies = Company.create([
    {
        name:"McDonalds",
        image_url:"https://raw.githubusercontent.com/alexander-brandao/like/main/app/assets/images/mcdonalds.png"
    },

    {
        name:"Apple",
        image_url:"https://raw.githubusercontent.com/alexander-brandao/like/main/app/assets/images/apple.png"
    },

    {
        name:"Peugeot",
        image_url:"https://raw.githubusercontent.com/alexander-brandao/like/main/app/assets/images/Peugeot.jpg"
    },

    {
        name:"Rota-250",
        image_url:"https://github.com/alexander-brandao/like/blob/main/app/assets/images/pizza.png"
    },

    {
        name:"JI Utilidades",
        image_url:"https://raw.githubusercontent.com/alexander-brandao/like/main/app/assets/images/ji-logo.jpg"
    }    

])

review = Review.create([
    
    {
    title: 'Otimo servico',
    description: 'Otimo atendimento',
    score: 5,
    company: companies.first
    },

    {
        title: 'otima comida',
        description: 'gostoso',
        score: 3,
        company: companies.first

    }
])