# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

role = Role.new
role.name = "superadmin"
role.save

role = Role.new
role.name = "admin"
role.save

role = Role.new
role.name = "member"
role.save

user = User.new
user.attendnumber = 0
user.number = "00-000"
user.name = "管理者"
user.email = "hoge@gmail.com"
user.password = "hogehogehoge"
role = Role.where(name: 'superadmin')
user.roles << role
role = Role.where(name: 'admin')
user.roles << role
user.save

user = User.new
user.attendnumber = 0
user.number = "00-000"
user.name = "大枝　真一"
user.email = "oeda@j.kisarazu.ac.jp"
user.password = "hogehogehoge"
role = Role.where(name: 'admin')
user.roles << role
user.save

i = 1
CSV.foreach('db/2014J2.csv') do |row|
  puts row[2]
  user = User.new
  user.attendnumber = row[0]
  user.number = row[1]
  user.name = row[2]
  user.email = "j" + row[1].delete("-") + "@j.kisarazu.ac.jp"
  user.password = "hogehoge"
  role = Role.where(name: 'member')
  user.roles << role
  user.save

  i = i + 1
end
