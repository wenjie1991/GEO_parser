default: 
	gcc parse_GSE_soft.c -std=c99 -o parse_GSE_soft

test:
	gcc parse_GSE_soft.c -std=c99 -o parse_GSE_soft
	chmod +x parse_GSE_soft
	./parse_GSE_soft -l ./data/soft_ex_family.txt
	./parse_GSE_soft -p 0 ./data/soft_ex_family.txt | head

debug_l:
	gcc parse_GSE_soft.c -g -std=c99 -o parse_GSE_soft
	chmod +x parse_GSE_soft
	cgdb --args ./parse_GSE_soft -l ./data/soft_ex_family.txt

debug_p:
	gcc parse_GSE_soft.c -g -std=c99 -o parse_GSE_soft
	chmod +x parse_GSE_soft
	cgdb --args ./data/parse_GSE_soft -p 0 ./data/soft_ex_family.txt

clean:
	rm parse_GSE_soft
