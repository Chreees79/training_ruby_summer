def is_multiple_of_3_or_5?(current_number)
    current_number%3 == 0 || current_number%5 == 0 ? true : false 
end

def sum_of_3_or_5_multiples(final_number)
  final_sum = 0
  if final_number.to_i >= 0 && final_number.is_a?(Integer)
    for n in (0...final_number)
      if is_multiple_of_3_or_5?(n) == true
        final_sum += n
      end
    end
    return final_sum
  else
    return "Yo ! Je ne prends que les entiers naturels. TG"
  end 
end
