require_relative 'Person.rb'
class User < Person
    attr_reader  :user_id
    attr_accessor :nick
   
   def initialize(name, surname, age, nick, user_id)
       super(name, surname, age)
       # I assert that when the User object is created by calling new
       # the user_id is valid -> but we check if there is, in setters
       # while it can be called for example when the account is modified
       @nick = nick
       @user_id = user_id
   
   end
  
  # override
  def introduce
      super +  ", and my nick is #{@nick} and id: #{@user_id}"
  end
  
  # to conveniently print in Main
  def to_s
      "Here user: #{@nick}, my id is: #{@user_id}"
  end
  #customized setter validating sth
  def user_id=(value)
      if value.is_a? Integer
          if value > 0
              @user_id = value
            else
                @user_id = -1
            end
        else
            @user_id = -1
            end
  end
  
    
end
