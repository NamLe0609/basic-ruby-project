def caesar_cypher(string, shift)
  split_str = string.split('')
  encrypted_split_str = split_str.map do |value|
    # Only do shift on characters and nothing else
    ascii_non_shifted = value.ord
    if (ascii_non_shifted >= 65 && ascii_non_shifted <= 90) || (ascii_non_shifted >= 97 && ascii_non_shifted <= 122)
      actual_shift = shift % 25
      ascii_shifted = ascii_non_shifted + actual_shift
      encrypted_char = ''

      # Handle capitalized and non-capitalized seperately

      # Capitalized
      if ascii_non_shifted <= 90
        encrypted_ascii = ascii_shifted % 91

        # Handle wrapping shift
        encrypted_ascii += 65 if ascii_shifted > 90

        encrypted_char = encrypted_ascii.chr

      # Non-Capitalized
      elsif ascii_non_shifted <= 122
        encrypted_ascii = ascii_shifted % 123

        # Handle wrapping shift
        encrypted_ascii += 97 if ascii_shifted > 122

        encrypted_char = encrypted_ascii.chr
      end

      encrypted_char

    else
      value
    end
  end

  encrypted_split_str.join('')
end

puts caesar_cypher('Shee is poggers!?!', 9)
