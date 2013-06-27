
6
Command: %s
53*	vivadotcl2
place_designZ4-113
w
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7k325tZ17-347
g
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7k325tZ17-349
T
%Your %s license expires in %s day(s)
86*common2
Implementation2
14Z17-86
U
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22
;
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
:

Starting %s Task
103*constraints2
PlacerZ18-103
b
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
2Z30-611
P

Phase %s%s
101*constraints2
1 2
Mandatory Logic OptimizationZ18-101
³
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2
00:00:00.062
00:00:00.062

1042.0742
0.000Z17-268
G
;Phase 1 Mandatory Logic Optimization | Checksum: 1024e8259
*common
w

%s
*constraints2`
^Time (s): cpu = 00:00:00.89 ; elapsed = 00:00:01 . Memory (MB): peak = 1042.074 ; gain = 0.000
B

Phase %s%s
101*constraints2
2 2
Build SLR InfoZ18-101
9
-Phase 2 Build SLR Info | Checksum: 1024e8259
*common
w

%s
*constraints2`
^Time (s): cpu = 00:00:00.96 ; elapsed = 00:00:01 . Memory (MB): peak = 1042.074 ; gain = 0.000
C

Phase %s%s
101*constraints2
3 2
Add ConstraintsZ18-101
:
.Phase 3 Add Constraints | Checksum: 1024e8259
*common
w

%s
*constraints2`
^Time (s): cpu = 00:00:00.97 ; elapsed = 00:00:01 . Memory (MB): peak = 1042.074 ; gain = 0.000
@

Phase %s%s
101*constraints2
4 2
Build ShapesZ18-101
7
+Phase 4 Build Shapes | Checksum: 169df3dc0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1042.074 ; gain = 0.000
T

Phase %s%s
101*constraints2
5 2"
 Implementation Feasibility checkZ18-101
K
?Phase 5 Implementation Feasibility check | Checksum: 169df3dc0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1042.074 ; gain = 0.000
E

Phase %s%s
101*constraints2
6 2
PrePlace ElementsZ18-101
<
0Phase 6 PrePlace Elements | Checksum: 169df3dc0
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1042.074 ; gain = 0.000
I

Phase %s%s
101*constraints2
7 2
Placer InitializationZ18-101
L

Phase %s%s
101*constraints2
7.1 2
IO & Clk Placer & InitZ18-101
C
7Phase 7.1 IO & Clk Placer & Init | Checksum: 169df3dc0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1052.078 ; gain = 10.004
J

Phase %s%s
101*constraints2
7.2 2
Build Placer NetlistZ18-101
I

Phase %s%s
101*constraints2
7.2.1 2
Place Init DesignZ18-101
J

Phase %s%s
101*constraints2

7.2.1.1 2
Build Clock DataZ18-101
A
5Phase 7.2.1.1 Build Clock Data | Checksum: 167e10591
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:33 ; elapsed = 00:00:27 . Memory (MB): peak = 1052.203 ; gain = 10.129
@
4Phase 7.2.1 Place Init Design | Checksum: 22d0ebcb3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:28 . Memory (MB): peak = 1052.203 ; gain = 10.129
A
5Phase 7.2 Build Placer Netlist | Checksum: 22d0ebcb3
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:28 . Memory (MB): peak = 1052.203 ; gain = 10.129
F

Phase %s%s
101*constraints2
7.3 2
Constrain ClocksZ18-101
=
1Phase 7.3 Constrain Clocks | Checksum: 1efb27daa
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:29 . Memory (MB): peak = 1052.203 ; gain = 10.129
@
4Phase 7 Placer Initialization | Checksum: 1efb27daa
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:29 . Memory (MB): peak = 1052.203 ; gain = 10.129
D

Phase %s%s
101*constraints2
8 2
Global PlacementZ18-101
:
.Phase 8 Global Placement | Checksum: e6703ac0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:52 ; elapsed = 00:01:19 . Memory (MB): peak = 1052.203 ; gain = 10.129
D

Phase %s%s
101*constraints2
9 2
Detail PlacementZ18-101
P

Phase %s%s
101*constraints2
9.1 2
Commit Multi Column shapesZ18-101
F
:Phase 9.1 Commit Multi Column shapes | Checksum: e6703ac0
*common
u

%s
*constraints2^
\Time (s): cpu = 00:01:53 ; elapsed = 00:01:19 . Memory (MB): peak = 1052.203 ; gain = 10.129
R

Phase %s%s
101*constraints2
9.2 2
Commit Most Shapes & LUTRAMsZ18-101
H
<Phase 9.2 Commit Most Shapes & LUTRAMs | Checksum: a4be6df6
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:03 ; elapsed = 00:01:26 . Memory (MB): peak = 1052.203 ; gain = 10.129
?

Phase %s%s
101*constraints2
9.3 2
	Area SwapZ18-101
6
*Phase 9.3 Area Swap | Checksum: 12799f225
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:04 ; elapsed = 00:01:27 . Memory (MB): peak = 1052.203 ; gain = 10.129
D

Phase %s%s
101*constraints2
9.4 2
Path OptimizerZ18-101
:
.Phase 9.4 Path Optimizer | Checksum: e5816a6b
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1052.203 ; gain = 10.129
I

Phase %s%s
101*constraints2
9.5 2
Commit Small ShapesZ18-101
?
3Phase 9.5 Commit Small Shapes | Checksum: c06b8103
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:25 ; elapsed = 00:01:44 . Memory (MB): peak = 1052.203 ; gain = 10.129
E

Phase %s%s
101*constraints2
9.6 2
Assign LUT pinsZ18-101
;
/Phase 9.6 Assign LUT pins | Checksum: c06b8103
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:26 ; elapsed = 00:01:45 . Memory (MB): peak = 1052.203 ; gain = 10.129
:
.Phase 9 Detail Placement | Checksum: c06b8103
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:26 ; elapsed = 00:01:45 . Memory (MB): peak = 1052.203 ; gain = 10.129
D

Phase %s%s
101*constraints2
10 2
Post-Commit OptZ18-101
B
6Phase 10 Post-Commit Opt | Checksum: ffffffff70e874e4
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:36 ; elapsed = 00:01:51 . Memory (MB): peak = 1060.906 ; gain = 18.832
F

Phase %s%s
101*constraints2
11 2
PostPlace CleanupZ18-101
D
8Phase 11 PostPlace Cleanup | Checksum: ffffffff70e874e4
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:36 ; elapsed = 00:01:51 . Memory (MB): peak = 1060.906 ; gain = 18.832
E

Phase %s%s
101*constraints2
12 2
Placer ReportingZ18-101
[
!Post Placement Timing Summary %s
2*	placeflow2
| WNS=1.935  | TNS=0.000  |
Z30-100
;
/Phase 12 Placer Reporting | Checksum: 2ca213b9
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:43 ; elapsed = 00:01:55 . Memory (MB): peak = 1060.906 ; gain = 18.832
<

Phase %s%s
101*constraints2
13 2	
CleanupZ18-101
2
&Phase 13 Cleanup | Checksum: c6b1fbfa
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:43 ; elapsed = 00:01:55 . Memory (MB): peak = 1060.906 ; gain = 18.832
4
(Ending Placer Task | Checksum: 7d981493
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:43 ; elapsed = 00:01:56 . Memory (MB): peak = 1060.906 ; gain = 18.832
?
Releasing license: %s
83*common2
ImplementationZ17-83
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262
02
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
place_designZ4-42
¢
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
place_design: 2

00:02:442

00:01:562

1060.9062
18.832Z17-268
O

DEBUG : %s144*timing2*
(Generate clock report | CPU: 0.69 secs 
Z38-163
‚
vreport_utilization: Time (s): cpu = 00:00:00.40 ; elapsed = 00:00:00.45 . Memory (MB): peak = 1060.906 ; gain = 0.000
*common
[

DEBUG : %s134*designutils21
/Generate Control Sets report | CPU: 0.05 secs 
Z20-134
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
¨
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write XDEF Complete: 2

00:00:032

00:00:032

1060.9062
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:052

00:00:052

1060.9062
0.000Z17-268


End Record