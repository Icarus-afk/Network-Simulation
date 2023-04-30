set val(chan) Channel/WirelessChannel;
set val(prop) Propagation/TwoRayGround;
set val(netif) Phy/WirelessPhy;
set val(mac) Mac/802_11;
set val(ifq) Queue/DropTail/PriQueue;
set val(ll) LL;
set val(ant) Antenna/OmniAntenna;
set val(ifqlen) 750;
set val(rp) AODV;
set val(nn) 100;
set val(x) 4000;
set val(y) 4000;
set val(stop) 150;


set ns [new Simulator]

set tf [open p1.tr w]
$ns trace-all $tf

set nf [open p1.nam w]
$ns namtrace-all-wireless $nf $val(x) $val(y)

set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)

set chan_1_ [new $val(chan)]

$ns node-config -adhocRouting $val(rp) \
	-llType $val(ll) \
	-macType $val(mac) \
	-ifqType $val(ifq) \
	-ifqLen $val(ifqlen) \
	-antType $val(ant) \
	-propType $val(prop) \
	-phyType $val(netif) \
	-channel $chan_1_ \
	-topoInstance $topo \
	-agentTrace ON \
	-routerTrace ON \
	-macTrace OFF \
	-movementTrace ON \

set packetSize 512
set packetColor red


set dist(750m) 4.5094e-12 
Phy/WirelessPhy set CSThresh_ $dist(750m)
Phy/WirelessPhy set RXThresh_ $dist(750m)	
Phy/WirelessPhy set Pt_ 0.2818

set n_(0) [$ns node]
$n_(0) set X_ 3160
$n_(0) set Y_ 2076
$n_(0) set Z_ 0.0
set n_(1) [$ns node]
$n_(1) set X_ 2913
$n_(1) set Y_ 66
$n_(1) set Z_ 0.0
set n_(2) [$ns node]
$n_(2) set X_ 870
$n_(2) set Y_ 231
$n_(2) set Z_ 0.0
set n_(3) [$ns node]
$n_(3) set X_ 2679
$n_(3) set Y_ 3902
$n_(3) set Z_ 0.0
set n_(4) [$ns node]
$n_(4) set X_ 637
$n_(4) set Y_ 2853
$n_(4) set Z_ 0.0
set n_(5) [$ns node]
$n_(5) set X_ 2688
$n_(5) set Y_ 3510
$n_(5) set Z_ 0.0
set n_(6) [$ns node]
$n_(6) set X_ 438
$n_(6) set Y_ 728
$n_(6) set Z_ 0.0
set n_(7) [$ns node]
$n_(7) set X_ 1118
$n_(7) set Y_ 462
$n_(7) set Z_ 0.0
set n_(8) [$ns node]
$n_(8) set X_ 160
$n_(8) set Y_ 129
$n_(8) set Z_ 0.0
set n_(9) [$ns node]
$n_(9) set X_ 282
$n_(9) set Y_ 3311
$n_(9) set Z_ 0.0

set n_(10) [$ns node]
$n_(10) set X_ 3473
$n_(10) set Y_ 1811
$n_(10) set Z_ 0.0
set n_(11) [$ns node]
$n_(11) set X_ 576
$n_(11) set Y_ 3305
$n_(11) set Z_ 0.0
set n_(12) [$ns node]
$n_(12) set X_ 2054
$n_(12) set Y_ 2914
$n_(12) set Z_ 0.0
set n_(13) [$ns node]
$n_(13) set X_ 405
$n_(13) set Y_ 2273
$n_(13) set Z_ 0.0
set n_(14) [$ns node]
$n_(14) set X_ 2255
$n_(14) set Y_ 3621
$n_(14) set Z_ 0.0
set n_(15) [$ns node]
$n_(15) set X_ 2044
$n_(15) set Y_ 2617
$n_(15) set Z_ 0.0
set n_(16) [$ns node]
$n_(16) set X_ 2644
$n_(16) set Y_ 3026
$n_(16) set Z_ 0.0
set n_(17) [$ns node]
$n_(17) set X_ 2304
$n_(17) set Y_ 3675
$n_(17) set Z_ 0.0
set n_(18) [$ns node]
$n_(18) set X_ 1873
$n_(18) set Y_ 1697
$n_(18) set Z_ 0.0
set n_(19) [$ns node]
$n_(19) set X_ 3584
$n_(19) set Y_ 1149
$n_(19) set Z_ 0.0
set n_(20) [$ns node]
$n_(20) set X_ 1822
$n_(20) set Y_ 3386
$n_(20) set Z_ 0.0

set n_(21) [$ns node]
$n_(21) set X_ 3078
$n_(21) set Y_ 1014
$n_(21) set Z_ 0.0
set n_(22) [$ns node]
$n_(22) set X_ 2928
$n_(22) set Y_ 3567
$n_(22) set Z_ 0.0
set n_(23) [$ns node]
$n_(23) set X_ 592
$n_(23) set Y_ 3722
$n_(23) set Z_ 0.0
set n_(24) [$ns node]
$n_(24) set X_ 2003
$n_(24) set Y_ 3731
$n_(24) set Z_ 0.0
set n_(25) [$ns node]
$n_(25) set X_ 316
$n_(25) set Y_ 3548
$n_(25) set Z_ 0.0
set n_(26) [$ns node]
$n_(26) set X_ 360
$n_(26) set Y_ 3795
$n_(26) set Z_ 0.0
set n_(27) [$ns node]
$n_(27) set X_ 2427
$n_(27) set Y_ 41
$n_(27) set Z_ 0.0
set n_(28) [$ns node]
$n_(28) set X_ 2916
$n_(28) set Y_ 1177
$n_(28) set Z_ 0.0
set n_(29) [$ns node]
$n_(29) set X_ 1880
$n_(29) set Y_ 3512
$n_(29) set Z_ 0.0

set n_(30) [$ns node]
$n_(30) set X_ 3984
$n_(30) set Y_ 2606
$n_(30) set Z_ 0.0
set n_(31) [$ns node]
$n_(31) set X_ 1966
$n_(31) set Y_ 2753
$n_(31) set Z_ 0.0
set n_(32) [$ns node]
$n_(32) set X_ 2109
$n_(32) set Y_ 3742
$n_(32) set Z_ 0.0
set n_(33) [$ns node]
$n_(33) set X_ 1369
$n_(33) set Y_ 3873
$n_(33) set Z_ 0.0
set n_(34) [$ns node]
$n_(34) set X_ 3838
$n_(34) set Y_ 1568
$n_(34) set Z_ 0.0
set n_(35) [$ns node]
$n_(35) set X_ 2114
$n_(35) set Y_ 562
$n_(35) set Z_ 0.0
set n_(36) [$ns node]
$n_(36) set X_ 3548
$n_(36) set Y_ 3021
$n_(36) set Z_ 0.0
set n_(37) [$ns node]
$n_(37) set X_ 169
$n_(37) set Y_ 3409
$n_(37) set Z_ 0.0
set n_(38) [$ns node]
$n_(38) set X_ 3132
$n_(38) set Y_ 3066
$n_(38) set Z_ 0.0
set n_(39) [$ns node]
$n_(39) set X_ 3571
$n_(39) set Y_ 518
$n_(39) set Z_ 0.0

set n_(40) [$ns node]
$n_(40) set X_ 3707
$n_(40) set Y_ 2121
$n_(40) set Z_ 0.0
set n_(41) [$ns node]
$n_(41) set X_ 1918
$n_(41) set Y_ 2495
$n_(41) set Z_ 0.0
set n_(42) [$ns node]
$n_(42) set X_ 3521
$n_(42) set Y_ 1827
$n_(42) set Z_ 0.0
set n_(43) [$ns node]
$n_(43) set X_ 1240
$n_(43) set Y_ 3582
$n_(43) set Z_ 0.0
set n_(44) [$ns node]
$n_(44) set X_ 2532
$n_(44) set Y_ 3910
$n_(44) set Z_ 0.0
set n_(45) [$ns node]
$n_(45) set X_ 49
$n_(45) set Y_ 3676
$n_(45) set Z_ 0.0
set n_(46) [$ns node]
$n_(46) set X_ 3109
$n_(46) set Y_ 102
$n_(46) set Z_ 0.0
set n_(47) [$ns node]
$n_(47) set X_ 2663
$n_(47) set Y_ 1710
$n_(47) set Z_ 0.0
set n_(48) [$ns node]
$n_(48) set X_ 1678
$n_(48) set Y_ 1185
$n_(48) set Z_ 0.0
set n_(49) [$ns node]
$n_(49) set X_ 1104
$n_(49) set Y_ 1104
$n_(49) set Z_ 0.0

set n_(50) [$ns node]
$n_(50) set X_ 1028
$n_(50) set Y_ 2810
$n_(50) set Z_ 0.0
set n_(51) [$ns node]
$n_(51) set X_ 3057
$n_(51) set Y_ 191
$n_(51) set Z_ 0.0
set n_(52) [$ns node]
$n_(52) set X_ 2983
$n_(52) set Y_ 1114
$n_(52) set Z_ 0.0
set n_(53) [$ns node]
$n_(53) set X_ 117
$n_(53) set Y_ 1041
$n_(53) set Z_ 0.0
set n_(54) [$ns node]
$n_(54) set X_ 3186
$n_(54) set Y_ 1370
$n_(54) set Z_ 0.0
set n_(55) [$ns node]
$n_(55) set X_ 1811
$n_(55) set Y_ 2751
$n_(55) set Z_ 0.0
set n_(56) [$ns node]
$n_(56) set X_ 1646
$n_(56) set Y_ 1053
$n_(56) set Z_ 0.0
set n_(57) [$ns node]
$n_(57) set X_ 3206
$n_(57) set Y_ 3095
$n_(57) set Z_ 0.0
set n_(58) [$ns node]
$n_(58) set X_ 69
$n_(58) set Y_ 3496
$n_(58) set Z_ 0.0
set n_(59) [$ns node]
$n_(59) set X_ 1431
$n_(59) set Y_ 1537
$n_(59) set Z_ 0.0

set n_(60) [$ns node]
$n_(60) set X_ 349
$n_(60) set Y_ 1307
$n_(60) set Z_ 0.0
set n_(61) [$ns node]
$n_(61) set X_ 875
$n_(61) set Y_ 2438
$n_(61) set Z_ 0.0
set n_(62) [$ns node]
$n_(62) set X_ 728
$n_(62) set Y_ 270
$n_(62) set Z_ 0.0
set n_(63) [$ns node]
$n_(63) set X_ 1652
$n_(63) set Y_ 2748
$n_(63) set Z_ 0.0
set n_(64) [$ns node]
$n_(64) set X_ 2283
$n_(64) set Y_ 2378
$n_(64) set Z_ 0.0
set n_(65) [$ns node]
$n_(65) set X_ 789
$n_(65) set Y_ 134
$n_(65) set Z_ 0.0
set n_(66) [$ns node]
$n_(66) set X_ 1977
$n_(66) set Y_ 2072
$n_(66) set Z_ 0.0
set n_(67) [$ns node]
$n_(67) set X_ 3173
$n_(67) set Y_ 2263
$n_(67) set Z_ 0.0
set n_(68) [$ns node]
$n_(68) set X_ 1873
$n_(68) set Y_ 1697
$n_(68) set Z_ 0.0
set n_(69) [$ns node]
$n_(69) set X_ 204
$n_(69) set Y_ 20
$n_(69) set Z_ 0.0

set n_(70) [$ns node]
$n_(70) set X_ 3210
$n_(70) set Y_ 3382
$n_(70) set Z_ 0.0
set n_(71) [$ns node]
$n_(71) set X_ 314
$n_(71) set Y_ 3046
$n_(71) set Z_ 0.0
set n_(72) [$ns node]
$n_(72) set X_ 3672
$n_(72) set Y_ 1533
$n_(72) set Z_ 0.0
set n_(73) [$ns node]
$n_(73) set X_ 3940
$n_(73) set Y_ 1237
$n_(73) set Z_ 0.0
set n_(74) [$ns node]
$n_(74) set X_ 3645
$n_(74) set Y_ 2108
$n_(74) set Z_ 0.0
set n_(75) [$ns node]
$n_(75) set X_ 975
$n_(75) set Y_ 3446
$n_(75) set Z_ 0.0
set n_(76) [$ns node]
$n_(76) set X_ 1752
$n_(76) set Y_ 2777
$n_(76) set Z_ 0.0
set n_(77) [$ns node]
$n_(77) set X_ 12
$n_(77) set Y_ 554
$n_(77) set Z_ 0.0
set n_(78) [$ns node]
$n_(78) set X_ 740
$n_(78) set Y_ 3868
$n_(78) set Z_ 0.0
set n_(79) [$ns node]
$n_(79) set X_ 386
$n_(79) set Y_ 3350
$n_(79) set Z_ 0.0

set n_(80) [$ns node]
$n_(80) set X_ 139
$n_(80) set Y_ 1768
$n_(80) set Z_ 0.0
set n_(81) [$ns node]
$n_(81) set X_ 1403
$n_(81) set Y_ 1462
$n_(81) set Z_ 0.0
set n_(82) [$ns node]
$n_(82) set X_ 3338
$n_(82) set Y_ 3036
$n_(82) set Z_ 0.0
set n_(83) [$ns node]
$n_(83) set X_ 2272
$n_(83) set Y_ 2087
$n_(83) set Z_ 0.0
set n_(84) [$ns node]
$n_(84) set X_ 3072
$n_(84) set Y_ 1966
$n_(84) set Z_ 0.0
set n_(85) [$ns node]
$n_(85) set X_ 72
$n_(85) set Y_ 12
$n_(85) set Z_ 0.0
set n_(86) [$ns node]
$n_(86) set X_ 658
$n_(86) set Y_ 402
$n_(86) set Z_ 0.0
set n_(87) [$ns node]
$n_(87) set X_ 700
$n_(87) set Y_ 3169
$n_(87) set Z_ 0.0
set n_(88) [$ns node]
$n_(88) set X_ 906
$n_(88) set Y_ 2589
$n_(88) set Z_ 0.0
set n_(89) [$ns node]
$n_(89) set X_ 1669
$n_(89) set Y_ 1109
$n_(89) set Z_ 0.0

set n_(90) [$ns node]
$n_(90) set X_ 923
$n_(90) set Y_ 2606
$n_(90) set Z_ 0.0
set n_(91) [$ns node]
$n_(91) set X_ 2709
$n_(91) set Y_ 2753
$n_(91) set Z_ 0.0
set n_(92) [$ns node]
$n_(92) set X_ 3028
$n_(92) set Y_ 188
$n_(92) set Z_ 0.0
set n_(93) [$ns node]
$n_(93) set X_ 2120
$n_(93) set Y_ 170
$n_(93) set Z_ 0.0
set n_(94) [$ns node]
$n_(94) set X_ 3729
$n_(94) set Y_ 125
$n_(94) set Z_ 0.0
set n_(95) [$ns node]
$n_(95) set X_ 3385
$n_(95) set Y_ 4
$n_(95) set Z_ 0.0
set n_(96) [$ns node]
$n_(96) set X_ 310
$n_(96) set Y_ 265
$n_(96) set Z_ 0.0
set n_(97) [$ns node]
$n_(97) set X_ 479
$n_(97) set Y_ 3364
$n_(97) set Z_ 0.0
set n_(98) [$ns node]
$n_(98) set X_ 379
$n_(98) set Y_ 1370
$n_(98) set Z_ 0.0
set n_(99) [$ns node]
$n_(99) set X_ 3552
$n_(99) set Y_ 2278
$n_(99) set Z_ 0.0


set positions {
	{153 299 } {1774 271} {3172 467} {2508 1439} {3196 2822} {697 465} {536 3128} {1905 2744} {1647 483} {3961 2526}
{3155 931} {273 329} {2426 16} {3695 1503} {2927 1466} {3816 1689} {2721 243} {1637 3744} {2033 3725} {506 2448} 
{694 1747} {2792 182} {1791 2124} {3874 406} {3177 3625} {3017 729} {473 1341} {1199 1557} {330 3850} {2446 3984}
{809 1345} {2365 3857} {2908 1023} {2778 687} {1656 3587} {1663 2756} {107 1861} {523 3880} {3705 2213} {724 1059}
{3170 3988} {2540 3775} {1382 2029} {2518 1124} {2510 1165} {331 2153} {1212 216} {1019 3279} {1602 844} {394 324}
{3657 2395} {870 3407} {1519 2345} {2981 2948} {1565 3188} {2493 3416} {1683 1402} {3438 1028} {1348 872} {1545 2696}
{1355 995} {301 14} {221 3217} {3013 3251} {639 2432} {782 1620} {34 1970} {1533 3374} {2929 2584} {1504 2004}
{855 677} {375 2632} {777 3075} {2121 767} {2504 1053} {2074 3699} {581 2313} {2637 950} {1011 2727} {139 1680}
{3309 3054} {2114 1773} {889 389} {3744 512} {2674 2237} {3852 2855} {1909 1796} {1968 3109} {401 1515} {2123 2118}
{1782 1847} {2159 2663} {2211 1050} {1166 3382} {2353 2963} {1308 433} {1516 1053} {2463 1583} {3369 3663} {15 1048}
	}


# Create 100 nodes with the X and Y positions
for {set i 0} {$i < 100} {incr i} {
    set node_pos [lindex $positions $i]
    set n_x [expr [lindex $node_pos 0]]
    set n_y [expr [lindex $node_pos 1]]
	 $ns at 0.1 "$n_($i) setdest $n_x $n_y 400"
}

 
# Set the transmission range for all nodes
for {set i 0} {$i < $val(nn)} {incr i} {
  $ns at 0.0 "$n_($i) set txrange_ 500"
}


$ns color 0 Red


set udp [new Agent/UDP]
$ns attach-agent $n_(85) $udp
set null [new Agent/Null]
$ns attach-agent $n_(69) $null
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 512
$cbr set interval_ 0.2
$cbr set rate_ 1mb
$cbr set maxpkts_ 10000
$cbr set packetSize_ $packetSize
$cbr set packetColor_ $packetColor
$ns connect $udp $null
$ns at 0.1 "$cbr start"

for {set i 0} {$i < $val(nn)} {incr i} {
        $ns initial_node_pos $n_($i) 80
}

for {set i 0} {$i < $val(nn)} {incr i} {
	$ns at $val(stop) "$n_($i) reset";
}

$ns at $val(stop) "finish"
$ns at 3.1  "puts \"end simulation\"; $ns halt"

proc finish {} {
        global ns tf nf
        $ns flush-trace
        close $tf
        close $nf
        exec nam p1.nam &
        exit 0
}

puts "CBR packet size = [$cbr set packetSize_]"
puts "CBR interval = [$cbr set interval_]"

$ns run