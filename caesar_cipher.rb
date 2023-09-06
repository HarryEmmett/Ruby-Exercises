def caesar_cipher(string, factor)
    result = ''
    val = ''
    mapped = string.each_char do |char|
      # (char + factor) % 26 )
      u_case = char.ord >= 65 && char.ord <= 90
      l_case = char.ord >= 97 && char.ord <= 122
      val = l_case ? char.ord - 65 + factor % 26 + 65 : char.ord - 97 + factor % 26 + 97
      if u_case
        result += val > 90 ? (val - 26).chr : val.chr
      elsif l_case
        result += val > 122 ? (val - 26).chr : val.chr
      else
        result += char
      end
    end
    result
  end
  
  # def caesar_cipher(str, factor)
  #   lowcase_str = str
  #   res = lowcase_str.split('').map do |char|
  #     if char.ord < 97 || char.ord > 122
  #       char
  #     else
  #       cipher = char.ord + factor
  #       offset = factor.abs % 26
  
  #       if cipher < 97
  #         if cipher - factor - offset < 97
  #           (cipher - factor - offset + 26).chr
  #         else
  #           (cipher - factor - offset).chr
  #         end
  
  #       elsif cipher > 122
  #         if  cipher - factor + offset > 122
  #           (cipher - factor + offset - 26).chr
  #         else
  #           (cipher - factor + offset).chr
  #         end
  #       else
  #         (char.ord + factor).chr
  #       end
  #     end
  #   end
  #   res.join('')
  # end