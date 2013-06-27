
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
T
%Your %s license expires in %s day(s)
86*common2
Implementation2
14Z17-86
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
00:00:00.132
00:00:00.072

1070.8872
12.574Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:51 ; elapsed = 00:01:18 . Memory (MB): peak = 1230.277 ; gain = 171.965
2
&Phase 1 Build RT Design | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:52 ; elapsed = 00:01:19 . Memory (MB): peak = 1230.277 ; gain = 171.965
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
,Phase 2.1 Create Timer | Checksum: 335be8e1
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:52 ; elapsed = 00:01:19 . Memory (MB): peak = 1236.676 ; gain = 178.363
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
0.70Z35-23
S
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
1.47Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
22906Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: 335be8e1
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:52 ; elapsed = 00:01:19 . Memory (MB): peak = 1240.676 ; gain = 182.363
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:54 ; elapsed = 00:01:21 . Memory (MB): peak = 1274.988 ; gain = 216.676
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:54 ; elapsed = 00:01:21 . Memory (MB): peak = 1274.988 ; gain = 216.676
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:11 ; elapsed = 00:01:32 . Memory (MB): peak = 1274.988 ; gain = 216.676
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:11 ; elapsed = 00:01:32 . Memory (MB): peak = 1274.988 ; gain = 216.676
9
-Phase 2.5 Update Timing | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:11 ; elapsed = 00:01:32 . Memory (MB): peak = 1274.988 ; gain = 216.676
l
Estimated Timing Summary %s
57*route28
6| WNS=1.95   | TNS=0      | WHS=-0.894 | THS=-947   |
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:19 ; elapsed = 00:01:39 . Memory (MB): peak = 1274.988 ; gain = 216.676
?
3Phase 2 Router Initialization | Checksum: 1ef6ea39
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:20 ; elapsed = 00:01:39 . Memory (MB): peak = 1274.988 ; gain = 216.676
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: 2a62a309
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:28 ; elapsed = 00:01:43 . Memory (MB): peak = 1274.988 ; gain = 216.676
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
/Phase 4.1.1 Update Timing | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:48 ; elapsed = 00:01:55 . Memory (MB): peak = 1274.988 ; gain = 216.676
l
Estimated Timing Summary %s
57*route28
6| WNS=0.132  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.2 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.2 collectNewHoldAndFix | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:48 ; elapsed = 00:01:55 . Memory (MB): peak = 1274.988 ; gain = 216.676
>
2Phase 4.1 Global Iteration 0 | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:48 ; elapsed = 00:01:55 . Memory (MB): peak = 1274.988 ; gain = 216.676
<
0Phase 4 Rip-up And Reroute | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:48 ; elapsed = 00:01:55 . Memory (MB): peak = 1274.988 ; gain = 216.676
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
-Phase 5.1 Update Timing | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:52 ; elapsed = 00:01:58 . Memory (MB): peak = 1274.988 ; gain = 216.676
l
Estimated Timing Summary %s
57*route28
6| WNS=0.147  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:52 ; elapsed = 00:01:58 . Memory (MB): peak = 1274.988 ; gain = 216.676
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
/Phase 6.1.1 Update Timing | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:58 ; elapsed = 00:02:02 . Memory (MB): peak = 1274.988 ; gain = 216.676
l
Estimated Timing Summary %s
57*route28
6| WNS=0.147  | TNS=0      | WHS=-0.975 | THS=-31.2  |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 4cfa16ef
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:58 ; elapsed = 00:02:02 . Memory (MB): peak = 1274.988 ; gain = 216.676
7
+Phase 6 Post Hold Fix | Checksum: 24b9bb1f
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:56 ; elapsed = 00:02:52 . Memory (MB): peak = 1521.738 ; gain = 463.426
I

Phase %s%s
101*constraints2
7 2
Verifying routed netsZ18-101
?
3Phase 7 Verifying routed nets | Checksum: 24b9bb1f
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:56 ; elapsed = 00:02:53 . Memory (MB): peak = 1521.738 ; gain = 463.426
E

Phase %s%s
101*constraints2
8 2
Depositing RoutesZ18-101
;
/Phase 8 Depositing Routes | Checksum: a4d5d960
*common
v

%s
*constraints2_
]Time (s): cpu = 00:04:00 ; elapsed = 00:02:56 . Memory (MB): peak = 1521.738 ; gain = 463.426
F

Phase %s%s
101*constraints2
9 2
Post Router TimingZ18-101
o
Post Routing Timing Summary %s
20*route28
6| WNS=0.133  | TNS=0.000  | WHS=0.073  | THS=0.000  |
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
]Time (s): cpu = 00:04:15 ; elapsed = 00:03:05 . Memory (MB): peak = 1521.738 ; gain = 463.426
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
]Time (s): cpu = 00:04:15 ; elapsed = 00:03:05 . Memory (MB): peak = 1521.738 ; gain = 463.426
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
]Time (s): cpu = 00:04:16 ; elapsed = 00:03:06 . Memory (MB): peak = 1521.738 ; gain = 463.426
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

00:04:182

00:03:092

1521.7382	
463.426Z17-268
ù
#The results of DRC are in file %s.
168*coretcl2¸
Y/home/cms005/Desktop/cms_v1/vivado/project_5/project_5.runs/impl_1/fpgaTop_drc_routed.rptY/home/cms005/Desktop/cms_v1/vivado/project_5/project_5.runs/impl_1/fpgaTop_drc_routed.rpt8Z2-168
Ÿ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:092

00:00:102

1521.7382
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

00:00:322

00:00:262

1521.7382
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

00:00:242

00:00:162

1521.7382
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

00:00:042

00:00:052

1521.7382
0.000Z17-268
¥
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:062

00:00:072

1521.7382
0.000Z17-268


End Record