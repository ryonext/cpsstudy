require 'date'

def calc_year(birthdaystr)
	today = Date.today
	
	birthday = Date.strptime(birthdaystr, "%Y/%m/%d")
	
	years = today.year - birthday.year
	
	if today.month < birthday.month 
		years-=1
	end
	if today.month == birthday.month && today.day < birthday.day
		years-=1
	end
	
	return years
end

p calc_year(ARGV[0]);

p calc_year('1980/01/26')
p calc_year('1980/1/26')
p calc_year('2010/10/31')
p calc_year('2008/5/12')


