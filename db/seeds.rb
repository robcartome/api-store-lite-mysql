# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ferreteria = Category.create({
                               name: 'Ferreteria'
                             })

5.times do
  Category.create({
                    name: Faker::Commerce.department
                  })
end

ferreteria.products.create(
  name: 'Mochila de herramientas',
  url_image: 'https://res.cloudinary.com/robcar/image/upload/v1613786249/samples/ecommerce/leather-bag-gray.jpg',
  price: Faker::Commerce.price,
  discount: Faker::Commerce.price(range: 0..10)
)

ferreteria.products.create(
  name: 'Clavo C/C de 2',

  price: Faker::Commerce.price,
  discount: Faker::Commerce.price(range: 0..10)
)

category2 = Category.find(2)

2.times do
  category2.products.create(
    name: Faker::Commerce.product_name,
    url_image: 'https://res.cloudinary.com/robcar/image/upload/v1613786197/samples/ecommerce/shoes.png',
    price: Faker::Commerce.price,
    discount: Faker::Commerce.price(range: 0..10)
  )
end

category4 = Category.find(4)

3.times do
  category4.products.create(
    name: Faker::Commerce.product_name,
    url_image: 'https://res.cloudinary.com/robcar/image/upload/v1620602605/api-store/api-pc.png',
    price: Faker::Commerce.price,
    discount: Faker::Commerce.price(range: 0..10)
  )
end

3.times do
  category2.products.create(
    name: Faker::Commerce.product_name,
    url_image: 'https://res.cloudinary.com/robcar/image/upload/v1620603201/api-store/api-sound.jpg',
    price: Faker::Commerce.price,
    discount: Faker::Commerce.price(range: 0..10)
  )
end

category5 = Category.find(5)

2.times do
  category5.products.create(
    name: Faker::Commerce.product_name,
    url_image: 'https://res.cloudinary.com/robcar/image/upload/v1620602605/api-store/api-latas.png',
    price: Faker::Commerce.price,
    discount: Faker::Commerce.price(range: 0..10)
  )
end

2.times do
  category5.products.create(
    name: Faker::Commerce.product_name,
    url_image: '',
    price: Faker::Commerce.price,
    discount: Faker::Commerce.price(range: 0..10)
  )
end
