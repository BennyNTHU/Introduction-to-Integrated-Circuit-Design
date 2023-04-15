************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: nor2
* View Name:     schematic
* Netlisted on:  Jun 28 21:51:30 2021
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

