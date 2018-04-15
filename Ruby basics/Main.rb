require_relative 'Person.rb'
require_relative 'User.rb'
require_relative 'Admin.rb'
#########################
person1 = Person.new('Tomek','Kot',30)
puts person1.introduce
user1 = User.new('Bartek','Kowalski',32, 'BarKow',1)
puts user1.introduce
puts user1.name
puts user1.nick
puts user1
# try to set valid user.id
user1.user_id = 99
puts user1
# try to set not valid id 
user1.user_id = -109 
puts user1 # assert_equal(-1, user1.user_id)
# pass not integer
user1.user_id = '123'
puts user1
admin1=Admin.new('Mateusz','Kowalski',99, 'BarKow',256,'898989898','matkow@gmail.com')
puts admin1.introduce

array = Array.new


puts 'Please type how many user to create:'
counter = gets.chomp

id = 1
while counter.to_i > 0
    puts 'Please type name:'
    name = gets.chomp
    puts 'Please type surname:'
    surname = gets.chomp
    puts 'Please type age:'
    age = gets.chomp
    puts 'Please type nick:'
    nick = gets.chomp
    #user_to_add = User.new(name, surname,  age, nick, id)
    array << User.new(name, surname,  age, nick, id)
    id = id + 1
    puts "USER CREATED!"
    puts "--------"
    counter = counter.to_i - 1
end
# block
array.each do |single_user|
        puts single_user
end


