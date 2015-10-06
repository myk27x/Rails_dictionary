# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.new(email: 'gavin@example.com', password: 'sekret')
User.new(email: 'jason@example.com', password: 'alsosekret')
User.new(email: 'toni@example.com' , password: 'supersekret')
