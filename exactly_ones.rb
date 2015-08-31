require 'pry'

class ExactlyOneUsingHash
  def exactly_ones(arr)

    my_hash = Hash.new
    arr.each do |value|
      if my_hash[value.to_s]
        my_hash[value.to_s] += 1
      else 
        my_hash[value.to_s] = 1 
      end
    end

    my_hash.filter { |key, value| 
      value == 1
    }.keys 

  end

end 

if __FILE__ == $0
  arr = [1, 1, 2, 2, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10]

  e = ExactlyOneUsingHash.new
  p e.exactly_ones(arr)
end