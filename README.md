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
> 0: Murine 15K long oligo array version 2.0 (3 samples)
```

Then generate the formated data table by assigning platform id.
```
# parse_GSE_soft -p <platform id> <sotf format GSE file>
./parse_GSE_soft -p 0 ./GSE41813_family.soft | head
```

Output:
```
ID	GB_ACC	Gene_Desc	Gene_Sym	SPOT_ID	SEQUENCE	Control Embyronic Stem Cell Replicate 1	Control Embyronic Stem Cell Replicate 2	Triple-Fusion Transfected Embryonic Stem Cells Replicate 1
8
						!Sample_title = Control Embyronic Stem Cell Replicate 1	!Sample_title = Control Embyronic Stem Cell Replicate 2	!Sample_title = Triple-Fusion Transfected Embryonic Stem Cells Replicate 1
						!Sample_characteristics_ch1 = Cell line: ES-D3 (CRL-1934)	!Sample_characteristics_ch1 = Cell line: ES-D3 (CRL-1934)	!Sample_characteristics_ch1 = Cell line: ES-D3 (CRL-1934) transfected with pUb-fluc-mrfp-ttk triple fusion reporter gene
						!Sample_characteristics_ch1 = Passages: 4 	!Sample_characteristics_ch1 = Passages: 4	!Sample_characteristics_ch1 = Passages: 4 
						!Sample_characteristics_ch1 = Cell type: embryonic stem cells derived from blastocysts	!Sample_characteristics_ch1 = Cell type: embryonic stem cells derived from blastocysts	!Sample_characteristics_ch1 = Cell type: embryonic stem cells derived from blastocysts
						!Sample_characteristics_ch1 = Strain: 129Sv	!Sample_characteristics_ch1 = Strain: 129Sv	!Sample_characteristics_ch1 = Strain: 129Sv
						!Sample_characteristics_ch2 = Strain: C57BL/6	!Sample_characteristics_ch2 = Strain: C57BL/6	!Sample_characteristics_ch2 = Strain: C57BL/6
						!Sample_characteristics_ch2 = Age: E17.5 d	!Sample_characteristics_ch2 = Age: E17.5 d	!Sample_characteristics_ch2 = Age: E17.5 d
						!Sample_characteristics_ch2 = Tissue: whole embryo	!Sample_characteristics_ch2 = Tissue: whole embryo	!Sample_characteristics_ch2 = Tissue: whole embryo
1	U02079	nuclear factor of activated T-cells, cytoplasmic 2	Nfatc2	ACCTGGATGACGCAGCCACTTCAGAAAGCTGGGTTGGGACAGAAAGGTATATAGAGAGAAAATTTTGGAA	na	-1.6274758	1.36E-01	6.41E-33	9.13E+03	2.15E+02	-1.1697263	1.23E-01	2.14E-21	3.17E+03	2.14E+02	-0.7837546	1.30E-01	1.70E-09	2.10E+03	3.46E+02
2	NM_008154	G-protein coupled receptor 3	Gpr3	CTGTACAATGCTCTCACTTACTACTCAGAGACAACGGTAACTCGGACTTATGTGATGCTGGCCTTGGTGT	na	0.1412248	1.34E+00	1.00E+00	4.14E+01	5.72E+01	-0.1111353	1.63E+00	9.46E-01	5.43E+01	4.20E+01	0.3797837	1.15E+00	7.41E-01	5.59E+01	1.34E+02
3	AK015719	tropomodulin 2	Tmod2	CACCAGGCTCAGTGCCTAGTATCGGCTTCACCTAGTGTGGTTACTCAGGGCACGCAGAGCTACAGAACAC	na	0.1827684	5.19E-02	4.33E-04	5.13E+03	7.81E+03	0.1400597	5.11E-02	6.17E-03	6.72E+03	9.28E+03	0.2079269	5.38E-02	1.12E-04	5.04E+03	8.14E+03
4	AK003367	mitochondrial ribosomal protein L15	Mrpl15	CAAGAAGTCTAGAAATTCTGTGCAAGCCTATTCCATTCTTTCTGCGGGGACAACCAATTCCGAAAAGAAT	na	-0.3932267	6.08E-02	1.02E-10	4.65E+03	1.88E+03	-0.4820633	6.38E-02	4.06E-14	6.46E+03	2.13E+03	-0.4730291	6.71E-02	1.86E-12	5.66E+03	1.91E+03
```
