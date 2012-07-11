# encodig: utf-8

def verb_ing(word)
  length = word.length
  add_word = ''
  if length <= 2
  elsif word[-3..-1] == 'ing'
    add_word = 'ly'
  else
    add_word = 'ing'
  end
  return word + add_word
end

p verb_ing('hail')
p verb_ing('swiming')
p verb_ing('do')
