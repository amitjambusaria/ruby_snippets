require 'pry'

class Dutch
  
  def dutch(arr)
    lo = -1
    hi = arr.size
      i = 0
      while i < hi do
        case arr[i]
          when 1
            lo += 1
            arr[lo], arr[i] = arr[i], arr[lo]
            i += 1
          when 2
            i += 1
          when 3
            hi -= 1
            arr[hi], arr[i] = arr[i], arr[hi]
        end
      end
    arr
  end

end

list = [3, 3, 3, 1, 1, 2, 2, 3]
d = Dutch.new

p d.dutch(list)