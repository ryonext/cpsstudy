def sort_list(list)
	for i in 0..list.length
		for j in i+1..list.length
			if list[i].length < list[j].length
				tmp = list[i]
				list[i] = list[j]
				list[j] = tmp
			end
			if list[i].length == list[j].length && list[i] > list[j]
				tmp = list[i]
				list[i] = list[j]
				list[j] = tmp
			end
		end
	end
end

qlist=['12345','32112','1244','2','224','0']

p sort_list(qlist);


