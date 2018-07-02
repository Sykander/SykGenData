class Testing

  def self.cc_checksum_mod10 cc_number
    # converts the number into an array of integers
    cc_num_array = cc_number.split('').map {|x| x.to_i}
    # take the last digit as the check sum and remove it from the array
    check_digit = cc_num_array.pop
    # double every other digit starting from the right (last, last-2, last-4, ...)
    if cc_num_array.length%2==0
      cc_num_array = cc_num_array.each_with_index.map {|x, i| i%2==1 ? x=x*2 : x }
    else
      cc_num_array = cc_num_array.each_with_index.map {|x, i| i%2==0 ? x=x*2 : x }
    end
    # find sum of every entry and convert to one digit by adding each digit together
    cc_num_array = cc_num_array.map { |x|
      while x.to_s.length != 1
        x = x.to_s.split('').map {|x| x.to_i}.reduce(:+)
      end
      x
    }
    # find sum of all the digits
    total_sum = cc_num_array.reduce(:+)
    # multiple total sum by 9
    total_sum = total_sum * 9
    if total_sum.to_s.split('').last.to_i == check_digit
      return true
    else
      return false
    end
  end

end

class SykGenDataClass
  extend SykGenData
end
