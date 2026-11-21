
module mux(Y, s5, s4, s3, s2, s1, s0,I0, I1, I2, I3, I4, I5, I6, I7,I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20,
             I21,I22, I23,I24, I25, I26, I27, I28, I29, I30, I31,I32, I33, I34, I35, I36, I37, I38, I39, I40, I41, I42, I43, I44, I45,
			 I46,I47,I48, I49, I50, I51, I52, I53, I54, I55, I56, I57, I58, I59, I60, I61, I62, I63);

input s5, s4, s3, s2, s1, s0, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20, I21, I22,
      I23, I24, I25, I26, I27, I28, I29, I30, I31, I32, I33, I34, I35, I36, I37, I38, I39, I40, I41, I42, I43, I44, I45, I46, I47, I48,
	  I49, I50, I51, I52, I53, I54, I55, I56, I57, I58, I59, I60, I61, I62, I63;

output Y;

wire s0bar, s1bar, s2bar, s3bar, s4bar, s5bar, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, 
     p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39, p40, p41, p42, p43, p44,
	 p45, p46, p47, p48, p49, p50, p51, p52, p53, p54, p55, p56, p57, p58, p59, p60, p61, p62, p63, r0, r1, r2, r3, r4, r5, r6;

// NOT gates
not satya1(s0bar,s0);
not satya2(s1bar,s1);
not satya3(s2bar,s2);
not satya4(s3bar,s3);
not satya5(s4bar,s4);
not satya6(s5bar,s5);

// AND gates: I0 to I15
and satya7(p0, I0, s0bar, s1bar, s2bar, s3bar, s4bar, s5bar);
and satya8(p1, I1, s0, s1bar, s2bar, s3bar, s4bar, s5bar);
and satya9(p2, I2, s0bar, s1, s2bar, s3bar, s4bar, s5bar);
and satya10(p3, I3, s0, s1, s2bar, s3bar, s4bar, s5bar);
and satya11(p4, I4, s0bar, s1bar, s2, s3bar, s4bar, s5bar);
and satya12(p5, I5, s0, s1bar, s2, s3bar, s4bar, s5bar);
and satya13(p6, I6, s0bar, s1, s2, s3bar, s4bar, s5bar);
and satya14(p7, I7, s0, s1, s2, s3bar, s4bar, s5bar);
and satya15(p8, I8, s0bar, s1bar, s2bar, s3, s4bar, s5bar);
and satya16(p9, I9, s0, s1bar, s2bar, s3, s4bar, s5bar);
and satya17(p10, I10, s0bar, s1, s2bar, s3, s4bar, s5bar);
and satya18(p11, I11, s0, s1, s2bar, s3, s4bar, s5bar);
and satya19(p12, I12, s0bar, s1bar, s2, s3, s4bar, s5bar);
and satya20(p13, I13, s0, s1bar, s2, s3, s4bar, s5bar);
and satya21(p14, I14, s0bar, s1, s2, s3, s4bar, s5bar);
and satya22(p15, I15, s0, s1, s2, s3, s4bar, s5bar);
and satya23(p16, I16, s0bar, s1bar, s2bar, s3bar, s4, s5bar);
and satya24(p17, I17, s0, s1bar, s2bar, s3bar, s4, s5bar);
and satya25(p18, I18, s0bar, s1, s2bar, s3bar, s4, s5bar);
and satya26(p19, I19, s0, s1, s2bar, s3bar, s4, s5bar);
and satya27(p20, I20, s0bar, s1bar, s2, s3bar, s4, s5bar);
and satya28(p21, I21, s0, s1bar, s2, s3bar, s4, s5bar);
and satya29(p22, I22, s0bar, s1, s2, s3bar, s4, s5bar);
and satya30(p23, I23, s0, s1, s2, s3bar, s4, s5bar);
and satya31(p24, I24, s0bar, s1bar, s2bar, s3, s4, s5bar);
and satya32(p25, I25, s0, s1bar, s2bar, s3, s4, s5bar);
and satya33(p26, I26, s0bar, s1, s2bar, s3, s4, s5bar);
and satya34(p27, I27, s0, s1, s2bar, s3, s4, s5bar);
and satya35(p28, I28, s0bar, s1bar, s2, s3, s4, s5bar);
and satya36(p29, I29, s0, s1bar, s2, s3, s4, s5bar);
and satya37(p30, I30, s0bar, s1, s2, s3, s4, s5bar);
and satya38(p31, I31, s0, s1, s2, s3, s4, s5bar);
and satya39(p32, I32, s0bar, s1bar, s2bar, s3bar, s4bar, s5);
and satya40(p33, I33, s0, s1bar, s2bar, s3bar, s4bar, s5);
and satya41(p34, I34, s0bar, s1, s2bar, s3bar, s4bar, s5);
and satya42(p35, I35, s0, s1, s2bar, s3bar, s4bar, s5);
and satya43(p36, I36, s0bar, s1bar, s2, s3bar, s4bar, s5);
and satya44(p37, I37, s0, s1bar, s2, s3bar, s4bar, s5);
and satya45(p38, I38, s0bar, s1, s2, s3bar, s4bar, s5);
and satya46(p39, I39, s0, s1, s2, s3bar, s4bar, s5);
and satya47(p40, I40, s0bar, s1bar, s2bar, s3, s4bar, s5);
and satya48(p41, I41, s0, s1bar, s2bar, s3, s4bar, s5);
and satya49(p42, I42, s0bar, s1, s2bar, s3, s4bar, s5);
and satya50(p43, I43, s0, s1, s2bar, s3, s4bar, s5);
and satya51(p44, I44, s0bar, s1bar, s2, s3, s4bar, s5);
and satya52(p45, I45, s0, s1bar, s2, s3, s4bar, s5);
and satya53(p46, I46, s0bar, s1, s2, s3, s4bar, s5);
and satya54(p47, I47, s0, s1, s2, s3, s4bar, s5);
and satya55(p48, I48, s0bar, s1bar, s2bar, s3bar, s4, s5);
and satya56(p49, I49, s0, s1bar, s2bar, s3bar, s4, s5);
and satya57(p50, I50, s0bar, s1, s2bar, s3bar, s4, s5);
and satya58(p51, I51, s0, s1, s2bar, s3bar, s4, s5);
and satya59(p52, I52, s0bar, s1bar, s2, s3bar, s4, s5);
and satya60(p53, I53, s0, s1bar, s2, s3bar, s4, s5);
and satya61(p54, I54, s0bar, s1, s2, s3bar, s4, s5);
and satya62(p55, I55, s0, s1, s2, s3bar, s4, s5);
and satya63(p56, I56, s0bar, s1bar, s2bar, s3, s4, s5);
and satya64(p57, I57, s0, s1bar, s2bar, s3, s4, s5);
and satya65(p58, I58, s0bar, s1, s2bar, s3, s4, s5);
and satya66(p59, I59, s0, s1, s2bar, s3, s4, s5);
and satya67(p60, I60, s0bar, s1bar, s2, s3, s4, s5);
and satya68(p61, I61, s0, s1bar, s2, s3, s4, s5);
and satya69(p62, I62, s0bar, s1, s2, s3, s4, s5);
and satya70(p63, I63, s0, s1, s2, s3, s4, s5);

// Seven OR groups: 10 + 10 + 10 + 10 + 10 + 10 + 4
or satya71(r0, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
or satya72(r1, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19);
or satya73(r2, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29);
or satya74(r3, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39);
or satya75(r4, p40, p41, p42, p43, p44, p45, p46, p47, p48, p49);
or satya76(r5, p50, p51, p52, p53, p54, p55, p56, p57, p58, p59);
or satya77(r6, p60, p61, p62, p63);

// Final 7-input OR gate
or satya78(Y, r0, r1, r2, r3, r4, r5, r6);

endmodule
