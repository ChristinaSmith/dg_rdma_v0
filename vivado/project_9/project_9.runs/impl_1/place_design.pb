
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
S
%Your %s license expires in %s day(s)
86*common2
Implementation2
7Z17-86
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
00:00:00.072
00:00:00.072

1048.0392
0.000Z17-268
G
;Phase 1 Mandatory Logic Optimization | Checksum: 179a59e97
*common
w

%s
*constraints2`
^Time (s): cpu = 00:00:00.99 ; elapsed = 00:00:01 . Memory (MB): peak = 1048.039 ; gain = 0.000
B

Phase %s%s
101*constraints2
2 2
Build SLR InfoZ18-101
9
-Phase 2 Build SLR Info | Checksum: 179a59e97
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 1048.039 ; gain = 0.000
C

Phase %s%s
101*constraints2
3 2
Add ConstraintsZ18-101
:
.Phase 3 Add Constraints | Checksum: 179a59e97
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 1048.039 ; gain = 0.000
@

Phase %s%s
101*constraints2
4 2
Build ShapesZ18-101
7
+Phase 4 Build Shapes | Checksum: 160b324ff
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1048.039 ; gain = 0.000
T

Phase %s%s
101*constraints2
5 2"
 Implementation Feasibility checkZ18-101
K
?Phase 5 Implementation Feasibility check | Checksum: 160b324ff
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1048.039 ; gain = 0.000
E

Phase %s%s
101*constraints2
6 2
PrePlace ElementsZ18-101
<
0Phase 6 PrePlace Elements | Checksum: 160b324ff
*common
t

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1048.039 ; gain = 0.000
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
7Phase 7.1 IO & Clk Placer & Init | Checksum: 160b324ff
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1058.043 ; gain = 10.004
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
5Phase 7.2.1.1 Build Clock Data | Checksum: 1451bfa4e
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:29 . Memory (MB): peak = 1058.043 ; gain = 10.004
@
4Phase 7.2.1 Place Init Design | Checksum: 20e813401
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:31 . Memory (MB): peak = 1058.043 ; gain = 10.004
A
5Phase 7.2 Build Placer Netlist | Checksum: 20e813401
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:31 . Memory (MB): peak = 1058.043 ; gain = 10.004
F

Phase %s%s
101*constraints2
7.3 2
Constrain ClocksZ18-101
=
1Phase 7.3 Constrain Clocks | Checksum: 1d124f4f8
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:37 ; elapsed = 00:00:31 . Memory (MB): peak = 1058.043 ; gain = 10.004
@
4Phase 7 Placer Initialization | Checksum: 1d124f4f8
*common
u

%s
*constraints2^
\Time (s): cpu = 00:00:37 ; elapsed = 00:00:31 . Memory (MB): peak = 1058.043 ; gain = 10.004
D

Phase %s%s
101*constraints2
8 2
Global PlacementZ18-101
;
/Phase 8 Global Placement | Checksum: 119837b28
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:00 ; elapsed = 00:01:26 . Memory (MB): peak = 1058.043 ; gain = 10.004
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
G
;Phase 9.1 Commit Multi Column shapes | Checksum: 119837b28
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:00 ; elapsed = 00:01:26 . Memory (MB): peak = 1058.043 ; gain = 10.004
R

Phase %s%s
101*constraints2
9.2 2
Commit Most Shapes & LUTRAMsZ18-101
I
=Phase 9.2 Commit Most Shapes & LUTRAMs | Checksum: 1ba59af16
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:11 ; elapsed = 00:01:34 . Memory (MB): peak = 1058.043 ; gain = 10.004
?

Phase %s%s
101*constraints2
9.3 2
	Area SwapZ18-101
6
*Phase 9.3 Area Swap | Checksum: 137eb221f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:12 ; elapsed = 00:01:34 . Memory (MB): peak = 1058.043 ; gain = 10.004
D

Phase %s%s
101*constraints2
9.4 2
Path OptimizerZ18-101
;
/Phase 9.4 Path Optimizer | Checksum: 1338bf88f
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:20 ; elapsed = 00:01:40 . Memory (MB): peak = 1058.043 ; gain = 10.004
I

Phase %s%s
101*constraints2
9.5 2
Commit Small ShapesZ18-101
@
4Phase 9.5 Commit Small Shapes | Checksum: 17437bfce
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:35 ; elapsed = 00:01:52 . Memory (MB): peak = 1058.043 ; gain = 10.004
E

Phase %s%s
101*constraints2
9.6 2
Assign LUT pinsZ18-101
<
0Phase 9.6 Assign LUT pins | Checksum: 17437bfce
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:36 ; elapsed = 00:01:54 . Memory (MB): peak = 1058.043 ; gain = 10.004
;
/Phase 9 Detail Placement | Checksum: 17437bfce
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:36 ; elapsed = 00:01:54 . Memory (MB): peak = 1058.043 ; gain = 10.004
D

Phase %s%s
101*constraints2
10 2
Post-Commit OptZ18-101
B
6Phase 10 Post-Commit Opt | Checksum: ffffffffc2919145
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:47 ; elapsed = 00:02:01 . Memory (MB): peak = 1069.406 ; gain = 21.367
F

Phase %s%s
101*constraints2
11 2
PostPlace CleanupZ18-101
D
8Phase 11 PostPlace Cleanup | Checksum: ffffffffc2919145
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:47 ; elapsed = 00:02:01 . Memory (MB): peak = 1069.406 ; gain = 21.367
E

Phase %s%s
101*constraints2
12 2
Placer ReportingZ18-101
[
!Post Placement Timing Summary %s
2*	placeflow2
| WNS=1.888  | TNS=0.000  |
Z30-100
;
/Phase 12 Placer Reporting | Checksum: a95012c5
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:54 ; elapsed = 00:02:05 . Memory (MB): peak = 1069.406 ; gain = 21.367
<

Phase %s%s
101*constraints2
13 2	
CleanupZ18-101
2
&Phase 13 Cleanup | Checksum: d08911dd
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:54 ; elapsed = 00:02:05 . Memory (MB): peak = 1069.406 ; gain = 21.367
4
(Ending Placer Task | Checksum: 58d19cfc
*common
u

%s
*constraints2^
\Time (s): cpu = 00:02:55 ; elapsed = 00:02:06 . Memory (MB): peak = 1069.406 ; gain = 21.367
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

00:02:552

00:02:062

1069.4062
21.367Z17-268
O

DEBUG : %s144*timing2*
(Generate clock report | CPU: 0.76 secs 
Z38-163
‚
vreport_utilization: Time (s): cpu = 00:00:00.42 ; elapsed = 00:00:00.51 . Memory (MB): peak = 1069.406 ; gain = 0.000
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

1069.4062
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:052

00:00:062

1069.4062
0.000Z17-268


End Record