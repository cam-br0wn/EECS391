* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_644568518083
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_644568518082 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=4e-07 AD=4.2e-14 AS=4.2e-14 PD=1.01e-06 PS=1.01e-06 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_644568518081
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_644568518080 1 2 3
** N=3 EP=3 IP=2 FDC=1
M0 2 3 1 1 PMOS_VTG L=5e-08 W=6e-07 AD=6.3e-14 AS=6.3e-14 PD=1.41e-06 PS=1.41e-06 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_644568518082
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND3 Y A gnd B C vdd
** N=8 EP=6 IP=24 FDC=6
X0 gnd 4 A gnd nmos_vtg_CDNS_644568518082 $T=320 2300 0 0 $X=0 $Y=2190
X1 4 6 B gnd nmos_vtg_CDNS_644568518082 $T=1060 2300 0 0 $X=740 $Y=2190
X2 6 Y C gnd nmos_vtg_CDNS_644568518082 $T=1800 2300 0 0 $X=1480 $Y=2190
X3 vdd Y A pmos_vtg_CDNS_644568518080 $T=320 3910 0 0 $X=0 $Y=3800
X4 vdd Y B pmos_vtg_CDNS_644568518080 $T=1060 3910 0 0 $X=740 $Y=3800
X5 vdd Y C pmos_vtg_CDNS_644568518080 $T=1800 3910 0 0 $X=1480 $Y=3800
.ENDS
***************************************
