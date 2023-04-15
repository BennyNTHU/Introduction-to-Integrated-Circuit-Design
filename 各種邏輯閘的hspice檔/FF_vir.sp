************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: FF
* View Name:     schematic
* Netlisted on:  Jun 28 21:46:05 2021
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

