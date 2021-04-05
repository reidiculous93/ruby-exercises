dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
    dictionary.reduce(Hash.new(0)) do |result, str|
        count = phrase.downcase.scan(str).count
        result[str] = count unless count == 0
        result
    end
 end