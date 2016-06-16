
class User

  def initialize(name)
    @name = name
  end

  # Instance method
  def say_hello
    "Hello, #{@name}"
  end

end

class Group

  def self.name
    "Kaohsiung Rails Meetup"
  end

  class << self
    def find(user_id)
      "find group user with the id of #{user_id}"
    end
  end
end

# Instance Method
user = User.new("Ruby")
puts user.say_hello #  => Hello, Ruby

# Class Method
puts Group.name # => Kaohsiung Rails Meetup
puts Group.find(1) # => find group user with the is of 1


# class Group < ActiveRecord::Base
#
#   scope :active -> { where state: 'active'}
#   scope :inactive -> {where state: 'inactive'}
#
#   def permalink
#     xxxxxxxx
#   end
#
# end

# Class Method
# 1. Group.active
# 2. Group.find
# 3. Group.first
#
# Instance Method
# 1. Group.first.permalink
# 2. group = Group.first
#    group.permalink
# 1 the same 2








