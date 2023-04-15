************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: and4
* View Name:     schematic
* Netlisted on:  Jun 28 21:49:02 2021
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

