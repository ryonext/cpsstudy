def verb_ing(s)
  tmp_s=s.chomp

  if /ing$/ =~ tmp_s
    ret_s=tmp_s.concat("ly")
  elsif tmp_s.length >= 3
    ret_s=tmp_s.concat("ing")
  else
    ret_s=tmp_s
  end

  return tmp_s
end

