Tag.delete_all
JoinTableGossipTag.delete_all
User.delete_all
City.delete_all
Gossip.delete_all

15.times do
	City.create(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code)
end

10.times do
	user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::GreekPhilosophers.quote,
		email: Faker::Internet.email,
		age: rand(18..80),
		city: City.all.sample,
		password: Faker::Internet.password)
end

5.times do
	Tag.create(title: Faker::Company.type)
end

10.times do
	Gossip.create(
		title: Faker::Movies::Hobbit.location,
		content: Faker::Movies::Hobbit.quote,
		user: User.all.sample)
end

User.create(first_name: "Jean", last_name: "Dupont", description: "oui", email: "jeandupont@gmail.com", password:"1234")
