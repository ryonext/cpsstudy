require 'date'
b = ARGV[0].split(/\s*,\s*/)
birthday = Date.new(b[0].to_i,b[1].to_i,b[2].to_i)
#birthday = Date.new(2010, 8,31)
today = Date::today
#today = Date.new(2012, 7,10)

days = (today - birthday).to_i
p days
#�Ƃ肠�������邤�N�͌v�Z���Ȃ�
year_month = days.divmod(365)

#�Ƃ肠����1������30���Ōv�Z
month = year_month[1]/30


#�o��
puts "You are #{year_month[0]} and #{month} months years old"