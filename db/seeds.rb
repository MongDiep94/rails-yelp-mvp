puts "Cleaning database..."
Restaurant.destroy_all

5.times do
  category = ["chinese", "italian", "japanese", "french", "belgian"]
  Restaurant.create(name: Faker::Book.title,
                    address: Faker::Address.full_address,
                    category: category[rand(0..5)])
end
