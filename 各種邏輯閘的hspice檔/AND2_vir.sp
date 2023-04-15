************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: AND2
* View Name:     schematic
* Netlisted on:  Jun 28 21:45:15 2021
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

