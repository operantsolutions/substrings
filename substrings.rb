dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    result = Hash.new(0)
    expanded_array = []
    string_array = string.downcase.split(" ")
    string_array.each do |word|
        sub_string_array = word.split("")
        sub_string_array.each_with_index do |char, index|
            i = index
            while i<sub_string_array.length do
                seg = sub_string_array[index..i].join("")
                expanded_array.push(seg)
                i += 1
            end
        end
    end
    expanded_array.each do |word|
        if dictionary.include?(word)
            result[word] += 1
        end 
    end
    return result
end

