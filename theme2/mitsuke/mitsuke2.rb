require 'date'
require 'time'

class Age
	def age_parse(s)
		ret = Time.now - Time.parse(s)
		ret = ret  / 60 / 60 / 24 / 365
		print ret.to_i + "\n"
		end
end

age1 = Age.new;
age1.age_parse(ARGV.shift);
