
module testbench;

reg s5,s4,s3,s2,s1,s0;

reg I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,
     I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63;

wire Y;

integer sel;
integer errors;

mux dut(Y,s5,s4,s3,s2,s1,s0,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,
       I24,I25,I26,I27,I28,I29,I30,I31,I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,
       I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63);

initial begin

I0=0;  I1=1;  I2=0;  I3=1;
I4=0;  I5=1;  I6=0;  I7=1;
I8=0;  I9=1;  I10=0; I11=1;
I12=0; I13=1; I14=0; I15=1;

I16=0; I17=1; I18=0; I19=1;
I20=0; I21=1; I22=0; I23=1;
I24=0; I25=1; I26=0; I27=1;
I28=0; I29=1; I30=0; I31=1;

I32=0; I33=1; I34=0; I35=1;
I36=0; I37=1; I38=0; I39=1;
I40=0; I41=1; I42=0; I43=1;
I44=0; I45=1; I46=0; I47=1;

I48=0; I49=1; I50=0; I51=1;
I52=0; I53=1; I54=0; I55=1;
I56=0; I57=1; I58=0; I59=1;
I60=0; I61=1; I62=0; I63=1;

errors=0;

for (sel=0; sel<64; sel=sel+1) begin

    s5=sel[5];
    s4=sel[4];
    s3=sel[3];
    s2=sel[2];
    s1=sel[1];
    s0=sel[0];

    #1;

    $display("S=%b%b%b%b%b%b | Y=%b | Expected=%b",
             s5,s4,s3,s2,s1,s0,Y,sel[0]);

    if (Y !== sel[0])
        errors=errors+1;

end

if (errors==0)
    $display("ALL 64 TESTS PASSED");
else
    $display("TOTAL FAILURES = %0d",errors);

$finish;

end

endmodule
