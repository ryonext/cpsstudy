list = ['12345','32112','1244','2','224','0'].sort;

exsampleList = list.sort{
    |a,b| 
    a.length <=> b.length
}


for num in 0..exsampleList.length-1 do
    print("list= ",exsampleList[num],"\n");
end