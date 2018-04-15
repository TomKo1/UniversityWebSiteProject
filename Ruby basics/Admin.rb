require_relative 'User.rb'

class Admin < User
    attr_accessor :phone, :email
    
        def initialize(name, surname, age, nick, user_id,phone_number,email)
            super(name,surname,age,nick,user_id)
            @phone_number = phone_number
            @email = email
        end
        
        def introduce
            super + "\nI am the admin!!!"
        end
    
    
end
