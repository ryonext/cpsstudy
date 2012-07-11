require 'date'
b = ARGV[0].split(/\s*,\s*/)
birthday = Date.new(b[0].to_i,b[1].to_i,b[2].to_i)
#birthday = Date.new(2010, 8,31)
today = Date::today
#today = Date.new(2012, 7,10)

days = (today - birthday).to_i
p days
#とりあえずうるう年は計算しない
year_month = days.divmod(365)

#とりあえず1ヶ月は30日で計算
month = year_month[1]/30


#出力
puts "You are #{year_month[0]} and #{month} months years old"