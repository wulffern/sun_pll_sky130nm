v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 130 0 210 {
lab=VLPFZ}
N -80 90 -80 280 {
lab=AVSS}
N -80 280 0 280 {
lab=AVSS}
N -520 280 -80 280 {
lab=AVSS}
N -520 50 -520 210 {
lab=VLPF}
N -620 280 -520 280 {
lab=AVSS}
N -620 50 -520 50 {
lab=VLPF}
N -290 50 -290 210 {
lab=VLPF}
N -290 -70 -290 50 {
lab=VLPF}
N -520 -70 -520 50 {
lab=VLPF}
N -520 -70 -290 -70 {
lab=VLPF}
N -80 -250 -20 -250 {
lab=AVSS}
N -80 -250 -80 -30 {
lab=AVSS}
N 0 -210 0 -180 {
lab=VLPFZ}
N -290 -290 -290 -70 {
lab=VLPF}
N -80 -370 -20 -370 {
lab=AVSS}
N -80 -370 -80 -250 {
lab=AVSS}
N -290 -410 -0 -410 {
lab=VLPF}
N -290 -410 -290 -290 {
lab=VLPF}
N -0 -330 -0 -290 {
lab=VN5}
N -620 180 0 180 {
lab=VLPFZ}
N -0 -180 0 130 {
lab=VLPFZ}
N -80 -30 -80 90 {
lab=AVSS}
C {devices/ipin.sym} -610 50 0 0 {name=p1 lab=VLPF
}
C {devices/ipin.sym} -610 280 0 0 {name=p2 lab=AVSS}
C {cborder/border_s.sym} 410 250 0 0 {}
C {SUN_PLL_SKY130NM/CAP_LPF.sym} 0 270 0 0 {name=xb3[21:0]}
C {SUN_PLL_SKY130NM/CAP_LPF.sym} -290 270 0 0 {name=xb2[1:0]}
C {SUN_PLL_SKY130NM/CAP_LPF.sym} -520 270 0 0 {name=xb1 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 0 -210 1 1 {name=xa2 xoffset=0 yoffset=2 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 0 -410 1 0 {name=xa1 xoffset=0 yoffset=2 angle=0 M=1}
C {devices/lab_pin.sym} 0 -310 2 0 {name=l5 sig_type=std_logic lab=VN5}
C {devices/ipin.sym} -610 180 0 0 {name=p3 lab=VLPFZ}
