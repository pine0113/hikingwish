# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Users
User.destroy_all
  User.create(name:"pine0113",email: "pine0113@gmail.com", password: "12345678", role: "admin")
  User.create(name:"admin",email: "admin@example.com", password: "12345678", role: "admin")
  User.create(name:"user",email: "user@example.com", password: "12345678", role: "user")
  
puts "Default users created!"


Plan.destroy_all

  Plan.create(name: "嘉明湖新手上路團", image: "1", start_date: "2018-11-10", end_date: "2018-11-12", budget_final:7200, level:3, day: 72, miles: 20,intro: "",join_count: 0,owner_id: User.first.id)
  Plan.create(name: "玉山新手團", image: "2", start_date: "2018-11-06", end_date: "2018-11-07", budget_final:7200, level:3, day: 48, miles: 20,intro: "",join_count: 0,owner_id: User.first.id)

puts "Default Plan created!"


Hiking.destroy_all
  Hiking.create( name:"武稜一秀", level: 3, day: 72, miles: 10,  intro:"this is really wierld")
  Hiking.create( name:"武稜二秀", level: 3, day: 72, miles: 10,  intro:"this is really wierld")
  Hiking.create( name:"武稜三秀", level: 3, day: 72, miles: 10,  intro:"this is really wierld")
  Hiking.create( name:"武稜四秀", level: 3, day: 72, miles: 10,  intro:"this is really wierld")
  Hiking.create( name:"武稜五秀", level: 3, day: 72, miles: 10,  intro:"this is really wierld")

puts "Default Hiking created!"


PlanMemberApply.destroy_all
PlanOwnerInvite.destroy_all
PlanMember.destroy_all