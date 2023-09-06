def caesar_cipher(string, factor)
  result = ''
  string.each_char do |char|
    # (char + factor) % 26 )
    u_case = char.ord >= 65 && char.ord <= 90
    l_case = char.ord >= 97 && char.ord <= 122
    startOrd = l_case ? 97 : 65
    result += 
    if u_case || l_case
      ((((char.ord - startOrd) + factor) % 26) + startOrd).chr
    else
      char
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

# Shift letters by the factor provided and loop back if these values go past "Z"
# xyz factor 2 => zab

# caesar_cipher("What a string!", 5) => "Bmfy f xywnsl!"