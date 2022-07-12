
 def day_trader(array)
  my_hash = Hash.new(0)
  days = []
  marg_array = []
  array[0..array.length].each do |a|
      array[1..array.length].each do |b|
           marg = 0
          b - a > marg ? marg = b - a : nil
          marg_array.push(marg)
          days.push([a,b])
          end
      end
   print   my_hash = days.zip(marg_array).to_h
      print my_hash.key(my_hash.values.max)
  end


print day_trader([17, 3, 6, 9, 15, 8, 7, 8])