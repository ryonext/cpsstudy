input = ARGV[0]
date = input.split('/')
birth = Time.local(date[0], date[1], date[2])
now = Time.now
diff = now - birth
age = diff.divmod(60*60*24*365)[0]
month = diff.divmod(60*60*24*365)[1].divmod(60*60*24*30)[0]
p "you are #{age} (and #{month}) years old"
#次の誕生日まで
if now < Time.local(Time.now.year, date[1], date[2])
  next_birth = Time.local(Time.now.year, date[1], date[2])
  next_diff = next_birth -now
  next_day = next_diff.divmod(60*60*24)[0]
  p "your next birthday is #{next_day} later"
else
  p 'next year'
  next_birth = Time.local(Time.now.year+1, date[1], date[2])
  next_diff = next_birth - now
  next_day = next_diff.divmod(60*60*24)[0]
  p "your next birthday is #{next_day} later"
end
