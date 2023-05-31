# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   products = Product.create([{ name: "Formal Cloth", brand: 'Uniworth', price:'55000' },
#   { name: "Formal Cloth", brand: 'J.', price:'5000' },
#   { name: "Formal Cloth", brand: 'Outffiter', price:'59000' },
#   { name: "Formal Cloth", brand: 'ONES', price:'44000' },
#   { name: "Formal Cloth", brand: 'Charcol', price:'8000' },
# ])
require 'faker'
I18n.reload!
# create products
5.times do
Product.create
({
        name:  Faker::Name.name,
        brand: Faker::Book.brand,
        price: Faker::Price.price
})
end