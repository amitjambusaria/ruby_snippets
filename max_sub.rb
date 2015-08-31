class Array
  
  def int_sum
    self.inject(0) { |sum, i| sum + i}    
  end
  
  def max_sub_array
    (0...self.size).inject([self.first]) do |max_sub, i|
      (i...self.size).each do |j|
        if max_sub.int_sum < self[i..j].int_sum
          max_sub = self[i..j]
        end
      end
      max_sub
    end
  end
    
end


list = [-1, -5 , 1 , 3, 5, 2, 4, 3]

p list.max_sub_array