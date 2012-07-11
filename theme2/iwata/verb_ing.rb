def verb_ing(s)
  if (s.length < 3)
    p s
  elsif (s[-3..-1] == "ing")
    p s+"ly"
  else
    p s+"ing"
  end
end

verb_ing("hail")
verb_ing("swimming")
verb_ing("do")

