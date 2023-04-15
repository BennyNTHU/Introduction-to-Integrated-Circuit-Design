************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: comp4
* View Name:     schematic
* Netlisted on:  Jun 28 21:49:27 2021
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

