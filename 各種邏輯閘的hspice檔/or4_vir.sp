************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: or4
* View Name:     schematic
* Netlisted on:  Jun 28 21:51:53 2021
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

