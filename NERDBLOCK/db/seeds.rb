User.create!(name:  "Uday Shah",
             email: "udayshah@nerdblock.com",
             password:              "password",
             password_confirmation: "password",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "Cameron Fenton",
            email: "cameronfenton@nerdblock.com",
            password:              "password",
            password_confirmation: "password",
            admin:     true,
            activated: true,
            activated_at: Time.zone.now)
User.create!(name:  "Gavin Harris",
             email: "gavinharris@nerdblock.com",
             password:              "password",
             password_confirmation: "password",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "Caleb Blunt",
            email: "calebblunt@nerdblock.com",
            password:              "password",
            password_confirmation: "password",
            admin:     false,
            activated: true,
            activated_at: Time.zone.now)
User.create!(name:  "Cory Boasman",
             email: "Cory Boasman@nerdblock.com",
             password:              "password",
             password_confirmation: "password",
             admin:     false,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end