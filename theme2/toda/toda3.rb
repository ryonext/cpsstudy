#!/usr/bin/ruby

def linear_merge(a,b)
  return a.concat(b).sort
end

def length_sort(a)
  return a.sort{|a,b| a.length <=> b.length}
end


p linear_merge(['aa','xx','zz'], ['bb','cc'])
p linear_merge(['aa','xx'], ['bb','cc','zz'])
p linear_merge(['aa','aa'], ['aa','bb','bb'])

p length_sort(['12345','32112','1244','2','224','0'])

