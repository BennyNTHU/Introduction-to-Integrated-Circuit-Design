************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: MUX2
* View Name:     schematic
* Netlisted on:  Jun 28 21:46:41 2021
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

