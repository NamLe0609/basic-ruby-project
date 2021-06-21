def substrings(string, array)
    # Make string lowercase as method is case insensitive
    string.downcase!
    substrings_counted = array.reduce(Hash.new(0)) do |substrings, object|

        # Scan for number of instances of object if detected within given string
        # Then add that number of instances to dictionary with the key of object (:object)
        if string.include?(object)
            substrings[object] += string.scan(/#{object}/).length
        end
        substrings
    end
    substrings_counted
end

