User.create!(first_name:  "Uday",
             email: "udayshah@nerdblock.com",
             password:              "password",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)
User.create!(first_name:  "Cameron Fenton",
            email: "cameronfenton@nerdblock.com",
            password:              "password",
            admin:     true,
            activated: true,
            activated_at: Time.zone.now)
User.create!(first_name:  "Gavin Harris",
             email: "gavinharris@nerdblock.com",
             password:              "password",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)
User.create!(first_name:  "Caleb Blunt",
            email: "calebblunt@nerdblock.com",
            password:              "password",
            admin:     false,
            activated: true,
            activated_at: Time.zone.now)
User.create!(first_name:  "Cory Boasman",
             email: "Cory Boasman@nerdblock.com",
             password:              "password",
             admin:     false,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  first_name  = Faker::first_name.first_name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(first_name:  first_name,
              email: email,
              password:              password,
              activated: true,
              activated_at: Time.zone.now)
end
