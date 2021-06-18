require "pry"

def substrings(string, array)
    string.downcase!
    substrings_counted = array.reduce(Hash.new(0)) do |substrings, object|
        object.downcase!
        #binding.pry
        if string.include?(object)
            substrings[object] += string.scan(/#{object}/).length
        end
        substrings
    end
    substrings_counted
end

