
//-------------------------------------------------------------
// CAP_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CAP_LPF(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUN_PLL_BIAS <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_BIAS(IBPSR_1U,PWRUP_1V8_N,AVSS);
input logic AVSS;
input logic IBPSR_1U;
input logic PWRUP_1V8_N;
SUNTR_NCHDL xa2 (IBPSR_1U,PWRUP_1V8_N,AVSS,AVSS);
SUNTR_NCHDLCM xa3 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_BUF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_BUF(AVDD,VFB,VI,VO,VBN,AVSS);
input logic AVSS;
input logic AVDD;
input logic VFB;
input logic VI;
input logic VO;
input logic VBN;
SUNTR_NCHDLCM xa1 (VS,VBN,AVSS,AVSS);
SUNTR_NCHDLA xa2 (VDP,VFB,VS,AVSS);
SUNTR_NCHDLA xa4 (VGP,VI,VS,AVSS);
SUNTR_PCHL xc1_0 (VGP,VDP,AVDD,AVDD);
SUNTR_PCHL xc1_1 (VGP,VDP,AVDD,AVDD);
SUNTR_PCHL xc1_2 (VGP,VDP,AVDD,AVDD);
SUNTR_PCHL xc1_3 (VGP,VDP,AVDD,AVDD);
SUNTR_PCHL xc2_0 (VDP,VDP,AVDD,AVDD);
SUNTR_PCHL xc2_1 (VDP,VDP,AVDD,AVDD);
SUNTR_PCHL xc2_2 (VDP,VDP,AVDD,AVDD);
SUNTR_PCHL xc2_3 (VDP,VDP,AVDD,AVDD);
SUNTR_PCHL xc3_0 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_1 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_10 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_2 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_3 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_4 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_5 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_6 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_7 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_8 (VO,VGP,AVDD,AVDD);
SUNTR_PCHL xc3_9 (VO,VGP,AVDD,AVDD);
SUNSAR_CAP_BSSW_CV xd2 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_0 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_1 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_2 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_3 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_4 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_5 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_6 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_7 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_8 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd3_9 (VO,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_CP <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_CP(AVDD,CP_UP_N,LPF,CP_DOWN,VBN,AVSS,LPFZ,PWRUP_1V8,KICK);
input logic AVSS;
input logic AVDD;
input logic CP_UP_N;
input logic LPF;
input logic CP_DOWN;
input logic VBN;
input logic LPFZ;
input logic PWRUP_1V8;
input logic KICK;
SUNTR_NCHDLCM xa1 (VBP,VBN,AVSS,AVSS);
SUNTR_NCHDLCM xa2 (VNS,VBN,AVSS,AVSS);
SUNTR_NCHDL xa3 (LPF,CP_DOWN,VNS,AVSS);
SUNTR_NCHDLA xa4 (LPFZ,KICK,AVSS,AVSS);
SUNTR_PCHDLCM xb1 (VBP,VBP,AVDD,AVDD);
SUNTR_PCHDLCM xb2 (VPS,VBP,AVDD,AVDD);
SUNTR_PCHDL xb3 (LPF,CP_UP_N,VPS,AVDD);
SUNTR_PCHDL xb4 (LPF,PWRUP_1V8,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUN_PLL_DIVN <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_DIVN(AVDD,CK_FB,CK,PWRUP_1V8,AVSS);
input logic AVSS;
input logic AVDD;
input logic PWRUP_1V8;
input logic CK_FB;
input logic CK;
SUNTR_DFRNQNX1_CV xc (N2,D2,PWRUP_1V8,CK_FB,N2,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xd (N3,D3,PWRUP_1V8,D2,N3,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xe (N4,D4,PWRUP_1V8,D3,N4,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xf (N5,D5,PWRUP_1V8,D4,N5,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xg (N6,CK,PWRUP_1V8,D5,N6,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_LPF(VLPFZ,AVSS,VLPF);
input logic AVSS;
input logic VLPFZ;
input logic VLPF;
SUNTR_RPPO8 xa1 (VN5,VLPF,AVSS);
SUNTR_RPPO8 xa2 (VN5,VLPFZ,AVSS);
CAP_LPF xb1 (VLPF,AVSS);
CAP_LPF xb2_0 (VLPF,AVSS);
CAP_LPF xb2_1 (VLPF,AVSS);
CAP_LPF xb3_0 (VLPFZ,AVSS);
CAP_LPF xb3_1 (VLPFZ,AVSS);
CAP_LPF xb3_10 (VLPFZ,AVSS);
CAP_LPF xb3_11 (VLPFZ,AVSS);
CAP_LPF xb3_12 (VLPFZ,AVSS);
CAP_LPF xb3_13 (VLPFZ,AVSS);
CAP_LPF xb3_14 (VLPFZ,AVSS);
CAP_LPF xb3_15 (VLPFZ,AVSS);
CAP_LPF xb3_16 (VLPFZ,AVSS);
CAP_LPF xb3_17 (VLPFZ,AVSS);
CAP_LPF xb3_18 (VLPFZ,AVSS);
CAP_LPF xb3_19 (VLPFZ,AVSS);
CAP_LPF xb3_2 (VLPFZ,AVSS);
CAP_LPF xb3_20 (VLPFZ,AVSS);
CAP_LPF xb3_21 (VLPFZ,AVSS);
CAP_LPF xb3_3 (VLPFZ,AVSS);
CAP_LPF xb3_4 (VLPFZ,AVSS);
CAP_LPF xb3_5 (VLPFZ,AVSS);
CAP_LPF xb3_6 (VLPFZ,AVSS);
CAP_LPF xb3_7 (VLPFZ,AVSS);
CAP_LPF xb3_8 (VLPFZ,AVSS);
CAP_LPF xb3_9 (VLPFZ,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_LSCORE <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_LSCORE(A,AN,YN,Y,AVDD,AVSS);
input logic YN;
input logic A;
input logic AN;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL xb1_0 (Y,AN,AVSS,AVSS);
SUNTR_NCHDL xb1_1 (Y,AN,AVSS,AVSS);
SUNTR_NCHDL xb2_0 (YN,A,AVSS,AVSS);
SUNTR_NCHDL xb2_1 (YN,A,AVSS,AVSS);
SUNTR_PCHDL xc1a (net2,YN,AVDD,AVDD);
SUNTR_PCHDL xc1b (Y,YN,net2,AVDD);
SUNTR_PCHDL xc2a (net1,Y,AVDD,AVDD);
SUNTR_PCHDL xc2b (YN,Y,net1,AVDD);
endmodule

//-------------------------------------------------------------
// SUN_PLL_KICK <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_KICK(AVDD,KICK,KICK_N,PWRUP_1V8,AVSS,PWRUP_1V8_N);
input logic AVSS;
input logic AVDD;
input logic KICK;
input logic KICK_N;
input logic PWRUP_1V8;
input logic PWRUP_1V8_N;
SUNTR_TAPCELLB_CV xa1a (AVDD,AVSS);
SUNTR_IVX1_CV xa1b (PWRUP_1V8,PWRUP_1V8_N,AVDD,AVSS);
SUNTR_IVX1_CV xa1c (PWRUP_1V8_N,N1,AVDD,AVSS);
SUNTR_IVX1_CV xa2 (N1,N4,AVDD,AVSS);
SUNTR_IVX1_CV xa5a (N4,N5,AVDD,AVSS);
SUNTR_DCAPX1_CV xa5capb (AVSS,N5);
SUNTR_IVX1_CV xa6 (N5,N6,AVDD,AVSS);
SUNTR_IVX1_CV xa7 (N6,N7,AVDD,AVSS);
SUNTR_NRX1_CV xa8 (PWRUP_1V8_N,N7,KICK,AVDD,AVSS);
SUNTR_IVX1_CV xa9 (KICK,KICK_N,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_PFD <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_PFD(AVDD,CP_UP_N,CK_REF,CP_DOWN,CK_FB,AVSS);
input logic AVSS;
input logic AVDD;
input logic CP_UP_N;
input logic CK_REF;
input logic CP_DOWN;
input logic CK_FB;
SUNTR_TAPCELLB_CV xa0 (AVDD,AVSS);
SUNTR_DFTSPCX1_CV xa1 (CFB,CK_REF,CP_DUP_N,AVDD,AVSS);
SUNTR_IVX1_CV xa2 (CP_DUP_N,CP_UP,AVDD,AVSS);
SUNTR_IVX1_CV xa2a (CP_UP,CP_UP_N,AVDD,AVSS);
SUNTR_NRX1_CV xa3 (CP_DUP_N,CP_DOWN_N,CFB,AVDD,AVSS);
SUNTR_DFTSPCX1_CV xa5 (CFB,CK_FB,CP_DOWN_N,AVDD,AVSS);
SUNTR_IVX1_CV xa6 (CP_DOWN_N,CP_DOWN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_ROSC <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_ROSC(AVDD,CK,VDD_ROSC,PWRUP_1V8,AVSS);
input logic AVSS;
input logic AVDD;
input logic CK;
input logic VDD_ROSC;
input logic PWRUP_1V8;
SUN_PLL_LSCORE xa3 (N_2,N_1,CKUP,CKDWN,AVDD,AVSS);
SUNTR_IVX1_CV xa4 (CKDWN,NC1,AVDD,AVSS);
SUNTR_IVX1_CV xa5 (CKUP,CK,AVDD,AVSS);
SUNTR_TAPCELLB_CV xa6 (AVDD,AVSS);
SUNTRB_NDX1_CV xb1 (PWRUP_1V8,N_0,NI,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_0 (NI,N_7,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_1 (N_7,N_6,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_2 (N_6,N_5,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_3 (N_5,N_4,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_4 (N_4,N_3,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_5 (N_3,N_2,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_6 (N_2,N_1,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_7 (N_1,N_0,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_TAPCELLBAVSS_CV xb3 (AVDD,AVSS);
endmodule
