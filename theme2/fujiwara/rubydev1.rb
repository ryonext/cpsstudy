def verb_ing(s)
	if s.length >= 3
		if s[s.length-3..s.length] == 'ing'
			s = s + 'ly'
		else
			s = s + 'ing'
		end
	else 
		s
	end
end

p verb_ing('hail')
p verb_ing('swimming')
p verb_ing('do')

