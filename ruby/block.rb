
#proc.new
proc = Proc.new { puts "this is proc new"}
proc.call

proc = Proc.new do
  puts "this is proc block too"
end

proc.call


# lambda
proc = lambda{ puts "lambda"}
proc.call

proc = -> { puts "lambda too"}
proc.call


## multiple lambdas
# block to lambda
class User
  def admin?
    true
  end

  def is_admin?(success, error)
    if admin?
      success.call
    else
      error.call
    end
  end
end

user = User.new
success = -> { puts "welcome admin !"}
error =-> { raise 'not admin'}
user.is_admin?(success, error)

## lambda to block

pls = ["Ruby", "Python", "Java", "PHP", "Node"]
pls.each do |pl|
 puts "I like #{pl} "
end

printer = lambda{|pl| puts "I like #{pl}, too " }
pls.each(&printer)
#call a method with & in front of a paramter, it can proc turn into block
#
#
# class Timeline
#
#   attr_accessor :tweets
#
#   def each(&block)
#     tweets.each(&block)
#   end
#
# end
#

#tweets.map { |tweet| tweet.user }
# the same
# tweets.map(&:user)
#
# optional block
#
puts "==============================="
class Timeline
  attr_accessor :tweets

  def print
    if block_given?
      tweets.each { |tweet| puts yield tweet }
    else
      puts tweets.join(", ")
    end
  end
end

timeline = Timeline.new
timeline.tweets = ["Ruby", "Python", "Java", "PHP", "Node"]

timeline.print
timeline.print { |tweet|
 "tweet: #{tweet}"
}

