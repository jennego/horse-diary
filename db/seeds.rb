# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PASSWORD = 'testing'

User.destroy_all
Horse.destroy_all
Post.destroy_all
Log.destroy_all
Reminder.destroy_all

super_user = User.create(
  first_name: 'Jen',
  last_name: 'Chow',
  email: 'jen@jen.ca',
  password: PASSWORD,
)

10.times.each do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
    password: PASSWORD
  )
end

users = User.all

horse_names = ['Dobbin', 'Star', 'Moonie', 'Sprit', 'Black Beauty', 'Flicka', 'Sonnet']
fancy_horse_names = ['Dream Weaver', 'Full Fathom Five', 'Moneybags', 'Gambling Chance', 'Unfinished Bussiness']
breeds = ['Fancy Pants Warmblood', 'Quarter Horse', 'Paint', 'Fjord', 'Thoroughbred', 'Appaloosa', 'Arab']
sex = ['mare', 'gelding']
colours = ['bay', 'black', 'palomino', 'chestnut', 'dapple grey', 'flaxen chestnut', 'bucksin']

5.times.each do
  Horse.create(
    name: horse_names.sample,
    full_name: fancy_horse_names.sample,
    show_name: fancy_horse_names.sample,
    reg_name: fancy_horse_names.sample,
    breed:breeds.sample,
    color: colours.sample,
    sex: sex.sample,
    user: users.sample
  )
end

horses = Horse.all

20.times.each do
  Post.create(
    date: Faker::Date.between(60.days.ago, Date.today),
    horse: horses.sample,
    user: users.sample,
    category: Category.all.sample
  )
end

posts = Post.all

example_logs ["horse is crazy", 'horse is lazy', 'has a random cut', 'blanket is broken', 'did not seem very sound today', 'nearly excaped from me', 'lost shoe and I cannot find it']

20.times.each do
  Log.create(
    date: Faker::Date.between(20.days.ago, Date.today),
    horse: horses.sample,
    user: users.sample,
    body: example_logs.sample 
  )
end

sample_reminders = ['vet', 'farrier', 'lesson', 'trainer', 'order more hay', 'buy more grain', 'buy apples', 'repair fence', 'repair blanket']

20.times.each do
  Reminder.create(
    date: Faker::Time.forward(23, :all),
    body: sample_reminders.sample,
    user: users.sample,
  )
end




puts "it worked. Maybe."
