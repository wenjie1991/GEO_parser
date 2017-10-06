# GSE parser
GSE parser used to parse the GSE soft file and generate expression table with phenotype headed.

# Usage
## Compile
```
make
```

## Parsing
The GSE dataset may include several platforms, inorder to generate table like format data, the platform should be given first.
So the first step is to investigate the platform list of the GSE dataset.
The platforms information can be draw by:
```
# parse_GSE_soft -l <sotf format GSE file>
./parse_GSE_soft -l ./GSE41813_family.soft  # list platform
```

Then generate the formated data table by assigning platform id.
```
# parse_GSE_soft -p <platform id> <sotf format GSE file>
./parse_GSE_soft -p GPL4126 ./GSE41813_family.soft | head
```