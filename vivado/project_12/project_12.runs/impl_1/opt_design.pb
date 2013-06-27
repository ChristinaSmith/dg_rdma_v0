
4
Command: %s
53*	vivadotcl2

opt_designZ4-113
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
4Z17-86
S
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22
:
DRC finished with %s
275*project2

0 ErrorsZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
276*projectZ1-462
<
%Done setting XDC timing constraints.
35*timingZ38-35
F

Starting %s Task
103*constraints2
Logic OptimizationZ18-103
4
(Logic Optimization | Checksum: 295dc447
*common
<

Phase %s%s
101*constraints2
1 2

RetargetZ18-101
0
Retargeted %s cell(s).
49*opt2
0Z31-49
2
&Phase 1 Retarget | Checksum: 2216573a
*common
y

%s
*constraints2b
`Time (s): cpu = 00:00:00.52 ; elapsed = 00:00:00.62 . Memory (MB): peak = 870.816 ; gain = 0.000
H

Phase %s%s
101*constraints2
2 2
Constant PropagationZ18-101
0
Eliminated %s cells.
10*opt2
172Z31-10
>
2Phase 2 Constant Propagation | Checksum: 900edf21
*common
s

%s
*constraints2\
ZTime (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 870.816 ; gain = 0.000
9

Phase %s%s
101*constraints2
3 2
SweepZ18-101
<
 Eliminated %s unconnected nets.
12*opt2
1070Z31-12
:
!Eliminated %s unconnected cells.
11*opt2
1Z31-11
/
#Phase 3 Sweep | Checksum: 088eda6b
*common
s

%s
*constraints2\
ZTime (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 870.816 ; gain = 0.000
@
4Ending Logic Optimization Task | Checksum: 3611cfbc
*common
s

%s
*constraints2\
ZTime (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 870.816 ; gain = 0.000
<
%Done setting XDC timing constraints.
35*timingZ38-35
F

Starting %s Task
103*constraints2
Power OptimizationZ18-103
4
Applying IDT optimizations ...
9*pwroptZ34-9
6
Applying ODC optimizations ...
10*pwroptZ34-10


*pwropt
Î
©WRITE_MODE attribute of %s BRAM(s) out of a total of %s was updated to NO_CHANGE to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02
16Z34-162
j
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02
02
32Z34-65
@
4Ending Power Optimization Task | Checksum: 3611cfbc
*common
v

%s
*constraints2_
]Time (s): cpu = 00:00:19 ; elapsed = 00:00:14 . Memory (MB): peak = 1045.078 ; gain = 151.129
?
Releasing license: %s
83*common2
ImplementationZ17-83
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
182
02
02
0Z4-41
A
%s completed successfully
29*	vivadotcl2

opt_designZ4-42
¡
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
opt_design: 2

00:00:312

00:00:252

1045.0782	
225.141Z17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
®
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write XDEF Complete: 2
00:00:00.462
00:00:00.482

1045.0782
0.000Z17-268


End Record