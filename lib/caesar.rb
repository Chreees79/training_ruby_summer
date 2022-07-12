

def caesar_cipher(string,encryption_key)

  s_in_ascii = string.chars.map(&:ord)

  if encryption_key.is_a?(Integer) && encryption_key.between?(0,26)
    code = []

    s_in_ascii.each do |s|
    if s.between?(97,122) 
       s + encryption_key > 122 ? code.push((s+encryption_key -26).chr) : code.push((s + encryption_key).chr)
    elsif s.between?(65,90)
       s + encryption_key > 90 ? code.push((s+encryption_key -26).chr) : code.push((s + encryption_key).chr)
    else
    code << s.chr
    end
  end
  code.join
else
  return "tu n'as pas donné un nombre entier compris entre 0 et 26"
end
end
