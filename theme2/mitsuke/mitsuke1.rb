class StrCtl
	def verb_ings(s);
		if ((/ing\Z/ =~ s) != nil)
			print s + "ly\n";
		elsif s.length > 2
			print s + "ing\n"
		else
			print s + "\n"
		end
	end
end

s1 = StrCtl.new;
s1.verb_ings("hail");
s1.verb_ings("swimming");
s1.verb_ings("do");
