
6
Command: %s
53*	vivadotcl2
route_designZ4-113
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
route_designZ4-22
;
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
;

Starting %s Task
103*constraints2	
RoutingZ18-103
^
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
2Z35-254
9

Starting %s Task
103*constraints2
RouteZ18-103
C

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101
T

Phase %s%s
101*constraints2
1.1 2 
Build Netlist & NodeGraph (MT)Z18-101
´
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2
00:00:00.102
00:00:00.072

1082.1052
12.574Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:53 ; elapsed = 00:01:19 . Memory (MB): peak = 1239.496 ; gain = 169.965
2
&Phase 1 Build RT Design | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:53 ; elapsed = 00:01:20 . Memory (MB): peak = 1239.496 ; gain = 169.965
I

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101
B

Phase %s%s
101*constraints2
2.1 2
Create TimerZ18-101
8
,Phase 2.1 Create Timer | Checksum: 001f2cfe
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:54 ; elapsed = 00:01:20 . Memory (MB): peak = 1246.168 ; gain = 176.637
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
0.74Z35-23
S
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
1.39Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
24061Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: 001f2cfe
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:54 ; elapsed = 00:01:21 . Memory (MB): peak = 1250.168 ; gain = 180.637
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:55 ; elapsed = 00:01:24 . Memory (MB): peak = 1291.512 ; gain = 221.980
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:55 ; elapsed = 00:01:24 . Memory (MB): peak = 1291.512 ; gain = 221.980
C

Phase %s%s
101*constraints2
2.5 2
Update TimingZ18-101
S

Phase %s%s
101*constraints2
2.5.1 2
Update timing with NCN CRPRZ18-101
H

Phase %s%s
101*constraints2

2.5.1.1 2
Hold BudgetingZ18-101
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:13 ; elapsed = 00:01:36 . Memory (MB): peak = 1291.512 ; gain = 221.980
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:36 . Memory (MB): peak = 1291.512 ; gain = 221.980
9
-Phase 2.5 Update Timing | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:36 . Memory (MB): peak = 1291.512 ; gain = 221.980
n
Estimated Timing Summary %s
57*route2:
8| WNS=2.16   | TNS=0      | WHS=-0.894 | THS=-1.03e+03|
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:23 ; elapsed = 00:01:43 . Memory (MB): peak = 1291.512 ; gain = 221.980
?
3Phase 2 Router Initialization | Checksum: f890c027
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:23 ; elapsed = 00:01:43 . Memory (MB): peak = 1291.512 ; gain = 221.980
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: cf738419
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:37 ; elapsed = 00:01:55 . Memory (MB): peak = 1504.168 ; gain = 434.637
F

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101
H

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101
E

Phase %s%s
101*constraints2
4.1.1 2
Update TimingZ18-101
;
/Phase 4.1.1 Update Timing | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:56 ; elapsed = 00:02:06 . Memory (MB): peak = 1504.168 ; gain = 434.637
l
Estimated Timing Summary %s
57*route28
6| WNS=0.599  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.2 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.2 collectNewHoldAndFix | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:56 ; elapsed = 00:02:06 . Memory (MB): peak = 1504.168 ; gain = 434.637
>
2Phase 4.1 Global Iteration 0 | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:56 ; elapsed = 00:02:06 . Memory (MB): peak = 1504.168 ; gain = 434.637
<
0Phase 4 Rip-up And Reroute | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:56 ; elapsed = 00:02:06 . Memory (MB): peak = 1504.168 ; gain = 434.637
A

Phase %s%s
101*constraints2
5 2
Delay CleanUpZ18-101
C

Phase %s%s
101*constraints2
5.1 2
Update TimingZ18-101
9
-Phase 5.1 Update Timing | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:00 ; elapsed = 00:02:09 . Memory (MB): peak = 1504.168 ; gain = 434.637
l
Estimated Timing Summary %s
57*route28
6| WNS=0.614  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:00 ; elapsed = 00:02:09 . Memory (MB): peak = 1504.168 ; gain = 434.637
A

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101
H

Phase %s%s
101*constraints2
6.1 2
Full Hold AnalysisZ18-101
E

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101
;
/Phase 6.1.1 Update Timing | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:07 ; elapsed = 00:02:13 . Memory (MB): peak = 1504.168 ; gain = 434.637
l
Estimated Timing Summary %s
57*route28
6| WNS=0.614  | TNS=0      | WHS=-1.02  | THS=-33    |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 52aaf733
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:07 ; elapsed = 00:02:13 . Memory (MB): peak = 1504.168 ; gain = 434.637
7
+Phase 6 Post Hold Fix | Checksum: e18f0668
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:08 ; elapsed = 00:03:30 . Memory (MB): peak = 1804.137 ; gain = 734.605
I

Phase %s%s
101*constraints2
7 2
Verifying routed netsZ18-101
?
3Phase 7 Verifying routed nets | Checksum: e18f0668
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:09 ; elapsed = 00:03:30 . Memory (MB): peak = 1804.137 ; gain = 734.605
E

Phase %s%s
101*constraints2
8 2
Depositing RoutesZ18-101
;
/Phase 8 Depositing Routes | Checksum: 97d716d8
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:13 ; elapsed = 00:03:34 . Memory (MB): peak = 1804.137 ; gain = 734.605
F

Phase %s%s
101*constraints2
9 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=0.594  | TNS=0.000  | WHS=0.045  | THS=0.000  |
Z35-20
=
'The design met the timing requirement.
61*routeZ35-61
5
)Phase 9 Post Router Timing | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:29 ; elapsed = 00:03:44 . Memory (MB): peak = 1804.137 ; gain = 734.605
4
Router Completed Successfully
16*routeZ35-16
,
 Ending Route Task | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:05:29 ; elapsed = 00:03:44 . Memory (MB): peak = 1804.137 ; gain = 734.605
j
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118
s
ZWebTalk report has not been sent to Xilinx. Please check your network and proxy settings.
185*commonZ17-185
v

%s
*constraints2_
]Time (s): cpu = 00:05:30 ; elapsed = 00:03:49 . Memory (MB): peak = 1804.137 ; gain = 734.605
?
Releasing license: %s
83*common2
ImplementationZ17-83
u
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492
02
02
0Z4-41
C
%s completed successfully
29*	vivadotcl2
route_designZ4-42
£
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:05:322

00:03:522

1804.1372	
734.730Z17-268
ù
#The results of DRC are in file %s.
168*coretcl2¸
Y/home/cms005/Desktop/cms_v2/vivado/project_9/project_9.runs/impl_1/fpgaTop_drc_routed.rptY/home/cms005/Desktop/cms_v2/vivado/project_9/project_9.runs/impl_1/fpgaTop_drc_routed.rpt8Z2-168
Ÿ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:102

00:00:112

1804.1372
0.000Z17-268
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
¡
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_power: 2

00:00:332

00:00:292

1804.1372
0.000Z17-268
n
UpdateTimingParams:%s.
91*timing2>
< Speed grade: -2, Delay Type: min_max, Constraints type: SDCZ38-91
a
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191
ª
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_timing_summary: 2

00:00:262

00:00:172

1804.1372
0.000Z17-268
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

00:00:052

00:00:052

1804.1372
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:072

00:00:072

1804.1372
0.000Z17-268


End Record