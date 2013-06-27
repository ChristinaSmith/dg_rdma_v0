
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
00:00:00.082

1073.8552
12.574Z17-268
C
7Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:50 ; elapsed = 00:01:16 . Memory (MB): peak = 1232.121 ; gain = 170.840
2
&Phase 1 Build RT Design | Checksum: 0
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:50 ; elapsed = 00:01:17 . Memory (MB): peak = 1232.121 ; gain = 170.840
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
,Phase 2.1 Create Timer | Checksum: c0f587ab
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:51 ; elapsed = 00:01:17 . Memory (MB): peak = 1238.590 ; gain = 177.309
Q
3Estimated Global Vertical Wire Utilization = %s %%
23*route2
0.68Z35-23
S
5Estimated Global Horizontal Wire Utilization = %s %%
22*route2
1.44Z35-22
E

Phase %s%s
101*constraints2
2.2 2
Restore RoutingZ18-101
=
Design has %s routable nets.
92*route2
23077Z35-249
?
#Restored %s nets from the routeDb.
95*route2
0Z35-252
E
)Found %s nets with FIXED_ROUTE property.
94*route2
0Z35-251
;
/Phase 2.2 Restore Routing | Checksum: c0f587ab
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:51 ; elapsed = 00:01:18 . Memory (MB): peak = 1242.590 ; gain = 181.309
I

Phase %s%s
101*constraints2
2.3 2
Special Net RoutingZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:52 ; elapsed = 00:01:19 . Memory (MB): peak = 1270.902 ; gain = 209.621
M

Phase %s%s
101*constraints2
2.4 2
Local Clock Net RoutingZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:01:52 ; elapsed = 00:01:19 . Memory (MB): peak = 1270.902 ; gain = 209.621
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:09 ; elapsed = 00:01:30 . Memory (MB): peak = 1270.902 ; gain = 209.621
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:10 ; elapsed = 00:01:30 . Memory (MB): peak = 1270.902 ; gain = 209.621
9
-Phase 2.5 Update Timing | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:10 ; elapsed = 00:01:30 . Memory (MB): peak = 1270.902 ; gain = 209.621
l
Estimated Timing Summary %s
57*route28
6| WNS=2.26   | TNS=0      | WHS=-0.873 | THS=-891   |
Z35-57
?

Phase %s%s
101*constraints2
2.6 2
	BudgetingZ18-101
5
)Phase 2.6 Budgeting | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:18 ; elapsed = 00:01:37 . Memory (MB): peak = 1270.902 ; gain = 209.621
?
3Phase 2 Router Initialization | Checksum: 3a97a62d
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:18 ; elapsed = 00:01:37 . Memory (MB): peak = 1270.902 ; gain = 209.621
C

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101
9
-Phase 3 Initial Routing | Checksum: 9b4dd7a4
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:28 ; elapsed = 00:01:42 . Memory (MB): peak = 1270.902 ; gain = 209.621
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
/Phase 4.1.1 Update Timing | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:52 . Memory (MB): peak = 1270.902 ; gain = 209.621
l
Estimated Timing Summary %s
57*route28
6| WNS=0.501  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
L

Phase %s%s
101*constraints2
4.1.2 2
collectNewHoldAndFixZ18-101
B
6Phase 4.1.2 collectNewHoldAndFix | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:52 . Memory (MB): peak = 1270.902 ; gain = 209.621
>
2Phase 4.1 Global Iteration 0 | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:52 . Memory (MB): peak = 1270.902 ; gain = 209.621
<
0Phase 4 Rip-up And Reroute | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:46 ; elapsed = 00:01:52 . Memory (MB): peak = 1270.902 ; gain = 209.621
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
-Phase 5.1 Update Timing | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:50 ; elapsed = 00:01:55 . Memory (MB): peak = 1270.902 ; gain = 209.621
l
Estimated Timing Summary %s
57*route28
6| WNS=0.514  | TNS=0      | WHS=N/A    | THS=N/A    |
Z35-57
7
+Phase 5 Delay CleanUp | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:50 ; elapsed = 00:01:55 . Memory (MB): peak = 1270.902 ; gain = 209.621
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
/Phase 6.1.1 Update Timing | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:57 ; elapsed = 00:01:59 . Memory (MB): peak = 1270.902 ; gain = 209.621
l
Estimated Timing Summary %s
57*route28
6| WNS=0.514  | TNS=0      | WHS=-0.925 | THS=-18.8  |
Z35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 92fc6e5a
*common
v

%s
*constraints2_
]Time (s): cpu = 00:02:57 ; elapsed = 00:01:59 . Memory (MB): peak = 1270.902 ; gain = 209.621
7
+Phase 6 Post Hold Fix | Checksum: c398b711
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:55 ; elapsed = 00:02:51 . Memory (MB): peak = 1528.777 ; gain = 467.496
I

Phase %s%s
101*constraints2
7 2
Verifying routed netsZ18-101
?
3Phase 7 Verifying routed nets | Checksum: c398b711
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:55 ; elapsed = 00:02:51 . Memory (MB): peak = 1528.777 ; gain = 467.496
E

Phase %s%s
101*constraints2
8 2
Depositing RoutesZ18-101
;
/Phase 8 Depositing Routes | Checksum: d7d80842
*common
v

%s
*constraints2_
]Time (s): cpu = 00:03:59 ; elapsed = 00:02:54 . Memory (MB): peak = 1528.777 ; gain = 467.496
F

Phase %s%s
101*constraints2
9 2
Post Router TimingZ18-101