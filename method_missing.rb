class Printer
	def initialize(printer)
		@printer ||= printer
	end

	def method_missing(method_name, *arguments, &block)
		if method_name.to_s.start_with?('says') 
			puts "#{@printer} #{method_name} #{arguments[0].upcase}"
		else
			super
		end
	end
end

if __FILE__ == $0
	hp = Printer.new('hp')

	hp.prints('Hello World!')									  # HP prints Hello World!
	hp.prints('Do or do not. There is no try.') # Do or do not. There is no try.
	hp.scans('Hubot pugbomb')									  # Evaluates to method_missing.rb:10:in `method_missing': undefined method 
end																					  # `scans' for #<Printer:0x007fcf4d88f300 @printer="HP"> (NoMethodError)


# Another Example

=begin
	
rescue Exception => e
	
end
class Proxy
  def initialize(subject)
    @subject = subject
  end
  
  private
    def method_missing(method, *args, &block)
      @subject.send(method, *args, &block)
    end
end

proxied_array = Proxy.new([1,2,3])
puts proxied_array.size # 3

=end