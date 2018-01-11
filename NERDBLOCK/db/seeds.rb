Address.create!(apt_number: "1",
               building_number: "1",
               street: "123 street street",
               city: "Oshawa",
               province: "Ontario",
               postal_code: "A1B2C3",
               created_at: Time.zone.now,
               updated_at: Time.zone.now)

User.create!(first_name: "Uday",
             last_name: "Shah",
             email: "udayshah@nerdblock.com",
             password: "password",
             userType: 'A',
             activated: true,
             activated_at: Time.zone.now)
User.create!(first_name: "Cameron",
             last_name: "Fenton",
            email: "fentoncameron@gmail.com",
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

Genre.create!(genre_name: "Horror",
              genre_description: "A NERDBLOCK of lots of scary horror themed
              items, beware of this NERDBLOCK",
              created_at: Time.zone.now,
              updated_at: Time.zone.now)

Item.create!(genre_id: 1,
            item_name: "Skeleton Mask",
            item_price: 19,
            created_at: Time.zone.now,
            updated_at: Time.zone.now)



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
