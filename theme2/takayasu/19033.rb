# encodig: utf-8

def readWords()
  str = File.read('19033.txt')
  return str
end

def insertWords2Dictionary(str_list)
  dictionary = {}
  for word in str_list
    if dictionary.has_key?(word)
      dictionary[word] = dictionary[word] + 1
    else
      dictionary[word] = 1
    end
  end
  return dictionary
end

str = readWords()
str_list = str.split()
dictionary = insertWords2Dictionary(str_list)
dictionary = dictionary.sort_by{|key,value| -value}
dictionary.each{|h| p h}
#values = dictionary.values
#keys = dictionary.keys
#1.upto(20){|i| p "#{keys[i]} + ' ' + #{values[i]}"}
