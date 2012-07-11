
inputStr = "allowing";

if inputStr.length < 3 
    print inputStr;
else
    ingStr = inputStr[inputStr.length-3,inputStr.length-1];
    if (ingStr == "ing") == true 
        print inputStr + "ly\n";
    else
        print inputStr + "ing\n";
    end
end
