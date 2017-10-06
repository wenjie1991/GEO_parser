default: 
	gcc parse_GSE_soft.c -std=c11 -o parse_GSE_soft
run:
	gcc parse_GSE_soft.c -std=c11 -o parse_GSE_soft
	chmod +x parse_GSE_soft
	./parse_GSE_soft -l ./GSE41813_family.soft
#     ./parse_GSE_soft -l ./GSE4561_family.soft
#     ./parse_GSE_soft -p GPL571 ./GSE4561_family.soft | head
	./parse_GSE_soft -p GPL4126 ./GSE41813_family.soft | head
