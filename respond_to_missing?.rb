require 'ostruct'

class Order
  def user
    @user ||= OpenStruct.new(name: 'Amit', age: 28, occupation: 'slacker')
  end

  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /user_(.*)/  # (.*) represents any string in regex
      user.send($1, *arguments, &block) # $1 returns the (.*) value. In this case it will be 'name'
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('user_') || super
  end
end

if __FILE__ == $0
  order = Order.new

  puts order.user_name                # Prints Amit
  puts order.respond_to?(:user_name)  # Prints true
  puts order.method(:user_name)       # Prints #<Method: Order#user_name>
end
