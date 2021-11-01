User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinTableGossipTag.destroy_all

15.times do
	City.create(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code)
end

10.times do
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::GreekPhilosophers.quote,
		email: Faker::Internet.email,
		age: rand(18..100),
		city: City.all.sample)
end

5.times do
	Tag.create(title: Faker::Company.type)
end

15.times do
	Gossip.create(
		title: Faker::Movies::Hobbit.location,
		content: Faker::Movies::Hobbit.quote,
		user: User.all.sample)
end
