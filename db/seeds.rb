require "faker"

User.create(email: 'gavin@example.com', password: 'sekret44')
User.create(email: 'jason@example.com', password: 'alsosekret')
User.create(email: 'toni@example.com' , password: 'supersekret')

35.times do
  Definition.create(word: Faker::Lorem.word, meaning: Faker::Lorem.sentence)
end
