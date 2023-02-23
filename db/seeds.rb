puts "starting seed..."

puts "cleaning db..."
Pet.destroy_all

puts "creating pets..."

20.times do
  Pet.create(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today),
    species: Pet::SPECIES.sample
  )
end

puts "#{Pet.count} pets created!"
