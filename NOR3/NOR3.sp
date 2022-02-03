* SPICE NETLIST
***************************************

.SUBCKT dcont_CDNS_643851694353
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_CDNS_643851694352 1 2 3
** N=3 EP=3 IP=2 FDC=1
M0 2 3 1 1 NMOS_VTG L=5e-08 W=4e-07 AD=4.2e-14 AS=4.2e-14 PD=1.01e-06 PS=1.01e-06 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT dcont_CDNS_643851694351
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_CDNS_643851694350 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=6e-07 AD=6.3e-14 AS=6.3e-14 PD=1.41e-06 PS=1.41e-06 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_643851694353
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NOR3 gnd Y A vdd B C
** N=8 EP=6 IP=24 FDC=6
X0 gnd Y A nmos_vtg_CDNS_643851694352 $T=320 5570 0 0 $X=0 $Y=5460
X1 gnd Y B nmos_vtg_CDNS_643851694352 $T=1060 5570 0 0 $X=740 $Y=5460
X2 gnd Y C nmos_vtg_CDNS_643851694352 $T=1800 5570 0 0 $X=1480 $Y=5460
X3 vdd 5 A vdd pmos_vtg_CDNS_643851694350 $T=320 7110 0 0 $X=0 $Y=7000
X4 5 7 B vdd pmos_vtg_CDNS_643851694350 $T=1085 7110 0 0 $X=765 $Y=7000
X5 7 Y C vdd pmos_vtg_CDNS_643851694350 $T=1850 7110 0 0 $X=1530 $Y=7000
.ENDS
***************************************
