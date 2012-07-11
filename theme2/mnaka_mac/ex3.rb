list1 = [1,3];
list2 = [2,4];

list = list1 + list2;

listS = list.sort;

for num in 0..listS.length-1 do
    print("list= ",listS[num],"\n");
end