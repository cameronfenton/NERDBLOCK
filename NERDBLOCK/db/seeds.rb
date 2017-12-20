User.create!(first_name: "Uday",
             last_name: "Shah",
             email: "udayshah@nerdblock.com",
             password: "password",
             userType: 'A',
             activated: true,
             activated_at: Time.zone.now)
User.create!(first_name: "Cameron",
             last_name: "Fenton",
            email: "cameronfenton@nerdblock.com",
            password: "password",
            userType: 'A',
            activated: true,
            activated_at: Time.zone.now)
User.create!(first_name: "Gavin",
             last_name: "Harris",
             email: "gavinharris@nerdblock.com",
             password: "password",
             userType: 'A',
             activated: true,
             activated_at: Time.zone.now)
User.create!(first_name: "Caleb",
             last_name: "Blunt",
            email: "calebblunt@nerdblock.com",
            password: "password",
            userType: 'S',
            activated: true,
            activated_at: Time.zone.now)
User.create!(first_name: "Cory",
             last_name: "Boasman",
             email: "coryboasman@nerdblock.com",
             password: "password",
             userType: 'S',
             activated: true,
             activated_at: Time.zone.now)

 # name = full_name.split(' ')
 # puts "Your first name is #{name.first}"
 # puts "Your last name is #{name.last}"

99.times do |n|
  full_name = Faker::Name.name.split(" ")
  first_name  = full_name.first
  last_name = full_name.last
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(first_name: first_name,
               last_name: last_name,
               email: email,
               password: password,
               userType: 'C',
               activated: true,
               activated_at: Time.zone.now)
end
