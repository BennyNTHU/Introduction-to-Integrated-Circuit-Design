************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: comp16
* View Name:     schematic
* Netlisted on:  Jun 28 21:50:19 2021
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM



************************************************************************
* Library Name: final_project
* Cell Name:    inv
* View Name:    schematic
************************************************************************

.SUBCKT inv VDD VSS Vin Vout
*.PININFO VDD:B VSS:B Vin:B Vout:B
MM1 Vout Vin VDD VDD P_18 W=1.5u L=180.00n
MM0 Vout Vin VSS VSS N_18 W=500.0n L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    AND2
* View Name:    schematic
************************************************************************

.SUBCKT AND2 A B VDD VSS Vout
*.PININFO A:B B:B VDD:B VSS:B Vout:B
MM7 net13 B VSS VSS N_18 W=500.0n L=180.00n
MM9 Vout net074 VSS VSS N_18 W=500.0n L=180.00n
MM4 net074 A net13 VSS N_18 W=500.0n L=180.00n
MM6 net074 B VDD VDD P_18 W=1.5u L=180.00n
MM11 Vout net074 VDD VDD P_18 W=1.5u L=180.00n
MM5 net074 A VDD VDD P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    nor2
* View Name:    schematic
************************************************************************

.SUBCKT nor2 A B VDD VSS Vout
*.PININFO A:B B:B VDD:B VSS:B Vout:B
MM3 Vout A VSS VSS N_18 W=500.0n L=180.00n
MM1 Vout B VSS VSS N_18 W=500.0n L=180.00n
MM2 Vout B net037 VDD P_18 W=1.5u L=180.00n
MM0 net037 A VDD VDD P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    MUX2
* View Name:    schematic
************************************************************************

.SUBCKT MUX2 A B EN VDD VSS Vout
*.PININFO A:B B:B EN:B VDD:B VSS:B Vout:B
XI4 VDD VSS net014 Vout / inv
XI3 VDD VSS EN net8 / inv
XI2 B EN VDD VSS net13 / AND2
XI1 A net8 VDD VSS net18 / AND2
XI0 net18 net13 VDD VSS net014 / nor2
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    and4
* View Name:    schematic
************************************************************************

.SUBCKT and4 A B C D VDD VSS Vout
*.PININFO A:B B:B C:B D:B VDD:B VSS:B Vout:B
MM8 Vout net056 VDD VDD P_18 W=1.5u L=180.00n
MM4 net056 D VDD VDD P_18 W=1.5u L=180.00n
MM3 net056 C VDD VDD P_18 W=1.5u L=180.00n
MM2 net056 A VDD VDD P_18 W=1.5u L=180.00n
MM1 net056 B VDD VDD P_18 W=1.5u L=180.00n
MM9 Vout net056 VSS VSS N_18 W=500.0n L=180.00n
MM7 net24 D VSS VSS N_18 W=500.0n L=180.00n
MM6 net28 C net24 VSS N_18 W=500.0n L=180.00n
MM5 net32 B net28 VSS N_18 W=500.0n L=180.00n
MM0 net056 A net32 VSS N_18 W=500.0n L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    and3
* View Name:    schematic
************************************************************************

.SUBCKT and3 A B C VDD VSS Vout
*.PININFO A:B B:B C:B VDD:B VSS:B Vout:B
MM7 Vout net064 VSS VSS N_18 W=500.0n L=180.00n
MM5 net7 C VSS VSS N_18 W=500.0n L=180.00n
MM4 net11 B net7 VSS N_18 W=500.0n L=180.00n
MM1 net064 A net11 VSS N_18 W=500.0n L=180.00n
MM6 Vout net064 VDD VDD P_18 W=1.5u L=180.00n
MM3 net064 C VDD VDD P_18 W=1.5u L=180.00n
MM2 net064 B VDD VDD P_18 W=1.5u L=180.00n
MM0 net064 A VDD VDD P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    or4
* View Name:    schematic
************************************************************************

.SUBCKT or4 A B C D VDD VSS Vout
*.PININFO A:B B:B C:B D:B VDD:B VSS:B Vout:B
MM6 net24 D VSS VSS N_18 W=500.0n L=180.00n
MM5 net24 C VSS VSS N_18 W=500.0n L=180.00n
MM4 net24 B VSS VSS N_18 W=500.0n L=180.00n
MM2 Vout net24 VSS VSS N_18 W=500.0n L=180.00n
MM1 net24 A VSS VSS N_18 W=500.0n L=180.00n
MM9 net37 A VDD VDD P_18 W=1.5u L=180.00n
MM8 net41 B net37 VDD P_18 W=1.5u L=180.00n
MM7 net45 C net41 VDD P_18 W=1.5u L=180.00n
MM3 Vout net24 VDD VDD P_18 W=1.5u L=180.00n
MM0 net24 D net45 VDD P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    comp4
* View Name:    schematic
************************************************************************

.SUBCKT comp4 A0 A1 A2 A3 B0 B1 B2 B3 E G L VDD VSS
*.PININFO A0:B A1:B A2:B A3:B B0:B B1:B B2:B B3:B E:B G:B L:B VDD:B VSS:B
XI29 G E VDD VSS L / nor2
XI4 net48 net53 VDD VSS net98 / nor2
XI15 net83 net78 VDD VSS net113 / nor2
XI14 net68 net73 VDD VSS net108 / nor2
XI5 net63 net58 VDD VSS net103 / nor2
XI0 VDD VSS A3 net15 / inv
XI1 VDD VSS B3 net19 / inv
XI8 VDD VSS B2 net23 / inv
XI9 VDD VSS A2 net27 / inv
XI10 VDD VSS A1 net31 / inv
XI11 VDD VSS B1 net35 / inv
XI18 VDD VSS B0 net39 / inv
XI19 VDD VSS A0 net43 / inv
XI2 net15 B3 VDD VSS net48 / AND2
XI3 A3 net19 VDD VSS net53 / AND2
XI6 A2 net23 VDD VSS net58 / AND2
XI7 net27 B2 VDD VSS net63 / AND2
XI12 net31 B1 VDD VSS net68 / AND2
XI13 A1 net35 VDD VSS net73 / AND2
XI16 A0 net39 VDD VSS net78 / AND2
XI17 net43 B0 VDD VSS net83 / AND2
XI21 net98 net58 VDD VSS net93 / AND2
XI23 net98 net103 net73 VDD VSS net125 / and3
XI25 net98 net103 net108 net78 VDD VSS net139 / and4
XI26 net98 net103 net108 net113 VDD VSS E / and4
XI28 net53 net93 net125 net139 VDD VSS G / or4
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    FF
* View Name:    schematic
************************************************************************

.SUBCKT FF CK CKB D Q VDD VSS
*.PININFO CK:B CKB:B D:B Q:B VDD:B VSS:B
MM17 Q CK net0123 VSS N_18 W=500.0n L=180.00n
MM16 net0123 net15 VSS VSS N_18 W=500.0n L=180.00n
MM14 net15 Q VSS VSS N_18 W=500.0n L=180.00n
MM13 net26 net71 VSS VSS N_18 W=500.0n L=180.00n
MM12 Q CKB net26 VSS N_18 W=500.0n L=180.00n
MM7 net71 CKB net0143 VSS N_18 W=500.0n L=180.00n
MM6 net0143 net75 VSS VSS N_18 W=500.0n L=180.00n
MM5 net75 net71 VSS VSS N_18 W=500.0n L=180.00n
MM3 net46 D VSS VSS N_18 W=500.0n L=180.00n
MM2 net71 CK net46 VSS N_18 W=500.0n L=180.00n
MM19 net54 net15 VDD VDD P_18 W=1.5u L=180.00n
MM18 Q CKB net54 VDD P_18 W=1.5u L=180.00n
MM15 net15 Q VDD VDD P_18 W=1.5u L=180.00n
MM11 Q CK net0175 VDD P_18 W=1.5u L=180.00n
MM10 net0175 net71 VDD VDD P_18 W=1.5u L=180.00n
MM9 net74 net75 VDD VDD P_18 W=1.5u L=180.00n
MM8 net71 CK net74 VDD P_18 W=1.5u L=180.00n
MM4 net75 net71 VDD VDD P_18 W=1.5u L=180.00n
MM1 net71 CKB net0195 VDD P_18 W=1.5u L=180.00n
MM0 net0195 D VDD VDD P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    comp16
* View Name:    schematic
************************************************************************

.SUBCKT comp16 A0 A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 B0 B1 B2 
+ B3 B4 B5 B6 B7 B8 B9 B10 B11 B12 B13 B14 B15 CLKin E_no_use Equal Greater 
+ Less VDD VSS
*.PININFO A0:B A1:B A2:B A3:B A4:B A5:B A6:B A7:B A8:B A9:B A10:B A11:B A12:B 
*.PININFO A13:B A14:B A15:B B0:B B1:B B2:B B3:B B4:B B5:B B6:B B7:B B8:B B9:B 
*.PININFO B10:B B11:B B12:B B13:B B14:B B15:B CLKin:B E_no_use:B Equal:B 
*.PININFO Greater:B Less:B VDD:B VSS:B
XI178 net54 VSS net109 VDD VSS net115 / MUX2
XI179 net53 VSS net109 VDD VSS net121 / MUX2
XI82 net188 net182 net152 net146 VDD VSS net109 / and4
XI169 net48 net49 net50 net51 net44 net176 net158 net47 E_no_use net54 net53 
+ VDD VSS / comp4
XI7 net296 net290 net284 net278 net302 net308 net314 net320 net78 net80 net79 
+ VDD VSS / comp4
XI6 net344 net338 net332 net326 net254 net260 net266 net272 net91 net93 net92 
+ VDD VSS / comp4
XI5 net248 net242 net236 net230 net206 net212 net218 net224 net65 net67 net66 
+ VDD VSS / comp4
XI4 net392 net386 net380 net374 net350 net356 net362 net368 net104 net106 
+ net105 VDD VSS / comp4
XI173 CLKin CLKin net121 Less VDD VSS / FF
XI172 CLKin CLKin net115 Greater VDD VSS / FF
XI171 CLKin CLKin net109 Equal VDD VSS / FF
XI168 CLKin CLKin net67 net51 VDD VSS / FF
XI167 CLKin CLKin net66 net47 VDD VSS / FF
XI166 CLKin CLKin net65 net146 VDD VSS / FF
XI165 CLKin CLKin net78 net152 VDD VSS / FF
XI164 CLKin CLKin net79 net158 VDD VSS / FF
XI163 CLKin CLKin net80 net50 VDD VSS / FF
XI162 CLKin CLKin net93 net49 VDD VSS / FF
XI161 CLKin CLKin net92 net176 VDD VSS / FF
XI159 CLKin CLKin net104 net188 VDD VSS / FF
XI158 CLKin CLKin net105 net44 VDD VSS / FF
XI153 CLKin CLKin net398 net206 VDD VSS / FF
XI152 CLKin CLKin net402 net212 VDD VSS / FF
XI151 CLKin CLKin net406 net218 VDD VSS / FF
XI150 CLKin CLKin net410 net224 VDD VSS / FF
XI149 CLKin CLKin net414 net230 VDD VSS / FF
XI148 CLKin CLKin net418 net236 VDD VSS / FF
XI147 CLKin CLKin net422 net242 VDD VSS / FF
XI146 CLKin CLKin net426 net248 VDD VSS / FF
XI160 CLKin CLKin net91 net182 VDD VSS / FF
XI121 CLKin CLKin net430 net254 VDD VSS / FF
XI120 CLKin CLKin net434 net260 VDD VSS / FF
XI119 CLKin CLKin net438 net266 VDD VSS / FF
XI118 CLKin CLKin net442 net272 VDD VSS / FF
XI117 CLKin CLKin net446 net278 VDD VSS / FF
XI116 CLKin CLKin net450 net284 VDD VSS / FF
XI115 CLKin CLKin net454 net290 VDD VSS / FF
XI114 CLKin CLKin net458 net296 VDD VSS / FF
XI113 CLKin CLKin net462 net302 VDD VSS / FF
XI112 CLKin CLKin net466 net308 VDD VSS / FF
XI111 CLKin CLKin net470 net314 VDD VSS / FF
XI110 CLKin CLKin net474 net320 VDD VSS / FF
XI109 CLKin CLKin net478 net326 VDD VSS / FF
XI108 CLKin CLKin net482 net332 VDD VSS / FF
XI107 CLKin CLKin net486 net338 VDD VSS / FF
XI106 CLKin CLKin net490 net344 VDD VSS / FF
XI97 CLKin CLKin net349 net350 VDD VSS / FF
XI96 CLKin CLKin net498 net356 VDD VSS / FF
XI95 CLKin CLKin net502 net362 VDD VSS / FF
XI94 CLKin CLKin net506 net368 VDD VSS / FF
XI92 CLKin CLKin net373 net374 VDD VSS / FF
XI91 CLKin CLKin net379 net380 VDD VSS / FF
XI88 CLKin CLKin net518 net386 VDD VSS / FF
XI70 CLKin CLKin net106 net48 VDD VSS / FF
XI11 CLKin CLKin net391 net392 VDD VSS / FF
XI180 VDD VSS CLKin CLKin / inv
XI141 VDD VSS B12 net398 / inv
XI140 VDD VSS B13 net402 / inv
XI139 VDD VSS B14 net406 / inv
XI138 VDD VSS B15 net410 / inv
XI137 VDD VSS A15 net414 / inv
XI136 VDD VSS A14 net418 / inv
XI135 VDD VSS A13 net422 / inv
XI134 VDD VSS A12 net426 / inv
XI133 VDD VSS B4 net430 / inv
XI132 VDD VSS B5 net434 / inv
XI131 VDD VSS B6 net438 / inv
XI130 VDD VSS B7 net442 / inv
XI129 VDD VSS A11 net446 / inv
XI128 VDD VSS A10 net450 / inv
XI127 VDD VSS A9 net454 / inv
XI126 VDD VSS A8 net458 / inv
XI125 VDD VSS B8 net462 / inv
XI124 VDD VSS B9 net466 / inv
XI123 VDD VSS B10 net470 / inv
XI122 VDD VSS B11 net474 / inv
XI105 VDD VSS A7 net478 / inv
XI104 VDD VSS A6 net482 / inv
XI103 VDD VSS A5 net486 / inv
XI102 VDD VSS A4 net490 / inv
XI101 VDD VSS B0 net349 / inv
XI100 VDD VSS B1 net498 / inv
XI99 VDD VSS B2 net502 / inv
XI98 VDD VSS B3 net506 / inv
XI93 VDD VSS A3 net373 / inv
XI90 VDD VSS A2 net379 / inv
XI89 VDD VSS A1 net518 / inv
XI10 VDD VSS A0 net391 / inv
.ENDS

