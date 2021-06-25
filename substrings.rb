def substrings(string, array)
  # Make string lowercase as method is case insensitive
  string.downcase!
  array.each_with_object(Hash.new(0)) do |object, substrings|
    # Scan for number of instances of object if detected within given string
    # Then add that number of instances to dictionary with the key of object (:object)
    substrings[object] += string.scan(/#{object}/).length if string.include?(object)
  end
end
