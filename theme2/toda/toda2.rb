#!/usr/bin/ruby
require 'parsedate'

def birth(line)
  tmp = ParseDate::parsedate(line.chomp)
  day1 = Time::local(*tmp[0..-3])
  day2 = Time.now

  age = (day2.strftime("%Y%m%d").to_i-day1.strftime("%Y%m%d").to_i )/10000
  month = (day2.strftime("%m").to_i > day1.strftime("%m").to_i)?(12+day1.strftime("%m").to_i-day2.strftime("%m").to_i):(day1.strftime("%m").to_i-day2.strftime("%m").to_i)

  printf("Your age %d and %d months\n",age ,month)
end

birth(ARGV[0])

