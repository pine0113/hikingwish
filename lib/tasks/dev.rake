namespace :dev do


  task all: [:fake_wishes, :fake_plans]

  task fake_users: :environment do
    #User.destroy_all
    3.times do |i|
      name = FFaker::Name::first_name

      user = User.create!(
        name: name,
        email: "#{name}@example.co",
        password: "12345678",      
        role: "user"
      )
    end
    puts "now you have #{User.count} users data"
  end

  task fake_wishes: :environment do
    Wish.destroy_all
    hiking_sample = ["武陵二秀", "嘉明湖", "合歡東峰"]
    100.times do
      endday = Faker::Date.forward(200)
      Wish.create!(
        name:  FFaker::Name.first_name,
        start_date: Faker::Date.between(5.days.ago, endday),
        end_date: endday,
        user_id: User.all.sample.id,
        level: rand(1...5),
        numberofday_id: rand(1...10),
        budget_bottom: rand(1000...5000),
        budget_top: rand(5000...10000),
        hiking_id: Hiking.all.sample.id,
        transport_mode: rand(1...4),
        fee_mode: rand(1...4),
        food_mode: rand(1...3),
        description: FFaker::Lorem::sentence(30)
      )
    end

    4.times do
      wish=Wish.all.sample
      wish.car_list.add("car")
      wish.food_list.add("food1")
    end

    puts 'have created fake wishes'
    puts "now you have #{Wish.count} wishes data"
  end

  task fake_plans: :environment do
    Plan.destroy_all
    100.times do
      endday = Faker::Date.forward(200)
      Plan.create!(
        name:  FFaker::Name.first_name,
        start_date: Faker::Date.between(100.days.ago, endday),
        end_date: endday,
        owner_id: User.all.sample.id,
        level: rand(1...5),
        numberofday_id: rand(1...10),
        hiking_id: Hiking.all.sample.id,
        budget_bottom: rand(20000),
        budget_top: rand(5000...10000),
        transport_mode: rand(1...3),
        fee_mode: rand(1...3),
        food_mode: rand(1...3)
      )
    end

    puts 'have created fake plans'
    puts "now you have #{Plan.count} plans data"
  end

end