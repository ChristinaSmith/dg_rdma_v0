
?
Feature available: %s
81*common2
ImplementationZ17-81
:
Feature available: %s
81*common2
	SynthesisZ17-81
s
+Loading parts and site information from %s
36*device2/
-/opt/Xilinx/Vivado/2013.1/data/parts/arch.xmlZ21-36
�
!Parsing RTL primitives file [%s]
14*netlist2E
C/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/rtl/prims/rtl_prims.xmlZ29-14
�
*Finished parsing RTL primitives file [%s]
11*netlist2E
C/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/rtl/prims/rtl_prims.xmlZ29-11
n
$Using Tcl App repository from '%s'.
323*common2/
-/opt/Xilinx/Vivado/2013.1/data/XilinxTclStoreZ17-362
u
)Updating Tcl app persistent manifest '%s'325*common21
//home/cms005/.Xilinx/Vivado/tclapp/manifest.tclZ17-364
Z
Command: %s
53*	vivadotcl22
0synth_design -top fpgaTop -part xc7k325tffg900-2Z4-113
/

Starting synthesis...

3*	vivadotclZ4-3
r
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7k325tZ17-347
b
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7k325tZ17-349
O
%Your %s license expires in %s day(s)
86*common2
	Synthesis2
11Z17-86
�
%s*synth2y
wstarting Rtl Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:22 . Memory (MB): peak = 181.266 ; gain = 66.805

�
synthesizing module '%s'638*oasys2	
fpgaTop2
{/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/fpgaTop_mm705.v2
58@Z8-638
�
synthesizing module '%s'638*oasys2	
IBUFGDS2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
111738@Z8-638
L
%s*synth2=
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 

F
%s*synth27
5	Parameter DIFF_TERM bound to: FALSE - type: string 

I
%s*synth2:
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 

H
%s*synth29
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 

I
%s*synth2:
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 

�
%done synthesizing module '%s' (%s#%s)256*oasys2	
IBUFGDS2
12
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
111738@Z8-256
�
synthesizing module '%s'638*oasys2
BUFG2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
5298@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFG2
22
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
5298@Z8-256
�
synthesizing module '%s'638*oasys2
mkFTop_mm7052~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFTop_mm705.v2
1928@Z8-638
�
synthesizing module '%s'638*oasys2
mkAckAggregatorDM12�
�/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckAggregatorDM1.v2
518@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO22q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 134 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO22
32
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized02q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 16 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized02
32
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkAckAggregatorDM12
42
352�
�/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckAggregatorDM1.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
mkAckTracker2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckTracker.v2
808@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkAckTracker2
52
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckTracker.v2
808@Z8-256
�
synthesizing module '%s'638*oasys2
mkMLConsumer2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLConsumer.v2
498@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized12q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 128 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized12
52
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized22q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 129 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized22
52
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized32q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 40 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized32
52
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLConsumer2
62
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLConsumer.v2
498@Z8-256
�
synthesizing module '%s'638*oasys2
mkFAU2w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFAU.v2
578@Z8-638
�
synthesizing module '%s'638*oasys2
BRAM22q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/BRAM2.v2
318@Z8-638
6
%s*synth2'
%	Parameter PIPELINED bound to: 1'b0 

E
%s*synth26
4	Parameter ADDR_WIDTH bound to: 10 - type: integer 

F
%s*synth27
5	Parameter DATA_WIDTH bound to: 134 - type: integer 

?
%s*synth20
.	Parameter MEMSIZE bound to: 11'b10000000000 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
BRAM22
72
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/BRAM2.v2
318@Z8-256
�
synthesizing module '%s'638*oasys2
	SizedFIFO2u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
588@Z8-638
C
%s*synth24
2	Parameter p1width bound to: 134 - type: integer 

A
%s*synth22
0	Parameter p2depth bound to: 3 - type: integer 

F
%s*synth27
5	Parameter p3cntr_width bound to: 1 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

B
%s*synth23
1	Parameter p2depth2 bound to: 1 - type: integer 

�
-case statement is not full and has no default155*oasys2u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
1438@Z8-155
�
-case statement is not full and has no default155*oasys2u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
2008@Z8-155
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	SizedFIFO2
82
352u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
588@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO102r
n/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO10.v2
478@Z8-638
A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO102
92
352r
n/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO10.v2
478@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO12q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO1.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 10 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO12
102
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO1.v2
518@Z8-256
�
0Net %s in module/entity %s does not have driver.3422*oasys2<
:bram_serverAdapterB_cnt_4_PLUS_IF_bram_serverA_ETC___d10002
mkFAUZ8-3848
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFAU2
112
352w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFAU.v2
578@Z8-256
�
synthesizing module '%s'638*oasys2
mkFDU2w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFDU.v2
798@Z8-638
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFDU.v2
7418@Z8-2943
�
0Net %s in module/entity %s does not have driver.3422*oasys2<
:bram_serverAdapterB_cnt_4_PLUS_IF_bram_serverA_ETC___d10002
mkFDUZ8-3848
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFDU2
122
352w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFDU.v2
798@Z8-256
�
synthesizing module '%s'638*oasys2

mkQBGMAC2z
v/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkQBGMAC.v2
3868@Z8-638
�
synthesizing module '%s'638*oasys2
mkGMAC2x
t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
3858@Z8-638
�
synthesizing module '%s'638*oasys2	
SyncBit2s
o/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncBit.v2
428@Z8-638
1
%s*synth2"
 	Parameter init bound to: 1'b0 

�
%done synthesizing module '%s' (%s#%s)256*oasys2	
SyncBit2
132
352s
o/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncBit.v2
428@Z8-256
�
synthesizing module '%s'638*oasys2
BUFIO2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
7188@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFIO2
142
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
7188@Z8-256
�
synthesizing module '%s'638*oasys2	
IODELAY2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
149608@Z8-638
B
%s*synth23
1	Parameter DELAY_SRC bound to: I - type: string 

Q
%s*synth2B
@	Parameter HIGH_PERFORMANCE_MODE bound to: TRUE - type: string 

H
%s*synth29
7	Parameter IDELAY_TYPE bound to: FIXED - type: string 

K
%s*synth2<
:	Parameter SIGNAL_PATTERN bound to: CLOCK - type: string 

F
%s*synth27
5	Parameter IDELAY_VALUE bound to: 0 - type: integer 

F
%s*synth27
5	Parameter ODELAY_VALUE bound to: 0 - type: integer 

Q
%s*synth2B
@	Parameter REFCLK_FREQUENCY bound to: 200.000000 - type: float 

�
%done synthesizing module '%s' (%s#%s)256*oasys2	
IODELAY2
152
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
149608@Z8-256
�
synthesizing module '%s'638*oasys2

SyncResetA2v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 7 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2

SyncResetA2
162
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
synthesizing module '%s'638*oasys2
BUFR2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
8578@Z8-638
I
%s*synth2:
8	Parameter BUFR_DIVIDE bound to: BYPASS - type: string 

I
%s*synth2:
8	Parameter SIM_DEVICE bound to: VIRTEX4 - type: string 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFR2
172
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
8578@Z8-256
�
synthesizing module '%s'638*oasys2	
mkCRC322y
u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkCRC32.v2
558@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
mkCRC322
182
352y
u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkCRC32.v2
558@Z8-256
�
synthesizing module '%s'638*oasys2

SyncFIFO2t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-638
D
%s*synth25
3	Parameter dataWidth bound to: 10 - type: integer 

?
%s*synth20
.	Parameter depth bound to: 8 - type: integer 

C
%s*synth24
2	Parameter indxWidth bound to: 3 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2

SyncFIFO2
192
352t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-256
�
synthesizing module '%s'638*oasys2
SyncResetA__parameterized02v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncResetA__parameterized02
192
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
synthesizing module '%s'638*oasys2
ODDR2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
210138@Z8-638
M
%s*synth2>
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 

1
%s*synth2"
 	Parameter INIT bound to: 1'b0 

B
%s*synth23
1	Parameter SRTYPE bound to: SYNC - type: string 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
ODDR2
202
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
210138@Z8-256
�
synthesizing module '%s'638*oasys2

u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/ResetInverter.v2
308@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2

212
352y
u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/ResetInverter.v2
308@Z8-256
�
synthesizing module '%s'638*oasys2
SyncFIFO__parameterized02t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-638
D
%s*synth25
3	Parameter dataWidth bound to: 10 - type: integer 

@
%s*synth21
/	Parameter depth bound to: 16 - type: integer 

C
%s*synth24
2	Parameter indxWidth bound to: 4 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncFIFO__parameterized02
212
352t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-256
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
15748@Z8-3536
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2x
t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
15068@Z8-2943
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkGMAC2
222
352x
t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
3858@Z8-256
�
synthesizing module '%s'638*oasys2
SyncFIFO__parameterized12t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-638
D
%s*synth25
3	Parameter dataWidth bound to: 40 - type: integer 

?
%s*synth20
.	Parameter depth bound to: 8 - type: integer 

C
%s*synth24
2	Parameter indxWidth bound to: 3 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncFIFO__parameterized12
222
352t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized42q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 10 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized42
222
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2

mkQBGMAC2
232
352z
v/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkQBGMAC.v2
3868@Z8-256
�
synthesizing module '%s'638*oasys2
mkHBDG2QABS2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
588@Z8-638
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
3638@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
3848@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
3918@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
3848@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
3848@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
3848@Z8-2943
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkHBDG2QABS2
242
352}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
588@Z8-256
�
synthesizing module '%s'638*oasys2

IDELAYCTRL2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
127218@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2

IDELAYCTRL2
252
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
127218@Z8-256
�
synthesizing module '%s'638*oasys2

MakeResetA2v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/MakeResetA.v2
408@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 1 - type: integer 

1
%s*synth2"
 	Parameter init bound to: 1'b0 

�
%done synthesizing module '%s' (%s#%s)256*oasys2

MakeResetA2
262
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/MakeResetA.v2
408@Z8-256
�
synthesizing module '%s'638*oasys2
mkMergeToWireDM12�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
968@Z8-638
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
4898@Z8-3536
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
4308@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
3968@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
4308@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
4308@Z8-2943
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMergeToWireDM12
272
352�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
968@Z8-256
�
synthesizing module '%s'638*oasys2
mkMergeForkFAU2�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFAU.v2
1128@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMergeForkFAU2
282
352�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFAU.v2
1128@Z8-256
�
synthesizing module '%s'638*oasys2
mkMergeForkFDU2�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
688@Z8-638
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
4208@Z8-3536
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMergeForkFDU2
292
352�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
688@Z8-256
�
synthesizing module '%s'638*oasys2
mkMLProducer2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLProducer.v2
428@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized52q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 32 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized52
292
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLProducer.v2
2698@Z8-2943
z
0Net %s in module/entity %s does not have driver.3422*oasys2
MUX_lfsr_r_write_1__VAL_10[3]2
mkMLProducerZ8-3848
z
0Net %s in module/entity %s does not have driver.3422*oasys2
MUX_lfsr_r_write_1__VAL_10[5]2
mkMLProducerZ8-3848
}
0Net %s in module/entity %s does not have driver.3422*oasys2"
 MUX_lfsr_r_write_1__VAL_10[30:7]2
mkMLProducerZ8-3848
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLProducer2
302
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLProducer.v2
428@Z8-256
�
synthesizing module '%s'638*oasys2

mkReceiver2|
x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
448@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized62q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
?
%s*synth20
.	Parameter width bound to: 5 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized62
302
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
3298@Z8-3536
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
4028@Z8-3536
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2|
x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
2448@Z8-2943
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2|
x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
2878@Z8-2943
�
%done synthesizing module '%s' (%s#%s)256*oasys2

mkReceiver2
312
352|
x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
448@Z8-256
�
synthesizing module '%s'638*oasys2
SyncResetA__parameterized12v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
C
%s*synth24
2	Parameter RSTDELAY bound to: 15 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncResetA__parameterized12
312
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
synthesizing module '%s'638*oasys2
mkSenderDM12}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
448@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized72q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 133 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized72
312
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
4688@Z8-3536
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
5138@Z8-3536
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
5798@Z8-3536
�
2unable to generate logic for unpartitioned %s node2943*oasys2
	construct2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
3098@Z8-2943
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkSenderDM12
322
352}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
448@Z8-256
�
synthesizing module '%s'638*oasys2
IBUFDS_GTE22;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
109378@Z8-638
E
%s*synth26
4	Parameter CLKCM_CFG bound to: TRUE - type: string 

G
%s*synth28
6	Parameter CLKRCV_TRST bound to: TRUE - type: string 

:
%s*synth2+
)	Parameter CLKSWING_CFG bound to: 2'b11 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUFDS_GTE22
332
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
109378@Z8-256
�
synthesizing module '%s'638*oasys2
SyncResetA__parameterized22v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 0 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncResetA__parameterized22
332
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFTop_mm7052
342
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFTop_mm705.v2
1928@Z8-256
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
ftop2
mkFTop_mm7052
212
182
{/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/fpgaTop_mm705.v2
438@Z8-350
`
0Net %s in module/entity %s does not have driver.3422*oasys2

mdio_mdc2	
fpgaTopZ8-3848
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
fpgaTop2
352
352
{/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/fpgaTop_mm705.v2
58@Z8-256
Q
!design %s has unconnected port %s3331*oasys2	
fpgaTop2

mdio_mdcZ8-3331
Q
!design %s has unconnected port %s3331*oasys2	
fpgaTop2

mdio_mddZ8-3331
�
%s*synth2z
xfinished Rtl Elaboration : Time (s): cpu = 00:00:32 ; elapsed = 00:00:40 . Memory (MB): peak = 339.695 ; gain = 225.234

(
%s*synth2
Report Check Netlist: 

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A     |Item             |Errors|Warnings|Status|Description      

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A1    |multi_driven_nets|     0|       0|Passed|Multi driven nets

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

K
-Analyzing %s Unisim elements for replacement
17*netlist2
13Z29-17
O
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28
�
Loading clock regions from %s
13*device2V
T/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/kintex7/kintex7/xc7k325t/ClockRegion.xmlZ21-13
�
Loading clock buffers from %s
11*device2W
U/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/kintex7/kintex7/xc7k325t/ClockBuffers.xmlZ21-11
�
&Loading clock placement rules from %s
318*place2J
H/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/kintex7/ClockPlacerRules.xmlZ30-318
�
)Loading package pin functions from %s...
17*device2F
D/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/kintex7/PinFunctions.xmlZ21-17
�
Loading package from %s
16*device2Y
W/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/kintex7/kintex7/xc7k325t/ffg900/Package.xmlZ21-16
}
Loading io standards from %s
15*device2G
E/opt/Xilinx/Vivado/2013.1/data/./parts/xilinx/kintex7/IOStandards.xmlZ21-15
�
+Loading device configuration modes from %s
14*device2E
C/opt/Xilinx/Vivado/2013.1/data/parts/xilinx/kintex7/ConfigModes.xmlZ21-14
�
/Loading list of drcs for the architecture : %s
17*drc2?
=/opt/Xilinx/Vivado/2013.1/data/./parts/xilinx/kintex7/drc.xmlZ23-17
5

Processing XDC Constraints
244*projectZ1-262
<
%Done setting XDC timing constraints.
35*timingZ38-35
�
Parsing XDC File [%s]
179*designutils2a
_/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/constrs_1/imports/constrs/kc705.xdcZ20-179
�
Finished Parsing XDC File [%s]
178*designutils2a
_/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/constrs_1/imports/constrs/kc705.xdcZ20-178
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2a
_/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/constrs_1/imports/constrs/kc705.xdc2_
]/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.runs/synth_1/.Xil/fpgaTop_propImpl.xdcZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
*
closing all dcps
277*projectZ1-463
�
!Unisim Transformation Summary:
%s111*project2q
o  A total of 2 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
  IODELAY => IDELAYE2: 1 instances
Z1-111
1
%Phase 0 | Netlist Checksum: 255668b1
*common
�
%s*synth2u
sstarting synthesize : Time (s): cpu = 00:01:20 ; elapsed = 00:01:33 . Memory (MB): peak = 923.227 ; gain = 808.766

�
synthesizing module '%s'638*oasys2	
fpgaTop2
{/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/fpgaTop_mm705.v2
58@Z8-638
�
synthesizing module '%s'638*oasys2	
IBUFGDS2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
111738@Z8-638
L
%s*synth2=
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 

F
%s*synth27
5	Parameter DIFF_TERM bound to: FALSE - type: string 

I
%s*synth2:
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 

H
%s*synth29
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 

I
%s*synth2:
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 

�
%done synthesizing module '%s' (%s#%s)256*oasys2	
IBUFGDS2
12
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
111738@Z8-256
�
synthesizing module '%s'638*oasys2
BUFG2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
5298@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFG2
22
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
5298@Z8-256
�
synthesizing module '%s'638*oasys2
mkFTop_mm7052~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFTop_mm705.v2
1928@Z8-638
�
synthesizing module '%s'638*oasys2
mkAckAggregatorDM12�
�/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckAggregatorDM1.v2
518@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO22q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 134 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO22
32
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized02q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 16 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized02
32
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkAckAggregatorDM12
42
352�
�/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckAggregatorDM1.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
mkAckTracker2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckTracker.v2
808@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkAckTracker2
52
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkAckTracker.v2
808@Z8-256
�
synthesizing module '%s'638*oasys2
mkMLConsumer2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLConsumer.v2
498@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized12q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 128 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized12
52
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized22q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 129 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized22
52
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized32q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 40 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized32
52
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLConsumer2
62
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLConsumer.v2
498@Z8-256
�
synthesizing module '%s'638*oasys2
mkFAU2w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFAU.v2
578@Z8-638
�
synthesizing module '%s'638*oasys2
BRAM22q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/BRAM2.v2
318@Z8-638
6
%s*synth2'
%	Parameter PIPELINED bound to: 1'b0 

E
%s*synth26
4	Parameter ADDR_WIDTH bound to: 10 - type: integer 

F
%s*synth27
5	Parameter DATA_WIDTH bound to: 134 - type: integer 

?
%s*synth20
.	Parameter MEMSIZE bound to: 11'b10000000000 

c
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2	
RAM_regZ8-3971
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BRAM22
72
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/BRAM2.v2
318@Z8-256
�
synthesizing module '%s'638*oasys2
	SizedFIFO2u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
588@Z8-638
C
%s*synth24
2	Parameter p1width bound to: 134 - type: integer 

A
%s*synth22
0	Parameter p2depth bound to: 3 - type: integer 

F
%s*synth27
5	Parameter p3cntr_width bound to: 1 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

B
%s*synth23
1	Parameter p2depth2 bound to: 1 - type: integer 

�
-case statement is not full and has no default155*oasys2u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
1438@Z8-155
�
-case statement is not full and has no default155*oasys2u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
2008@Z8-155
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	SizedFIFO2
82
352u
q/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v2
588@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO102r
n/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO10.v2
478@Z8-638
A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO102
92
352r
n/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO10.v2
478@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO12q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO1.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 10 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO12
102
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO1.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFAU2
112
352w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFAU.v2
578@Z8-256
�
synthesizing module '%s'638*oasys2
mkFDU2w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFDU.v2
798@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFDU2
122
352w
s/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFDU.v2
798@Z8-256
�
synthesizing module '%s'638*oasys2

mkQBGMAC2z
v/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkQBGMAC.v2
3868@Z8-638
�
synthesizing module '%s'638*oasys2
mkGMAC2x
t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
3858@Z8-638
�
synthesizing module '%s'638*oasys2	
SyncBit2s
o/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncBit.v2
428@Z8-638
1
%s*synth2"
 	Parameter init bound to: 1'b0 

�
%done synthesizing module '%s' (%s#%s)256*oasys2	
SyncBit2
132
352s
o/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncBit.v2
428@Z8-256
�
synthesizing module '%s'638*oasys2
BUFIO2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
7188@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFIO2
142
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
7188@Z8-256
�
synthesizing module '%s'638*oasys2	
IODELAY2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
149608@Z8-638
B
%s*synth23
1	Parameter DELAY_SRC bound to: I - type: string 

Q
%s*synth2B
@	Parameter HIGH_PERFORMANCE_MODE bound to: TRUE - type: string 

H
%s*synth29
7	Parameter IDELAY_TYPE bound to: FIXED - type: string 

K
%s*synth2<
:	Parameter SIGNAL_PATTERN bound to: CLOCK - type: string 

F
%s*synth27
5	Parameter IDELAY_VALUE bound to: 0 - type: integer 

F
%s*synth27
5	Parameter ODELAY_VALUE bound to: 0 - type: integer 

Q
%s*synth2B
@	Parameter REFCLK_FREQUENCY bound to: 200.000000 - type: float 

�
%done synthesizing module '%s' (%s#%s)256*oasys2	
IODELAY2
152
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
149608@Z8-256
�
synthesizing module '%s'638*oasys2

SyncResetA2v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 7 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2

SyncResetA2
162
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
synthesizing module '%s'638*oasys2
BUFR2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
8578@Z8-638
I
%s*synth2:
8	Parameter BUFR_DIVIDE bound to: BYPASS - type: string 

I
%s*synth2:
8	Parameter SIM_DEVICE bound to: VIRTEX4 - type: string 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFR2
172
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2
8578@Z8-256
�
synthesizing module '%s'638*oasys2	
mkCRC322y
u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkCRC32.v2
558@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
mkCRC322
182
352y
u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkCRC32.v2
558@Z8-256
�
synthesizing module '%s'638*oasys2

SyncFIFO2t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-638
D
%s*synth25
3	Parameter dataWidth bound to: 10 - type: integer 

?
%s*synth20
.	Parameter depth bound to: 8 - type: integer 

C
%s*synth24
2	Parameter indxWidth bound to: 3 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2

SyncFIFO2
192
352t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-256
�
synthesizing module '%s'638*oasys2
SyncResetA__parameterized02v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncResetA__parameterized02
192
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
synthesizing module '%s'638*oasys2
ODDR2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
210138@Z8-638
M
%s*synth2>
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 

1
%s*synth2"
 	Parameter INIT bound to: 1'b0 

B
%s*synth23
1	Parameter SRTYPE bound to: SYNC - type: string 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
ODDR2
202
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
210138@Z8-256
�
synthesizing module '%s'638*oasys2

u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/ResetInverter.v2
308@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2

212
352y
u/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/ResetInverter.v2
308@Z8-256
�
synthesizing module '%s'638*oasys2
SyncFIFO__parameterized02t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-638
D
%s*synth25
3	Parameter dataWidth bound to: 10 - type: integer 

@
%s*synth21
/	Parameter depth bound to: 16 - type: integer 

C
%s*synth24
2	Parameter indxWidth bound to: 4 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncFIFO__parameterized02
212
352t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-256
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
15748@Z8-3536
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkGMAC2
222
352x
t/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkGMAC.v2
3858@Z8-256
�
synthesizing module '%s'638*oasys2
SyncFIFO__parameterized12t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-638
D
%s*synth25
3	Parameter dataWidth bound to: 40 - type: integer 

?
%s*synth20
.	Parameter depth bound to: 8 - type: integer 

C
%s*synth24
2	Parameter indxWidth bound to: 3 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncFIFO__parameterized12
222
352t
p/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v2
478@Z8-256
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized42q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 10 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized42
222
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2

mkQBGMAC2
232
352z
v/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkQBGMAC.v2
3868@Z8-256
�
synthesizing module '%s'638*oasys2
mkHBDG2QABS2}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
588@Z8-638
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
sr_reg2
1202
1182}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
12908@Z8-3936
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkHBDG2QABS2
242
352}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkHBDG2QABS.v2
588@Z8-256
�
synthesizing module '%s'638*oasys2

IDELAYCTRL2;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
127218@Z8-638
�
%done synthesizing module '%s' (%s#%s)256*oasys2

IDELAYCTRL2
252
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
127218@Z8-256
�
synthesizing module '%s'638*oasys2

MakeResetA2v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/MakeResetA.v2
408@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 1 - type: integer 

1
%s*synth2"
 	Parameter init bound to: 1'b0 

�
%done synthesizing module '%s' (%s#%s)256*oasys2

MakeResetA2
262
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/MakeResetA.v2
408@Z8-256
�
synthesizing module '%s'638*oasys2
mkMergeToWireDM12�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
968@Z8-638
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
4898@Z8-3536
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMergeToWireDM12
272
352�
~/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeToWireDM1.v2
968@Z8-256
�
synthesizing module '%s'638*oasys2
mkMergeForkFAU2�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFAU.v2
1128@Z8-638
�
.merging register '%s' into '%s' in module '%s'3438*oasys2
macDst_reg[47:0]2
macSrc_reg[47:0]2
mkMergeForkFAU2�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFAU.v2
4578@Z8-3888
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMergeForkFAU2
282
352�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFAU.v2
1128@Z8-256
�
synthesizing module '%s'638*oasys2
mkMergeForkFDU2�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
688@Z8-638
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
4208@Z8-3536
�
.merging register '%s' into '%s' in module '%s'3438*oasys2
macDst_reg[47:0]2
macSrc_reg[47:0]2
mkMergeForkFDU2�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
3538@Z8-3888
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMergeForkFDU2
292
352�
|/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMergeForkFDU.v2
688@Z8-256
�
synthesizing module '%s'638*oasys2
mkMLProducer2~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLProducer.v2
428@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized52q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
@
%s*synth21
/	Parameter width bound to: 32 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized52
292
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkMLProducer2
302
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkMLProducer.v2
428@Z8-256
�
synthesizing module '%s'638*oasys2

mkReceiver2|
x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
448@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized62q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
?
%s*synth20
.	Parameter width bound to: 5 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized62
302
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
3298@Z8-3536
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
4028@Z8-3536
�
%done synthesizing module '%s' (%s#%s)256*oasys2

mkReceiver2
312
352|
x/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkReceiver.v2
448@Z8-256
�
synthesizing module '%s'638*oasys2
SyncResetA__parameterized12v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
C
%s*synth24
2	Parameter RSTDELAY bound to: 15 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncResetA__parameterized12
312
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
synthesizing module '%s'638*oasys2
mkSenderDM12}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
448@Z8-638
�
synthesizing module '%s'638*oasys2
FIFO2__parameterized72q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-638
A
%s*synth22
0	Parameter width bound to: 133 - type: integer 

A
%s*synth22
0	Parameter guarded bound to: 1 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
FIFO2__parameterized72
312
352q
m/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v2
518@Z8-256
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
4688@Z8-3536
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
5138@Z8-3536
�
?HDL ADVISOR - Pragma %s detected. Simulation mismatch may occur3412*oasys2

y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
5798@Z8-3536
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkSenderDM12
322
352}
y/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkSenderDM1.v2
448@Z8-256
�
synthesizing module '%s'638*oasys2
IBUFDS_GTE22;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
109378@Z8-638
E
%s*synth26
4	Parameter CLKCM_CFG bound to: TRUE - type: string 

G
%s*synth28
6	Parameter CLKRCV_TRST bound to: TRUE - type: string 

:
%s*synth2+
)	Parameter CLKSWING_CFG bound to: 2'b11 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUFDS_GTE22
332
352;
7/opt/Xilinx/Vivado/2013.1/scripts/rt/data/unisim_comp.v2	
109378@Z8-256
�
synthesizing module '%s'638*oasys2
SyncResetA__parameterized22v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-638
B
%s*synth23
1	Parameter RSTDELAY bound to: 0 - type: integer 

�
%done synthesizing module '%s' (%s#%s)256*oasys2
SyncResetA__parameterized22
332
352v
r/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v2
438@Z8-256
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mkFTop_mm7052
342
352~
z/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/mkFTop_mm705.v2
1928@Z8-256
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
ftop2
mkFTop_mm7052
212
182
{/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/fpgaTop_mm705.v2
438@Z8-350
`
0Net %s in module/entity %s does not have driver.3422*oasys2

mdio_mdc2	
fpgaTopZ8-3848
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
fpgaTop2
352
352
{/home/cms005/Desktop/cms_v1/vivado/project_8/project_8.srcs/sources_1/imports/ome/cms005/Desktop/cms_v1/rtl/fpgaTop_mm705.v2
58@Z8-256
�
%s*synth2u
sfinished synthesize : Time (s): cpu = 00:01:39 ; elapsed = 00:01:53 . Memory (MB): peak = 923.227 ; gain = 808.766

�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:39 ; elapsed = 00:01:53 . Memory (MB): peak = 923.227 ; gain = 808.766

�
$decloning instance '%s' (%s) to '%s'223*oasys2$
"ftop/gmac/gmac/txRS_iobTxClk_reset2

#ftop/gmac/gmac/txRS_iobTxData_resetZ8-223
�
$decloning instance '%s' (%s) to '%s'223*oasys2$
"ftop/gmac/gmac/txRS_iobTxClk_reset2

"ftop/gmac/gmac/txRS_iobTxEna_resetZ8-223
�
$decloning instance '%s' (%s) to '%s'223*oasys2$
"ftop/gmac/gmac/txRS_iobTxClk_reset2

"ftop/gmac/gmac/txRS_iobTxErr_resetZ8-223
n
$decloning instance '%s' (%s) to '%s'223*oasys2
ftop/gmac/ovfBit2	
SyncBit2
ftop/gmac/unfBitZ8-223
)
%s*synth2
Report RTL Partitions: 

?
%s*synth20
.-----+-----------------+-----------+---------

?
%s*synth20
.     |RTL Partition    |Replication|Instances

?
%s*synth20
.-----+-----------------+-----------+---------

?
%s*synth20
.1    |mkFTop_mm705__GB0|          1|    49414

?
%s*synth20
.2    |mkFTop_mm705__GB1|          1|    16482

?
%s*synth20
.3    |mkFTop_mm705__GB2|          1|    17573

?
%s*synth20
.4    |fpgaTop__GC0     |          1|        2

?
%s*synth20
.-----+-----------------+-----------+---------

{
%s*synth2l
jPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB8 0 RAMB16 0 RAMB18 140 RAMB36 70)

�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:01:52 ; elapsed = 00:02:07 . Memory (MB): peak = 923.227 ; gain = 808.766

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     32 Bit       Adders := 6     

?
%s*synth20
.	   3 Input     16 Bit       Adders := 2     

?
%s*synth20
.	   2 Input     16 Bit       Adders := 7     

?
%s*synth20
.	   2 Input     12 Bit       Adders := 1     

?
%s*synth20
.	   2 Input     10 Bit       Adders := 24    

?
%s*synth20
.	   3 Input     10 Bit       Adders := 2     

?
%s*synth20
.	   2 Input      8 Bit       Adders := 66    

?
%s*synth20
.	   3 Input      6 Bit       Adders := 2     

?
%s*synth20
.	   4 Input      6 Bit       Adders := 4     

?
%s*synth20
.	   5 Input      5 Bit       Adders := 1     

?
%s*synth20
.	   2 Input      5 Bit       Adders := 7     

?
%s*synth20
.	   3 Input      5 Bit       Adders := 1     

?
%s*synth20
.	   2 Input      4 Bit       Adders := 3     

?
%s*synth20
.	   2 Input      3 Bit       Adders := 1     

?
%s*synth20
.	   3 Input      3 Bit       Adders := 4     

?
%s*synth20
.	   2 Input      2 Bit       Adders := 3     

?
%s*synth20
.	   2 Input      1 Bit       Adders := 17    


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input     32 Bit         XORs := 2     

?
%s*synth20
.	   2 Input     10 Bit         XORs := 2     

?
%s*synth20
.	   2 Input      5 Bit         XORs := 4     

?
%s*synth20
.	   2 Input      4 Bit         XORs := 12    

?
%s*synth20
.	   2 Input      3 Bit         XORs := 8     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              384 Bit    Registers := 2     

?
%s*synth20
.	              192 Bit    Registers := 1     

?
%s*synth20
.	              134 Bit    Registers := 93    

?
%s*synth20
.	              133 Bit    Registers := 2     

?
%s*synth20
.	              129 Bit    Registers := 12    

?
%s*synth20
.	              128 Bit    Registers := 6     

?
%s*synth20
.	              118 Bit    Registers := 1     

?
%s*synth20
.	               80 Bit    Registers := 1     

?
%s*synth20
.	               48 Bit    Registers := 3     

?
%s*synth20
.	               40 Bit    Registers := 14    

?
%s*synth20
.	               33 Bit    Registers := 3     

?
%s*synth20
.	               32 Bit    Registers := 11    

?
%s*synth20
.	               30 Bit    Registers := 1     

?
%s*synth20
.	               16 Bit    Registers := 52    

?
%s*synth20
.	               12 Bit    Registers := 1     

?
%s*synth20
.	               10 Bit    Registers := 32    

?
%s*synth20
.	                8 Bit    Registers := 8     

?
%s*synth20
.	                6 Bit    Registers := 8     

?
%s*synth20
.	                5 Bit    Registers := 18    

?
%s*synth20
.	                4 Bit    Registers := 15    

?
%s*synth20
.	                3 Bit    Registers := 9     

?
%s*synth20
.	                2 Bit    Registers := 17    

?
%s*synth20
.	                1 Bit    Registers := 287   


%s*synth2
+---RAMs : 

?
%s*synth20
.	             134K Bit         RAMs := 4     

?
%s*synth20
.	              320 Bit         RAMs := 2     

?
%s*synth20
.	              268 Bit         RAMs := 8     

?
%s*synth20
.	              160 Bit         RAMs := 1     

?
%s*synth20
.	               80 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   4 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 8     

?
%s*synth20
.	   4 Input    133 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input     33 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input     32 Bit        Muxes := 24    

?
%s*synth20
.	   3 Input     32 Bit        Muxes := 2     

?
%s*synth20
.	   4 Input     16 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input     16 Bit        Muxes := 7     

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 35    

?
%s*synth20
.	   5 Input      8 Bit        Muxes := 1     

?
%s*synth20
.	   4 Input      8 Bit        Muxes := 5     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 75    

?
%s*synth20
.	   2 Input      6 Bit        Muxes := 2     

?
%s*synth20
.	   4 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 9     

?
%s*synth20
.	   6 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      4 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      3 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      2 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      2 Bit        Muxes := 7     

?
%s*synth20
.	   4 Input      2 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 72    

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 8     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 321   

?
%s*synth20
.	   4 Input      1 Bit        Muxes := 4     

4
%s*synth2%
#Hierarchical RTL Component report 

!
%s*synth2
Module fpgaTop 

0
%s*synth2!
Detailed RTL Component Info : 

7
%s*synth2(
&Module SyncResetA__parameterized0__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                2 Bit    Registers := 1     

&
%s*synth2
Module SizedFIFO__1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

3
%s*synth2$
"Module FIFO2__parameterized0__12 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module mkFAU__1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   3 Input     10 Bit       Adders := 1     

?
%s*synth20
.	   2 Input     10 Bit       Adders := 6     

?
%s*synth20
.	   3 Input      3 Bit       Adders := 1     


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input     10 Bit         XORs := 1     

?
%s*synth20
.	   2 Input      3 Bit         XORs := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 1     

?
%s*synth20
.	               10 Bit    Registers := 6     

?
%s*synth20
.	                3 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 5     

#
%s*synth2
Module FIFO2__31 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module mkFDU__1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     16 Bit       Adders := 1     

?
%s*synth20
.	   2 Input     10 Bit       Adders := 6     

?
%s*synth20
.	   3 Input      3 Bit       Adders := 1     


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input      3 Bit         XORs := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 3     

?
%s*synth20
.	               10 Bit    Registers := 5     

?
%s*synth20
.	                3 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 5     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     16 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 6     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

/
%s*synth2 
Module FIFO2__parameterized7 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              133 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     


%s*synth2
Module FIFO2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized3__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO10__8 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

/
%s*synth2 
Module FIFO2__parameterized2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              129 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__23 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     


%s*synth2
Module mkFAU 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   3 Input     10 Bit       Adders := 1     

?
%s*synth20
.	   2 Input     10 Bit       Adders := 6     

?
%s*synth20
.	   3 Input      3 Bit       Adders := 1     


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input     10 Bit         XORs := 1     

?
%s*synth20
.	   2 Input      3 Bit         XORs := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 1     

?
%s*synth20
.	               10 Bit    Registers := 6     

?
%s*synth20
.	                3 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 5     

#
%s*synth2
Module FIFO2__16 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__26 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

!
%s*synth2
Module SyncBit 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

!
%s*synth2
Module mkCRC32 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input     32 Bit         XORs := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               32 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     32 Bit        Muxes := 9     


%s*synth2
Module BRAM2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	             134K Bit         RAMs := 1     

/
%s*synth2 
Module FIFO2__parameterized4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module BRAM2__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	             134K Bit         RAMs := 1     


%s*synth2
Module FIFO1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

#
%s*synth2
Module FIFO2__35 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized0__6 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__24 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized3__4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

4
%s*synth2%
#Module SyncResetA__parameterized2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     

"
%s*synth2
Module FIFO2__9 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

%
%s*synth2
Module mkSenderDM1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     32 Bit       Adders := 1     

?
%s*synth20
.	   3 Input     16 Bit       Adders := 2     

?
%s*synth20
.	   2 Input     16 Bit       Adders := 5     

?
%s*synth20
.	   3 Input      6 Bit       Adders := 1     

?
%s*synth20
.	   4 Input      6 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              384 Bit    Registers := 1     

?
%s*synth20
.	              192 Bit    Registers := 1     

?
%s*synth20
.	               80 Bit    Registers := 1     

?
%s*synth20
.	               16 Bit    Registers := 5     

?
%s*synth20
.	                6 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 6     


%s*synth2

---Muxes : 

?
%s*synth20
.	   4 Input    133 Bit        Muxes := 1     

?
%s*synth20
.	   4 Input     16 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input     16 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 19    

?
%s*synth20
.	   2 Input      6 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   4 Input      2 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      2 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__29 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__17 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module BRAM2__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	             134K Bit         RAMs := 1     

2
%s*synth2#
!Module FIFO2__parameterized3__5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module SyncBit__4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

#
%s*synth2
Module FIFO2__21 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized2__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              129 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

&
%s*synth2
Module SizedFIFO__7 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

(
%s*synth2
Module mkMergeForkFDU 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               48 Bit    Registers := 1     

?
%s*synth20
.	               16 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   4 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

#
%s*synth2
Module FIFO10__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

4
%s*synth2%
#Module SyncResetA__parameterized1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 1     

#
%s*synth2
Module FIFO2__13 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO1__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

"
%s*synth2
Module FIFO1__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     


%s*synth2
Module mkFDU 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     16 Bit       Adders := 1     

?
%s*synth20
.	   2 Input     10 Bit       Adders := 6     

?
%s*synth20
.	   3 Input      3 Bit       Adders := 1     


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input      3 Bit         XORs := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 3     

?
%s*synth20
.	               10 Bit    Registers := 5     

?
%s*synth20
.	                3 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 5     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     16 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 6     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

 
%s*synth2
Module mkGMAC 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     12 Bit       Adders := 1     

?
%s*synth20
.	   2 Input      5 Bit       Adders := 2     

?
%s*synth20
.	   2 Input      4 Bit       Adders := 1     

?
%s*synth20
.	   2 Input      3 Bit       Adders := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               48 Bit    Registers := 1     

?
%s*synth20
.	               12 Bit    Registers := 1     

?
%s*synth20
.	                8 Bit    Registers := 2     

?
%s*synth20
.	                6 Bit    Registers := 1     

?
%s*synth20
.	                5 Bit    Registers := 2     

?
%s*synth20
.	                4 Bit    Registers := 1     

?
%s*synth20
.	                3 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 15    


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 3     

?
%s*synth20
.	   5 Input      8 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input      6 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      3 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 10    

$
%s*synth2
Module mkReceiver 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   3 Input      6 Bit       Adders := 1     

?
%s*synth20
.	   4 Input      6 Bit       Adders := 2     

?
%s*synth20
.	   2 Input      1 Bit       Adders := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              384 Bit    Registers := 1     

?
%s*synth20
.	                6 Bit    Registers := 2     

?
%s*synth20
.	                2 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 1     

?
%s*synth20
.	   6 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      2 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      2 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

 
%s*synth2
Module FIFO10 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

#
%s*synth2
Module FIFO2__27 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__12 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__30 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

&
%s*synth2
Module SizedFIFO__5 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

"
%s*synth2
Module FIFO1__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

,
%s*synth2
Module mkAckAggregatorDM1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

/
%s*synth2 
Module FIFO2__parameterized0 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

&
%s*synth2
Module mkFTop_mm705 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      4 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                4 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      4 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 5     

$
%s*synth2
Module SyncBit__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

2
%s*synth2#
!Module FIFO2__parameterized0__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO2__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO10__7 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

$
%s*synth2
Module SyncBit__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

&
%s*synth2
Module SizedFIFO__2 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

4
%s*synth2%
#Module SyncResetA__parameterized0 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                2 Bit    Registers := 1     

#
%s*synth2
Module FIFO10__4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

2
%s*synth2#
!Module FIFO2__parameterized2__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              129 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module SyncBit__9 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

#
%s*synth2
Module FIFO10__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

#
%s*synth2
Module FIFO2__25 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized3__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__11 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

3
%s*synth2$
"Module FIFO2__parameterized0__13 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

%
%s*synth2
Module mkHBDG2QABS 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   5 Input      5 Bit       Adders := 1     

?
%s*synth20
.	   2 Input      5 Bit       Adders := 5     

?
%s*synth20
.	   3 Input      5 Bit       Adders := 1     

?
%s*synth20
.	   2 Input      2 Bit       Adders := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              118 Bit    Registers := 1     

?
%s*synth20
.	                5 Bit    Registers := 4     

?
%s*synth20
.	                2 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 8     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 16    

?
%s*synth20
.	   4 Input      8 Bit        Muxes := 4     

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 4     

?
%s*synth20
.	   4 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   4 Input      2 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 10    

*
%s*synth2
Module ResetInverter__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
Module FIFO2__7 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized3__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized0__8 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

/
%s*synth2 
Module FIFO2__parameterized3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO2__6 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module SyncFIFO 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input      4 Bit         XORs := 4     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 1     

?
%s*synth20
.	                5 Bit    Registers := 2     

?
%s*synth20
.	                4 Bit    Registers := 4     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	               80 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

2
%s*synth2#
!Module FIFO2__parameterized2__5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              129 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__10 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__19 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__28 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module SyncBit__5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

3
%s*synth2$
"Module FIFO2__parameterized0__11 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

&
%s*synth2
Module SizedFIFO__3 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

3
%s*synth2$
"Module FIFO2__parameterized0__16 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

3
%s*synth2$
"Module FIFO2__parameterized0__10 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO10__5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

$
%s*synth2
Module SyncResetA 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                8 Bit    Registers := 1     

/
%s*synth2 
Module FIFO2__parameterized5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               32 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module SyncBit__7 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

(
%s*synth2
Module mkMergeForkFAU 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               48 Bit    Registers := 1     

?
%s*synth20
.	               16 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

2
%s*synth2#
!Module FIFO2__parameterized0__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO10__6 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

#
%s*synth2
Module FIFO10__9 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

&
%s*synth2
Module mkMLConsumer 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     32 Bit       Adders := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               33 Bit    Registers := 1     

?
%s*synth20
.	               32 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     33 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 2     

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 4     

$
%s*synth2
Module SyncBit__6 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

#
%s*synth2
Module FIFO10__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

2
%s*synth2#
!Module FIFO2__parameterized0__5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__37 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__34 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module SyncFIFO__parameterized1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input      4 Bit         XORs := 4     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 1     

?
%s*synth20
.	                5 Bit    Registers := 2     

?
%s*synth20
.	                4 Bit    Registers := 4     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              320 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

#
%s*synth2
Module FIFO2__32 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__22 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO2__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO2__4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module mkCRC32__1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input     32 Bit         XORs := 1     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               32 Bit    Registers := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     32 Bit        Muxes := 9     

2
%s*synth2#
!Module FIFO2__parameterized1__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              128 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

*
%s*synth2
Module mkMergeToWireDM1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                8 Bit    Registers := 1     

?
%s*synth20
.	                2 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   4 Input      2 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 6     

?
%s*synth20
.	   4 Input      1 Bit        Muxes := 1     

2
%s*synth2#
!Module FIFO2__parameterized0__4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO2__5 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

3
%s*synth2$
"Module FIFO2__parameterized0__15 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized2__4 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              129 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized0__7 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

5
%s*synth2&
$Module SyncFIFO__parameterized1__1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input      4 Bit         XORs := 4     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               40 Bit    Registers := 1     

?
%s*synth20
.	                5 Bit    Registers := 2     

?
%s*synth20
.	                4 Bit    Registers := 4     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              320 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

&
%s*synth2
Module mkAckTracker 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 1     

2
%s*synth2#
!Module FIFO2__parameterized4__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

)
%s*synth2
Module mkMLProducer__1 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     32 Bit       Adders := 2     

?
%s*synth20
.	   2 Input      8 Bit       Adders := 33    

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              128 Bit    Registers := 1     

?
%s*synth20
.	               33 Bit    Registers := 1     

?
%s*synth20
.	               32 Bit    Registers := 2     

?
%s*synth20
.	                8 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     33 Bit        Muxes := 1     

?
%s*synth20
.	   3 Input     32 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input     32 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 16    

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

/
%s*synth2 
Module FIFO2__parameterized1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              128 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized0__9 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__14 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

/
%s*synth2 
Module FIFO2__parameterized6 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                5 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module mkQBGMAC 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      2 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               30 Bit    Registers := 1     

?
%s*synth20
.	                2 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     10 Bit        Muxes := 2     

?
%s*synth20
.	   4 Input      8 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      2 Bit        Muxes := 3     

?
%s*synth20
.	   4 Input      1 Bit        Muxes := 3     

&
%s*synth2
Module mkMLProducer 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input     32 Bit       Adders := 2     

?
%s*synth20
.	   2 Input      8 Bit       Adders := 33    

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              128 Bit    Registers := 1     

?
%s*synth20
.	               33 Bit    Registers := 1     

?
%s*synth20
.	               32 Bit    Registers := 2     

?
%s*synth20
.	                8 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input     33 Bit        Muxes := 1     

?
%s*synth20
.	   3 Input     32 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input     32 Bit        Muxes := 3     

?
%s*synth20
.	   2 Input      8 Bit        Muxes := 16    

?
%s*synth20
.	   2 Input      5 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

&
%s*synth2
Module SizedFIFO__6 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

#
%s*synth2
Module FIFO2__33 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__20 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module SyncBit__8 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

$
%s*synth2
Module MakeResetA 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 1     

#
%s*synth2
Module FIFO2__15 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module FIFO2__18 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

3
%s*synth2$
"Module FIFO2__parameterized0__14 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module BRAM2__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	             134K Bit         RAMs := 1     

&
%s*synth2
Module SizedFIFO__4 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

'
%s*synth2
Module ResetInverter 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
Module FIFO2__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

"
%s*synth2
Module FIFO2__8 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

#
%s*synth2
Module SizedFIFO 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---Adders : 

?
%s*synth20
.	   2 Input      1 Bit       Adders := 2     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 1     

?
%s*synth20
.	                1 Bit    Registers := 3     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              268 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   5 Input    134 Bit        Muxes := 1     

?
%s*synth20
.	   5 Input      1 Bit        Muxes := 1     

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

?
%s*synth20
.	   7 Input      1 Bit        Muxes := 9     

2
%s*synth2#
!Module FIFO2__parameterized0__3 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               16 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

$
%s*synth2
Module SyncBit__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                1 Bit    Registers := 3     

#
%s*synth2
Module FIFO2__36 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              134 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

7
%s*synth2(
&Module SyncResetA__parameterized0__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	                2 Bit    Registers := 1     

2
%s*synth2#
!Module SyncFIFO__parameterized0 

0
%s*synth2!
Detailed RTL Component Info : 


%s*synth2
+---XORs : 

?
%s*synth20
.	   2 Input      5 Bit         XORs := 4     

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               10 Bit    Registers := 1     

?
%s*synth20
.	                6 Bit    Registers := 3     

?
%s*synth20
.	                5 Bit    Registers := 4     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2
+---RAMs : 

?
%s*synth20
.	              160 Bit         RAMs := 1     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 2     

2
%s*synth2#
!Module FIFO2__parameterized2__2 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	              129 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

2
%s*synth2#
!Module FIFO2__parameterized5__1 

0
%s*synth2!
Detailed RTL Component Info : 

"
%s*synth2
+---Registers : 

?
%s*synth20
.	               32 Bit    Registers := 2     

?
%s*synth20
.	                1 Bit    Registers := 2     


%s*synth2

---Muxes : 

?
%s*synth20
.	   2 Input      1 Bit        Muxes := 3     

�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/full_reg_reg 2

reg__523Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/empty_reg_reg 2

reg__522Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[15] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[14] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[13] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[12] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[11] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[10] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[9] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[8] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[7] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[6] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[5] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[4] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[3] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[2] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[1] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data1_reg_reg[0] 2

reg__521Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[15] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[14] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[13] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[12] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[11] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[10] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[9] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[8] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[7] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[6] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[5] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[4] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[3] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[2] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[1] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
\numFrmsF/data0_reg_reg[0] 2

reg__520Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[133] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[132] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[131] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[130] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[129] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[128] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[127] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[126] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[125] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[124] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[123] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[122] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[121] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[120] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[119] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[118] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[117] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[116] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[115] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[114] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[113] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[112] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[111] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[110] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[109] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[108] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[107] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[106] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[105] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[104] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[103] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[102] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[101] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
 \ackIngressF/data1_reg_reg[100] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[99] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[98] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[97] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[96] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[95] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[94] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[93] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[92] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[91] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[90] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[89] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[88] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[87] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[86] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[85] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[84] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[83] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[82] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[81] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[80] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[79] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[78] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[77] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[76] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[75] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[74] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[73] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[72] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[71] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[70] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[53] 2

reg__292Z8-3332
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\ackIngressF/data1_reg_reg[52] 2

reg__292Z8-3332
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33322
100Z17-14
Q
!design %s has unconnected port %s3331*oasys2	
fpgaTop2

mdio_mdcZ8-3331
G
%s*synth28
6-------> Message [Synth 8-3332] suppressed 1740 times

Q
!design %s has unconnected port %s3331*oasys2	
fpgaTop2

mdio_mddZ8-3331
�
%s*synth2�
�Finished Cross Boundary Optimization : Time (s): cpu = 00:01:57 ; elapsed = 00:02:11 . Memory (MB): peak = 923.227 ; gain = 808.766

�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2)
'bram_serverAdapterB_outDataCore/arr_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2)
'bram_serverAdapterB_outDataCore/arr_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2)
'bram_serverAdapterB_outDataCore/arr_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2)
'bram_serverAdapterB_outDataCore/arr_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2
gmac/rxRS_rxF/fifoMem_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2
gmac/txRS_txF/fifoMem_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2
rxF/fifoMem_regZ8-3967
�
�The signal %s was recognized as a RAM template but could not be mapped onto a dedicated block RAM for the following reason(s): The *asynchronous read* does not match a dedicated block HDL RAM template.
3469*oasys2
txF/fifoMem_regZ8-3967
�
%s*synth2�
�---------------------------------------------------------------------------------
 Start RAM, DSP and Shift Register Reporting 

c
%s*synth2T
R---------------------------------------------------------------------------------


%s*synth2

Block RAM:

�
%s*synth2�
�|Module Name|RTL Object|PORT A (depth X width)|W|R|PORT B (depth X width)|W|R|OUT_REG     |RAMB18E1|RAMB36E1|Hierarchical Name|

�
%s*synth2�
�|-----------|----------|----------------------|-|-|----------------------|-|-|------------|--------|--------|-----------------|

�
%s*synth2�
�|BRAM2      |RAM_reg   |1 K X 134(READ_FIRST) |W|R|1 K X 134(READ_FIRST) |W|R|Port A and B|0       |4       |extram           |

�
%s*synth2�
�|-----------|----------|----------------------|-|-|----------------------|-|-|------------|--------|--------|-----------------|


#
%s*synth2

Distributed RAM:

�
%s*synth2�
~|Module Name|RTL Object                             |Inference Criteria|Size (depth X width)|Primitives   |Hierarchical Name|

�
%s*synth2�
~|-----------|---------------------------------------|------------------|--------------------|-------------|-----------------|

�
%s*synth2�
~|not found  |bram_serverAdapterB_outDataCore/arr_reg|Implied           |2 X 134             |RAM32M x 23  |ram__12->mkFAU   |

�
%s*synth2�
~|not found  |bram_serverAdapterB_outDataCore/arr_reg|Implied           |2 X 134             |RAM32M x 23  |ram__13->mkFAU   |

�
%s*synth2�
~|not found  |bram_serverAdapterB_outDataCore/arr_reg|Implied           |2 X 134             |RAM32M x 23  |ram__14->mkFDU   |

�
%s*synth2�
~|not found  |bram_serverAdapterB_outDataCore/arr_reg|Implied           |2 X 134             |RAM32M x 23  |ram__15->mkFDU   |

�
%s*synth2�
~|not found  |gmac/rxRS_rxF/fifoMem_reg              |Implied           |8 X 10              |RAM32M x 2   |ram__16->mkQBGMAC|

�
%s*synth2�
~|not found  |gmac/txRS_txF/fifoMem_reg              |Implied           |16 X 10             |RAM32M x 2   |ram__17->mkQBGMAC|

�
%s*synth2�
~|not found  |rxF/fifoMem_reg                        |Implied           |8 X 40              |RAM32M x 7   |ram__18->mkQBGMAC|

�
%s*synth2�
~|not found  |txF/fifoMem_reg                        |Implied           |8 X 40              |RAM32M x 7   |ram__19->mkQBGMAC|

�
%s*synth2�
|-----------|---------------------------------------|------------------|--------------------|-------------|-----------------|


�
%s*synth2�
�---------------------------------------------------------------------------------
 Finished RAM, DSP and Shift Register Reporting 

c
%s*synth2T
R---------------------------------------------------------------------------------

�
6propagating constant %s across sequential element (%s)3333*oasys2
028
6ftopi_0/ackAggregatorDM1/\ackEgressF/data1_reg_reg[5] Z8-3333
F
%s*synth27
5-------> Message [Synth 8-3332] suppressed 632 times

y
6propagating constant %s across sequential element (%s)3333*oasys2
12#
!ftopi_0/mfFAUDM1/\macSrc_reg[47] Z8-3333
y
6propagating constant %s across sequential element (%s)3333*oasys2
12#
!ftopi_0/mfFDUDM1/\macSrc_reg[47] Z8-3333
x
6propagating constant %s across sequential element (%s)3333*oasys2
02"
 ftopi_0/mfFAUDM1/\macSrc_reg[7] Z8-3333
x
6propagating constant %s across sequential element (%s)3333*oasys2
02"
 ftopi_0/mfFDUDM1/\macSrc_reg[7] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
128
6ftopi_0/ackAggregatorDM1/\ackEgressF/data1_reg_reg[0] Z8-3333
}
6propagating constant %s across sequential element (%s)3333*oasys2
12'
%ftopi_0/mergeWireDM1/\didDM1_reg[13] Z8-3333
}
6propagating constant %s across sequential element (%s)3333*oasys2
02'
%ftopi_0/mergeWireDM1/\didDM1_reg[15] Z8-3333
{
6propagating constant %s across sequential element (%s)3333*oasys2
12%
#ftopi_0/fdu1DM1/\timeoutVal_reg[2] Z8-3333
{
6propagating constant %s across sequential element (%s)3333*oasys2
02%
#ftopi_0/fdu1DM1/\timeoutVal_reg[1] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0ftopi_0/fau2DM1/\bram_serverAdapterA_cnt_reg[0] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0ftopi_0/fau1DM1/\bram_serverAdapterA_cnt_reg[0] Z8-3333
{
6propagating constant %s across sequential element (%s)3333*oasys2
12%
#ftopi_0/fdu2DM1/\timeoutVal_reg[2] Z8-3333
{
6propagating constant %s across sequential element (%s)3333*oasys2
02%
#ftopi_0/fdu2DM1/\timeoutVal_reg[1] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0ftopi_0/fdu1DM1/\bram_serverAdapterA_cnt_reg[0] Z8-3333
y
6propagating constant %s across sequential element (%s)3333*oasys2
02#
!ftopi_0/gmac/\gmac/txRS_txER_reg Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0ftopi_0/fdu2DM1/\bram_serverAdapterA_cnt_reg[0] Z8-3333
|
6propagating constant %s across sequential element (%s)3333*oasys2
12&
$ftopi_2/producer2DM1/\lfsr_r_reg[0] Z8-3333
F
%s*synth27
5-------> Message [Synth 8-3332] suppressed 203 times

}
6propagating constant %s across sequential element (%s)3333*oasys2
02'
%ftopi_2/producer2DM1/\lfsr_r_reg[21] Z8-3333
~
6propagating constant %s across sequential element (%s)3333*oasys2
02(
&ftopi_2/producer2DM1/\lengthR_reg[21] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[6] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[7] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
120
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[0] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[1] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[2] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[3] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[4] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_2/producer2DM1/i_13/\dataInitVal_reg[5] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
025
3ftopi_2/producer2DM1/\nextLengthF/data1_reg_reg[0] Z8-3333
|
6propagating constant %s across sequential element (%s)3333*oasys2
12&
$ftopi_1/\producer1DM1/lfsr_r_reg[0] Z8-3333
D
%s*synth25
3-------> Message [Synth 8-3332] suppressed 4 times

|
6propagating constant %s across sequential element (%s)3333*oasys2
02&
$ftopi_1/\producer1DM1/lfsr_r_reg[5] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[6] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[7] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[4] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[3] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[2] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[1] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
120
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[0] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
020
.ftopi_1/i_25/\producer1DM1/dataInitVal_reg[5] Z8-3333
}
6propagating constant %s across sequential element (%s)3333*oasys2
02'
%ftopi_1/\producer1DM1/lengthR_reg[5] Z8-3333
u
6propagating constant %s across sequential element (%s)3333*oasys2
02
ftopi_1/senderDM1/\mh_reg[7] Z8-3333
v
6propagating constant %s across sequential element (%s)3333*oasys2
02 
ftopi_1/senderDM1/\fh_reg[55] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
025
3ftopi_1/\producer1DM1/nextLengthF/data1_reg_reg[0] Z8-3333
F
%s*synth27
5-------> Message [Synth 8-3332] suppressed 203 times

�
%s*synth2|
zFinished Area Optimization : Time (s): cpu = 00:02:49 ; elapsed = 00:03:04 . Memory (MB): peak = 974.320 ; gain = 859.859

�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:50 ; elapsed = 00:03:06 . Memory (MB): peak = 974.320 ; gain = 859.859

^
%s*synth2O
Minfo: (0) optimizing 'ftopi_1' (path group default) @ 1199.0ps(1/1) (4 secs)

o
%s*synth2`
^info: (1) optimizing 'ftopi_0/gmii_rx_rxd_i[7]' (path group default) @ 1578.0ps(1/1) (4 secs)

G
%s*synth28
6info: start optimizing equally critical endpoints ...

G
%s*synth28
6info: done optimizing (1) equally critical endpoints.

o
%s*synth2`
^info: (2) optimizing 'ftopi_0/gmii_rx_rxd_i[7]' (path group default) @ 1578.0ps(1/1) (5 secs)

:
%s*synth2+
)info: done optimizing path group default

?
%s*synth20
.info: start optimizing sub-critical range ...

R
%s*synth2C
Ainfo: done optimizing sub-critical range for path group default.

;
%s*synth2,
*info: done optimizing sub-critical range.

�
%s*synth2~
|Finished Timing Optimization : Time (s): cpu = 00:03:07 ; elapsed = 00:03:23 . Memory (MB): peak = 974.320 ; gain = 859.859

�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[16] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[17] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[18] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[19] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[20] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[21] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[22] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[23] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[24] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[25] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[26] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[27] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[28] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[29] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[30] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[31] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[15] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[14] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[12] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[13] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[8] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[9] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[10] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
023
1\ftop/producer1DM1/nextLengthF/data0_reg_reg[11] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[2] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[0] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[1] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[6] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[7] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[4] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
022
0\ftop/producer1DM1/nextLengthF/data0_reg_reg[5] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
027
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[130] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[98] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[34] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
127
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[131] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
126
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[99] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[35] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
027
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[128] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[96] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[32] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
127
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[129] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
126
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[97] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[33] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
027
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[126] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[94] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[30] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
127
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[127] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
126
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[95] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
126
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[31] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
027
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[106] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[74] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[10] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
127
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[107] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[75] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
126
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[11] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
027
5\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[104] Z8-3333
�
6propagating constant %s across sequential element (%s)3333*oasys2
026
4\ftop/ackAggregatorDM1/ackEgressF/data0_reg_reg[72] Z8-3333
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33332
100Z17-14
E
%s*synth26
4-------> Message [Synth 8-3333] suppressed 66 times

F
%s*synth27
5-------> Message [Synth 8-3332] suppressed 171 times

�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau1DM1/bram_memory/RAM_reg_0 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau1DM1/bram_memory/RAM_reg_1 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau1DM1/bram_memory/RAM_reg_2 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau1DM1/bram_memory/RAM_reg_3 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau2DM1/bram_memory/RAM_reg_0 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau2DM1/bram_memory/RAM_reg_1 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau2DM1/bram_memory/RAM_reg_2 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fau2DM1/bram_memory/RAM_reg_3 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu1DM1/bram_memory/RAM_reg_0 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu1DM1/bram_memory/RAM_reg_1 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu1DM1/bram_memory/RAM_reg_2 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu1DM1/bram_memory/RAM_reg_3 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu2DM1/bram_memory/RAM_reg_0 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu2DM1/bram_memory/RAM_reg_1 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu2DM1/bram_memory/RAM_reg_2 Z8-3972
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no output register was merged into the block ram.
3474*oasys2&
$\ftop/fdu2DM1/bram_memory/RAM_reg_3 Z8-3972
�
%s*synth2}
{Finished Technology Mapping : Time (s): cpu = 00:04:04 ; elapsed = 00:04:21 . Memory (MB): peak = 974.320 ; gain = 859.859

�
%s*synth2w
uFinished IO Insertion : Time (s): cpu = 00:04:08 ; elapsed = 00:04:25 . Memory (MB): peak = 974.320 ; gain = 859.859

(
%s*synth2
Report Check Netlist: 

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A     |Item             |Errors|Warnings|Status|Description      

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

R
%s*synth2C
A1    |multi_driven_nets|     0|       0|Passed|Multi driven nets

R
%s*synth2C
A-----+-----------------+------+--------+------+-----------------

�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:04:08 ; elapsed = 00:04:26 . Memory (MB): peak = 974.320 ; gain = 859.859

�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:04:11 ; elapsed = 00:04:28 . Memory (MB): peak = 974.320 ; gain = 859.859

�
%s*synth2�
�---------------------------------------------------------------------------------
 Start RAM, DSP and Shift Register Reporting 

c
%s*synth2T
R---------------------------------------------------------------------------------

)
%s*synth2

Static Shift Register:

�
%s*synth2}
{|Module Name|RTL Name                      |Length|Width|Reset Signal|Pull out first Reg|Pull out last Reg|SRL16E|SRLC32E|

�
%s*synth2}
{|-----------|------------------------------|------|-----|------------|------------------|-----------------|------|-------|

�
%s*synth2}
{|fpgaTop    |ftop/rstndb/reset_hold_reg[15]|16    |1    |YES         |NO                |NO               |1     |0      |

�
%s*synth2~
||-----------|------------------------------|------|-----|------------|------------------|-----------------|------|-------|


�
%s*synth2�
�---------------------------------------------------------------------------------
 Finished RAM, DSP and Shift Register Reporting 

c
%s*synth2T
R---------------------------------------------------------------------------------

%
%s*synth2
Report BlackBoxes: 

/
%s*synth2 
-----+-------------+---------

/
%s*synth2 
     |BlackBox name|Instances

/
%s*synth2 
-----+-------------+---------

/
%s*synth2 
-----+-------------+---------

%
%s*synth2
Report Cell Usage: 

)
%s*synth2
-----+-----------+-----

)
%s*synth2
     |Cell       |Count

)
%s*synth2
-----+-----------+-----

)
%s*synth2
1    |BUFG       |    2

)
%s*synth2
2    |BUFIO      |    1

)
%s*synth2
3    |BUFR_1     |    1

)
%s*synth2
4    |CARRY4     |  142

)
%s*synth2
5    |IBUFDS_GTE2|    1

)
%s*synth2
6    |IDELAYCTRL |    1

)
%s*synth2
7    |IODELAY    |    1

)
%s*synth2
8    |LUT1       |  341

)
%s*synth2
9    |LUT2       |  687

)
%s*synth2
10   |LUT3       | 1895

)
%s*synth2
11   |LUT4       | 1561

)
%s*synth2
12   |LUT5       | 2615

)
%s*synth2
13   |LUT6       | 8549

)
%s*synth2
14   |MUXF7      |    4

)
%s*synth2
15   |ODDR_1     |   11

)
%s*synth2
16   |RAM32M     |  110

)
%s*synth2
17   |RAMB36E1_1 |   16

)
%s*synth2
18   |SRL16E     |    1

)
%s*synth2
19   |FDCE       |  276

)
%s*synth2
20   |FDPE       |   16

)
%s*synth2
21   |FDRE       |14326

)
%s*synth2
22   |FDSE       |  450

)
%s*synth2
23   |IBUF       |   14

)
%s*synth2
24   |IBUFGDS    |    1

)
%s*synth2
25   |OBUF       |   20

)
%s*synth2
-----+-----------+-----

)
%s*synth2
Report Instance Areas: 

a
%s*synth2R
P-----+-------------------------------------+-----------------------------+-----

a
%s*synth2R
P     |Instance                             |Module                       |Cells

a
%s*synth2R
P-----+-------------------------------------+-----------------------------+-----

a
%s*synth2R
P1    |top                                  |                             |31042

a
%s*synth2R
P2    |  ftop                               |mkFTop_mm705                 |31006

a
%s*synth2R
P3    |    ackTrackerDM1                    |mkAckTracker                 |  352

a
%s*synth2R
P4    |      fidIngressF1                   |FIFO2__parameterized0_84     |   69

a
%s*synth2R
P5    |      fidF                           |FIFO2__parameterized0_85     |   56

a
%s*synth2R
P6    |      fidIngressF2                   |FIFO2__parameterized0_86     |   63

a
%s*synth2R
P7    |      fidEgressF1                    |FIFO2__parameterized0_87     |   54

a
%s*synth2R
P8    |      fidEgressF2                    |FIFO2__parameterized0_88     |   54

a
%s*synth2R
P9    |      ackIngressF                    |FIFO2_89                     |   56

a
%s*synth2R
P10   |    sys1_rst                         |SyncResetA__parameterized2   |    1

a
%s*synth2R
P11   |    producer1DM1                     |mkMLProducer                 |  920

a
%s*synth2R
P12   |      mesgEgressF                    |FIFO2__parameterized2_82     |  526

a
%s*synth2R
P13   |      nextLengthF                    |FIFO2__parameterized5_83     |   44

a
%s*synth2R
P14   |    senderDM1                        |mkSenderDM1                  | 4426

a
%s*synth2R
P15   |      mesgIngressF                   |FIFO2__parameterized2_79     |  509

a
%s*synth2R
P16   |      fcF                            |FIFO2__parameterized0_80     |  158

a
%s*synth2R
P17   |      bsEnqF                         |FIFO2__parameterized7        | 1012

a
%s*synth2R
P18   |      datagramEgressF                |FIFO2_81                     | 1987

a
%s*synth2R
P19   |    fau1DM1                          |mkFAU                        | 1678

a
%s*synth2R
P20   |      datagramIngressF               |FIFO2_72                     |  444

a
%s*synth2R
P21   |      bram_memory                    |BRAM2_73                     |    5

a
%s*synth2R
P22   |      lengthF                        |FIFO1_74                     |   80

a
%s*synth2R
P23   |      bram_serverAdapterB_outDataCore|SizedFIFO_75                 |  440

a
%s*synth2R
P24   |      fidEgressF                     |FIFO2__parameterized0_76     |   56

a
%s*synth2R
P25   |      datagramEgressF                |FIFO2_77                     |  542

a
%s*synth2R
P26   |      freeF                          |FIFO10_78                    |    9

a
%s*synth2R
P27   |    idc_idcRst                       |MakeResetA                   |    8

a
%s*synth2R
P28   |      rstSync                        |SyncResetA__parameterized0_71|    5

a
%s*synth2R
P29   |    consumerDM1                      |mkMLConsumer                 | 2094

a
%s*synth2R
P30   |      dataIngressRcvF                |FIFO2__parameterized1        |  399

a
%s*synth2R
P31   |      mesgIngressRcvF                |FIFO2__parameterized2_66     |  397

a
%s*synth2R
P32   |      dataIngressExpF                |FIFO2__parameterized1_67     |  473

a
%s*synth2R
P33   |      mesgIngressExpF                |FIFO2__parameterized2_68     |  398

a
%s*synth2R
P34   |      metaIngressRcvF                |FIFO2__parameterized3_69     |  162

a
%s*synth2R
P35   |      metaIngressExpF                |FIFO2__parameterized3_70     |  147

a
%s*synth2R
P36   |    forkSndDM1_datagramIngressF      |FIFO2                        |  413

a
%s*synth2R
P37   |    mfFAUDM1                         |mkMergeForkFAU               | 2015

a
%s*synth2R
P38   |      datagramIngressF               |FIFO2_59                     |  412

a
%s*synth2R
P39   |      freeF2                         |FIFO10_60                    |    2

a
%s*synth2R
P40   |      ackEgressF                     |FIFO2_61                     |  463

a
%s*synth2R
P41   |      datagramEgressF1               |FIFO2_62                     |  413

a
%s*synth2R
P42   |      datagramEgressF2               |FIFO2_63                     |  410

a
%s*synth2R
P43   |      ackIngressF                    |FIFO2_64                     |  309

a
%s*synth2R
P44   |      freeF1                         |FIFO10_65                    |    3

a
%s*synth2R
P45   |    fdu1DM1                          |mkFDU                        | 1816

a
%s*synth2R
P46   |      freeF                          |FIFO10_49                    |    2

a
%s*synth2R
P47   |      bram_serverAdapterB_outDataCore|SizedFIFO_50                 |  457

a
%s*synth2R
P48   |      fidEgressF                     |FIFO2__parameterized0_51     |   56

a
%s*synth2R
P49   |      bram_memory                    |BRAM2_52                     |    4

a
%s*synth2R
P50   |      fidIngressF                    |FIFO2__parameterized0_53     |   63

a
%s*synth2R
P51   |      fidF                           |FIFO2__parameterized0_54     |   61

a
%s*synth2R
P52   |      lengthF                        |FIFO1_55                     |   58

a
%s*synth2R
P53   |      datagramIngressF               |FIFO2_56                     |  434

a
%s*synth2R
P54   |      datagramEgressF                |FIFO2_57                     |  543

a
%s*synth2R
P55   |      readTriggerF                   |FIFO10_58                    |    8

a
%s*synth2R
P56   |    receiverDM1                      |mkReceiver                   | 3540

a
%s*synth2R
P57   |      datagramIngressF               |FIFO2_47                     |  883

a
%s*synth2R
P58   |      nbValF                         |FIFO2__parameterized6        |  308

a
%s*synth2R
P59   |      mesgEgressF                    |FIFO2__parameterized2_48     | 1852

a
%s*synth2R
P60   |    producer2DM1                     |mkMLProducer_0               |  923

a
%s*synth2R
P61   |      mesgEgressF                    |FIFO2__parameterized2        |  530

a
%s*synth2R
P62   |      nextLengthF                    |FIFO2__parameterized5        |   44

a
%s*synth2R
P63   |    gmac                             |mkQBGMAC                     | 1167

a
%s*synth2R
P64   |      txfun_inF                      |FIFO2__parameterized3_39     |  142

a
%s*synth2R
P65   |      rxfun_inF                      |FIFO2__parameterized4        |   43

a
%s*synth2R
P66   |      txF                            |SyncFIFO__parameterized1     |  102

a
%s*synth2R
P67   |      txfun_outF                     |FIFO2__parameterized4_40     |   37

a
%s*synth2R
P68   |      gmac                           |mkGMAC                       |  575

a
%s*synth2R
P69   |        txRS_txRst                   |SyncResetA__parameterized0   |    4

a
%s*synth2R
P70   |        txRS_txF                     |SyncFIFO__parameterized0     |  138

a
%s*synth2R
P71   |        txRS_crc                     |mkCRC32                      |   47

a
%s*synth2R
P72   |        rxRS_rxOperateS              |SyncBit_43                   |   14

a
%s*synth2R
P73   |        txRS_txOperateS              |SyncBit_44                   |   39

a
%s*synth2R
P74   |        rxRS_rxRst                   |SyncResetA__parameterized0_45|    4

a
%s*synth2R
P75   |        rxRS_rxF                     |SyncFIFO                     |   85

a
%s*synth2R
P76   |        rxRS_crc                     |mkCRC32_46                   |   90

a
%s*synth2R
P77   |      rxfun_outF                     |FIFO2__parameterized3_41     |  127

a
%s*synth2R
P78   |      rxF                            |SyncFIFO__parameterized1_42  |  103

a
%s*synth2R
P79   |      txOper                         |SyncBit                      |    3

a
%s*synth2R
P80   |    fau2DM1                          |mkFAU_1                      | 1678

a
%s*synth2R
P81   |      datagramIngressF               |FIFO2_32                     |  444

a
%s*synth2R
P82   |      bram_memory                    |BRAM2_33                     |    5

a
%s*synth2R
P83   |      lengthF                        |FIFO1_34                     |   81

a
%s*synth2R
P84   |      bram_serverAdapterB_outDataCore|SizedFIFO_35                 |  440

a
%s*synth2R
P85   |      fidEgressF                     |FIFO2__parameterized0_36     |   56

a
%s*synth2R
P86   |      datagramEgressF                |FIFO2_37                     |  542

a
%s*synth2R
P87   |      freeF                          |FIFO10_38                    |    8

a
%s*synth2R
P88   |    rstndb                           |SyncResetA__parameterized1   |   22

a
%s*synth2R
P89   |    mergeWireDM1                     |mkMergeToWireDM1             | 2606

a
%s*synth2R
P90   |      egressWireInF                  |FIFO2_26                     |  596

a
%s*synth2R
P91   |      datagramIngressSndF            |FIFO2_27                     |  411

a
%s*synth2R
P92   |      egressWireOutF                 |FIFO2_28                     |  410

a
%s*synth2R
P93   |      datagramIngressRcvF            |FIFO2_29                     |  410

a
%s*synth2R
P94   |      ackIngressSndF                 |FIFO2_30                     |   69

a
%s*synth2R
P95   |      ackIngressRcvF                 |FIFO2_31                     |  547

a
%s*synth2R
P96   |    mfFDUDM1                         |mkMergeForkFDU               | 1491

a
%s*synth2R
P97   |      ackEgressF                     |FIFO2_21                     |   55

a
%s*synth2R
P98   |      datagramEgressF                |FIFO2_22                     |  544

a
%s*synth2R
P99   |      datagramIngressF1              |FIFO2_23                     |  415

a
%s*synth2R
P100  |      ackIngressF                    |FIFO2_24                     |   60

a
%s*synth2R
P101  |      datagramIngressF2              |FIFO2_25                     |  414

a
%s*synth2R
P102  |    mergeRcvDM1_datagramEgressF      |FIFO2_2                      |  410

a
%s*synth2R
P103  |    forkSndDM1_freeF1                |FIFO10                       |    2

a
%s*synth2R
P104  |    ackAggregatorDM1                 |mkAckAggregatorDM1           |  269

a
%s*synth2R
P105  |      ackEgressF                     |FIFO2_18                     |  104

a
%s*synth2R
P106  |      fidIngressF1                   |FIFO2__parameterized0_19     |   72

a
%s*synth2R
P107  |      fidIngressF2                   |FIFO2__parameterized0_20     |   56

a
%s*synth2R
P108  |    forkSndDM1_freeF2                |FIFO10_3                     |    1

a
%s*synth2R
P109  |    mergeRcvDM1_datagramIngressF1    |FIFO2_4                      |  544

a
%s*synth2R
P110  |    mergeRcvDM1_datagramIngressF2    |FIFO2_5                      |  410

a
%s*synth2R
P111  |    fdu2DM1                          |mkFDU_6                      | 1816

a
%s*synth2R
P112  |      freeF                          |FIFO10_12                    |    2

a
%s*synth2R
P113  |      bram_serverAdapterB_outDataCore|SizedFIFO                    |  456

a
%s*synth2R
P114  |      fidEgressF                     |FIFO2__parameterized0        |   56

a
%s*synth2R
P115  |      bram_memory                    |BRAM2                        |    4

a
%s*synth2R
P116  |      fidIngressF                    |FIFO2__parameterized0_13     |   63

a
%s*synth2R
P117  |      fidF                           |FIFO2__parameterized0_14     |   62

a
%s*synth2R
P118  |      lengthF                        |FIFO1                        |   59

a
%s*synth2R
P119  |      datagramIngressF               |FIFO2_15                     |  433

a
%s*synth2R
P120  |      datagramEgressF                |FIFO2_16                     |  543

a
%s*synth2R
P121  |      readTriggerF                   |FIFO10_17                    |    8

a
%s*synth2R
P122  |    forkSndDM1_datagramEgressF1      |FIFO2_7                      |  411

a
%s*synth2R
P123  |    forkSndDM1_datagramEgressF2      |FIFO2_8                      |  411

a
%s*synth2R
P124  |    hbdg2qabs                        |mkHBDG2QABS                  | 1470

a
%s*synth2R
P125  |      hexbdgEgressF                  |FIFO2_9                      |  409

a
%s*synth2R
P126  |      hexbdgIngressF                 |FIFO2_10                     |  465

a
%s*synth2R
P127  |      qabsIngressF                   |FIFO2__parameterized3        |  352

a
%s*synth2R
P128  |      qabsEgressF                    |FIFO2__parameterized3_11     |  128

a
%s*synth2R
P-----+-------------------------------------+-----------------------------+-----

�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:04:19 ; elapsed = 00:04:37 . Memory (MB): peak = 974.320 ; gain = 859.859

Z
%s*synth2K
ISynthesis finished with 0 errors, 0 critical warnings and 3558 warnings.

�
%s*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:04:19 ; elapsed = 00:04:37 . Memory (MB): peak = 974.320 ; gain = 859.859

L
-Analyzing %s Unisim elements for replacement
17*netlist2
153Z29-17
O
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28
*
closing all dcps
277*projectZ1-463
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 112 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
  IODELAY => IDELAYE2: 1 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 110 instances
Z1-111
1
%Phase 0 | Netlist Checksum: 58b85052
*common
:
Releasing license: %s
83*common2
	SynthesisZ17-83
x
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3702
1152
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
synth_designZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:04:302

00:04:472

1037.4452	
887.617Z17-268
�
vreport_utilization: Time (s): cpu = 00:00:00.30 ; elapsed = 00:00:00.49 . Memory (MB): peak = 1037.445 ; gain = 0.000
*common
S
Exiting %s at %s...
206*common2
Vivado2
Wed Jun 19 17:31:11 2013Z17-206