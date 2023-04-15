************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: and3
* View Name:     schematic
* Netlisted on:  Jun 28 21:48:37 2021
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

