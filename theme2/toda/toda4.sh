sed -e 's/ /\n/g' file.txt | sed -e '/^ *$/d' | sort -d | uniq -c | sort -k1 -nr | head
