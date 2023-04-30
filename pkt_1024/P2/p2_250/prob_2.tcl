set val(chan) Channel/WirelessChannel;
set val(prop) Propagation/TwoRayGround;
set val(netif) Phy/WirelessPhy;
set val(mac) Mac/802_11;
set val(ifq) Queue/DropTail/PriQueue;
set val(ll) LL;
set val(ant) Antenna/OmniAntenna;
set val(ifqlen) 250;
set val(rp) AODV;
set val(nn) 100;
set val(x) 4000;
set val(y) 4000;
set val(stop) 150;


set ns [new Simulator]

set tf [open p2.tr w]
$ns trace-all $tf

set nf [open p2.nam w]
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

set packetSize 1024
set packetColor red

set dist(250m) 3.6526e-10
Phy/WirelessPhy set CSThresh_ $dist(250m)
Phy/WirelessPhy set RXThresh_ $dist(250m)	
Phy/WirelessPhy set Pt_ 0.2818

set n_(0) [$ns node]
$n_(0) set X_ 1377
$n_(0) set Y_ 126
$n_(0) set Z_ 0.0

set n_(1) [$ns node]
$n_(1) set X_ 519
$n_(1) set Y_ 1040
$n_(1) set Z_ 0.0

set n_(2) [$ns node]
$n_(2) set X_ 2110
$n_(2) set Y_ 1558
$n_(2) set Z_ 0.0

set n_(3) [$ns node]
$n_(3) set X_ 3411
$n_(3) set Y_ 3207
$n_(3) set Z_ 0.0

set n_(4) [$ns node]
$n_(4) set X_ 3201
$n_(4) set Y_ 3760
$n_(4) set Z_ 0.0
set n_(5) [$ns node]
$n_(5) set X_ 1264
$n_(5) set Y_ 2079
$n_(5) set Z_ 0.0
set n_(6) [$ns node]
$n_(6) set X_ 680
$n_(6) set Y_ 3257
$n_(6) set Z_ 0.0
set n_(7) [$ns node]
$n_(7) set X_ 1412
$n_(7) set Y_ 221
$n_(7) set Z_ 0.0
set n_(8) [$ns node]
$n_(8) set X_ 2884
$n_(8) set Y_ 2000
$n_(8) set Z_ 0.0
set n_(9) [$ns node]
$n_(9) set X_ 1590
$n_(9) set Y_ 3143
$n_(9) set Z_ 0.0

set n_(10) [$ns node]
$n_(10) set X_ 2925
$n_(10) set Y_ 3338
$n_(10) set Z_ 0.0
set n_(11) [$ns node]
$n_(11) set X_ 1398
$n_(11) set Y_ 2522
$n_(11) set Z_ 0.0
set n_(12) [$ns node]
$n_(12) set X_ 1403
$n_(12) set Y_ 2408
$n_(12) set Z_ 0.0
set n_(13) [$ns node]
$n_(13) set X_ 2893
$n_(13) set Y_ 3889
$n_(13) set Z_ 0.0
set n_(14) [$ns node]
$n_(14) set X_ 2620
$n_(14) set Y_ 1771
$n_(14) set Z_ 0.0
set n_(15) [$ns node]
$n_(15) set X_ 2821
$n_(15) set Y_ 946
$n_(15) set Z_ 0.0
set n_(16) [$ns node]
$n_(16) set X_ 2644
$n_(16) set Y_ 3346
$n_(16) set Z_ 0.0
set n_(17) [$ns node]
$n_(17) set X_ 3650
$n_(17) set Y_ 317
$n_(17) set Z_ 0.0
set n_(18) [$ns node]
$n_(18) set X_ 2052
$n_(18) set Y_ 1043
$n_(18) set Z_ 0.0
set n_(19) [$ns node]
$n_(19) set X_ 335
$n_(19) set Y_ 3023
$n_(19) set Z_ 0.0

set n_(20) [$ns node]
$n_(20) set X_ 464
$n_(20) set Y_ 3160
$n_(20) set Z_ 0.0
set n_(21) [$ns node]
$n_(21) set X_ 658
$n_(21) set Y_ 3078
$n_(21) set Z_ 0.0
set n_(22) [$ns node]
$n_(22) set X_ 718
$n_(22) set Y_ 2447
$n_(22) set Z_ 0.0
set n_(23) [$ns node]
$n_(23) set X_ 1604
$n_(23) set Y_ 3977
$n_(23) set Z_ 0.0
set n_(24) [$ns node]
$n_(24) set X_ 763
$n_(24) set Y_ 2572
$n_(24) set Z_ 0.0
set n_(25) [$ns node]
$n_(25) set X_ 268
$n_(25) set Y_ 2122
$n_(25) set Z_ 0.0
set n_(26) [$ns node]
$n_(26) set X_ 1014
$n_(26) set Y_ 2072
$n_(26) set Z_ 0.0
set n_(27) [$ns node]
$n_(27) set X_ 457
$n_(27) set Y_ 2866
$n_(27) set Z_ 0.0
set n_(28) [$ns node]
$n_(28) set X_ 2559
$n_(28) set Y_ 3665
$n_(28) set Z_ 0.0
set n_(29) [$ns node]
$n_(29) set X_ 1100
$n_(29) set Y_ 2398
$n_(29) set Z_ 0.0

set n_(30) [$ns node]
$n_(30) set X_ 1351
$n_(30) set Y_ 3791
$n_(30) set Z_ 0.0
set n_(31) [$ns node]
$n_(31) set X_ 676
$n_(31) set Y_ 1660
$n_(31) set Z_ 0.0
set n_(32) [$ns node]
$n_(32) set X_ 2963
$n_(32) set Y_ 1729
$n_(32) set Z_ 0.0
set n_(33) [$ns node]
$n_(33) set X_ 3943
$n_(33) set Y_ 2016
$n_(33) set Z_ 0.0
set n_(34) [$ns node]
$n_(34) set X_ 1059
$n_(34) set Y_ 1604
$n_(34) set Z_ 0.0
set n_(35) [$ns node]
$n_(35) set X_ 3397
$n_(35) set Y_ 1359
$n_(35) set Z_ 0.0
set n_(36) [$ns node]
$n_(36) set X_ 1844
$n_(36) set Y_ 3021
$n_(36) set Z_ 0.0
set n_(37) [$ns node]
$n_(37) set X_ 169
$n_(37) set Y_ 2182
$n_(37) set Z_ 0.0
set n_(38) [$ns node]
$n_(38) set X_ 2074
$n_(38) set Y_ 1714
$n_(38) set Z_ 0.0
set n_(39) [$ns node]
$n_(39) set X_ 2287
$n_(39) set Y_ 2704
$n_(39) set Z_ 0.0

set n_(40) [$ns node]
$n_(40) set X_ 3862
$n_(40) set Y_ 3853
$n_(40) set Z_ 0.0
set n_(41) [$ns node]
$n_(41) set X_ 1224
$n_(41) set Y_ 2406
$n_(41) set Z_ 0.0
set n_(42) [$ns node]
$n_(42) set X_ 753
$n_(42) set Y_ 504
$n_(42) set Z_ 0.0
set n_(43) [$ns node]
$n_(43) set X_ 1265
$n_(43) set Y_ 1545
$n_(43) set Z_ 0.0
set n_(44) [$ns node]
$n_(44) set X_ 3338
$n_(44) set Y_ 3505
$n_(44) set Z_ 0.0
set n_(45) [$ns node]
$n_(45) set X_ 3114
$n_(45) set Y_ 1089
$n_(45) set Z_ 0.0
set n_(46) [$ns node]
$n_(46) set X_ 440
$n_(46) set Y_ 1210
$n_(46) set Z_ 0.0
set n_(47) [$ns node]
$n_(47) set X_ 3378
$n_(47) set Y_ 2780
$n_(47) set Z_ 0.0
set n_(48) [$ns node]
$n_(48) set X_ 1993
$n_(48) set Y_ 1099
$n_(48) set Z_ 0.0
set n_(49) [$ns node]
$n_(49) set X_ 3151
$n_(49) set Y_ 2471
$n_(49) set Z_ 0.0

set n_(50) [$ns node]
$n_(50) set X_ 2362
$n_(50) set Y_ 2267
$n_(50) set Z_ 0.0
set n_(51) [$ns node]
$n_(51) set X_ 2245
$n_(51) set Y_ 1617
$n_(51) set Z_ 0.0
set n_(52) [$ns node]
$n_(52) set X_ 638
$n_(52) set Y_ 246
$n_(52) set Z_ 0.0
set n_(53) [$ns node]
$n_(53) set X_ 3238
$n_(53) set Y_ 3149
$n_(53) set Z_ 0.0
set n_(54) [$ns node]
$n_(54) set X_ 3658
$n_(54) set Y_ 3402
$n_(54) set Z_ 0.0
set n_(55) [$ns node]
$n_(55) set X_ 1899
$n_(55) set Y_ 1344
$n_(55) set Z_ 0.0
set n_(56) [$ns node]
$n_(56) set X_ 3846
$n_(56) set Y_ 3031
$n_(56) set Z_ 0.0
set n_(57) [$ns node]
$n_(57) set X_ 1449
$n_(57) set Y_ 766
$n_(57) set Z_ 0.0
set n_(58) [$ns node]
$n_(58) set X_ 3150
$n_(58) set Y_ 1470
$n_(58) set Z_ 0.0
set n_(59) [$ns node]
$n_(59) set X_ 941
$n_(59) set Y_ 1189
$n_(59) set Z_ 0.0

set n_(60) [$ns node]
$n_(60) set X_ 953
$n_(60) set Y_ 2774
$n_(60) set Z_ 0.0
set n_(61) [$ns node]
$n_(61) set X_ 1068
$n_(61) set Y_ 1543
$n_(61) set Z_ 0.0
set n_(62) [$ns node]
$n_(62) set X_ 3579
$n_(62) set Y_ 1784
$n_(62) set Z_ 0.0
set n_(63) [$ns node]
$n_(63) set X_ 1438
$n_(63) set Y_ 1605
$n_(63) set Z_ 0.0
set n_(64) [$ns node]
$n_(64) set X_ 1390
$n_(64) set Y_ 3512
$n_(64) set Z_ 0.0
set n_(65) [$ns node]
$n_(65) set X_ 3029
$n_(65) set Y_ 1287
$n_(65) set Z_ 0.0
set n_(66) [$ns node]
$n_(66) set X_ 1280
$n_(66) set Y_ 2072
$n_(66) set Z_ 0.0
set n_(67) [$ns node]
$n_(67) set X_ 3950
$n_(67) set Y_ 583
$n_(67) set Z_ 0.0
set n_(68) [$ns node]
$n_(68) set X_ 3924
$n_(68) set Y_ 398
$n_(68) set Z_ 0.0
set n_(69) [$ns node]
$n_(69) set X_ 1942
$n_(69) set Y_ 1093
$n_(69) set Z_ 0.0

set n_(70) [$ns node]
$n_(70) set X_ 1706
$n_(70) set Y_ 201
$n_(70) set Z_ 0.0
set n_(71) [$ns node]
$n_(71) set X_ 2100
$n_(71) set Y_ 818
$n_(71) set Z_ 0.0
set n_(72) [$ns node]
$n_(72) set X_ 1949
$n_(72) set Y_ 1024
$n_(72) set Z_ 0.0
set n_(73) [$ns node]
$n_(73) set X_ 1180
$n_(73) set Y_ 426
$n_(73) set Z_ 0.0
set n_(74) [$ns node]
$n_(74) set X_ 1770
$n_(74) set Y_ 692
$n_(74) set Z_ 0.0
set n_(75) [$ns node]
$n_(75) set X_ 1749
$n_(75) set Y_ 1573
$n_(75) set Z_ 0.0
set n_(76) [$ns node]
$n_(76) set X_ 293
$n_(76) set Y_ 2074
$n_(76) set Z_ 0.0
set n_(77) [$ns node]
$n_(77) set X_ 3719
$n_(77) set Y_ 3086
$n_(77) set Z_ 0.0
set n_(78) [$ns node]
$n_(78) set X_ 914
$n_(78) set Y_ 3188
$n_(78) set Z_ 0.0
set n_(79) [$ns node]
$n_(79) set X_ 480
$n_(79) set Y_ 768
$n_(79) set Z_ 0.0

set n_(80) [$ns node]
$n_(80) set X_ 2233
$n_(80) set Y_ 2593
$n_(80) set Z_ 0.0
set n_(81) [$ns node]
$n_(81) set X_ 1149
$n_(81) set Y_ 1538
$n_(81) set Z_ 0.0
set n_(82) [$ns node]
$n_(82) set X_ 3338
$n_(82) set Y_ 3036
$n_(82) set Z_ 0.0
set n_(83) [$ns node]
$n_(83) set X_ 1996
$n_(83) set Y_ 3180
$n_(83) set Z_ 0.0
set n_(84) [$ns node]
$n_(84) set X_ 1301
$n_(84) set Y_ 1035
$n_(84) set Z_ 0.0
set n_(85) [$ns node]
$n_(85) set X_ 2622
$n_(85) set Y_ 2345
$n_(85) set Z_ 0.0
set n_(86) [$ns node]
$n_(86) set X_ 3604
$n_(86) set Y_ 3795
$n_(86) set Z_ 0.0
set n_(87) [$ns node]
$n_(87) set X_ 1324
$n_(87) set Y_ 1217
$n_(87) set Z_ 0.0
set n_(88) [$ns node]
$n_(88) set X_ 1842
$n_(88) set Y_ 608
$n_(88) set Z_ 0.0
set n_(89) [$ns node]
$n_(89) set X_ 3125
$n_(89) set Y_ 999
$n_(89) set Z_ 0.0

set n_(90) [$ns node]
$n_(90) set X_ 3570
$n_(90) set Y_ 883
$n_(90) set Z_ 0.0
set n_(91) [$ns node]
$n_(91) set X_ 4
$n_(91) set Y_ 1979
$n_(91) set Z_ 0.0
set n_(92) [$ns node]
$n_(92) set X_ 711
$n_(92) set Y_ 3339
$n_(92) set Z_ 0.0
set n_(93) [$ns node]
$n_(93) set X_ 153
$n_(93) set Y_ 1554
$n_(93) set Z_ 0.0
set n_(94) [$ns node]
$n_(94) set X_ 1305
$n_(94) set Y_ 3448
$n_(94) set Z_ 0.0
set n_(95) [$ns node]
$n_(95) set X_ 255
$n_(95) set Y_ 1811
$n_(95) set Z_ 0.0
set n_(96) [$ns node]
$n_(96) set X_ 2788
$n_(96) set Y_ 1905
$n_(96) set Z_ 0.0
set n_(97) [$ns node]
$n_(97) set X_ 3042
$n_(97) set Y_ 919
$n_(97) set Z_ 0.0
set n_(98) [$ns node]
$n_(98) set X_ 2297
$n_(98) set Y_ 3318
$n_(98) set Z_ 0.0
set n_(99) [$ns node]
$n_(99) set X_ 2596
$n_(99) set Y_ 469
$n_(99) set Z_ 0.0

set positions {
	{3435 1269} {1301 3501} {1435 2979} {2245 593} {2456 1894} {3185 1270} {832 232} {430 831} {2114 2012} {270 3415} {1519 515} {3325 571} {3031 1236} {2821 3360} {3659 600} {276 312} {1029 2888} {2125 3824} {3460 1164} {917 1505} {2169 1350} {774 1244} {1904 1406} {2968 1298} {1800 2557} {1149 1570} {2863 896} {2307 2621} {173 2862} {160 2601} {1464 1575} {1159 1371} {2754 3130} {1656 2662} {857 1617} {914 1387} {1109 2341} {1754 2571} {1103 319} {1372 1027} {29 3253} {833 3258} {1153 1253} {1757 1776} {3118 3006} {3112 2862} {995 2359} {158 2823} {1576 107} {537 1934} {1157 1497} {1442 1280} {2686 1105} {2767 2243} {3317 2469} {2888 2792} {1192 338} {1903 677} {1068 1146} {3013 1845} {1303 2969} {3111 871} {2623 638} {3256 2286} {1775 1364} {3508 3099} {2900 486} {2323 527} {487 2813} {3489 1537} {3787 604} {3515 355} {1792 3979} {547 2098} {1722 3870} {931 802} {3680 1282} {790 3336} {2976 2898} {3511 2501} {2536 2496} {3029 3716} {3490 1404} {2348 3130} {1259 2897} {536 3859} {3819 991} {2484 1118} {3306 2378} {1422 920} {2179 3105} {2288 1681} {861 1619} {1904 1540} {1623 2678} {891 459} {3006 3041} {3758 633} {3428 2555} {3445 125}
	
	}

for {set i 0} {$i < 100} {incr i} {
	set node_pos [lindex $positions $i]
    set n_x [expr [lindex $node_pos 0]]
    set n_y [expr [lindex $node_pos 1]]
	 $ns at 0.1 "$n_($i) setdest $n_x $n_y 400"
}

for {set i 0} {$i < $val(nn)} {incr i} {
  $ns at 0.0 "$n_($i) set txrange_ 500"
}

$ns color 0 Red

set udp [new Agent/UDP]
$ns attach-agent $n_(6) $udp
set null [new Agent/Null]
$ns attach-agent $n_(92) $null
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 1024
$cbr set interval_ 0.2
$cbr set rate_ 1mb
$cbr set maxpkts_ 10000
$cbr set packetSize_ $packetSize
$cbr set packetColor_ $packetColor
$ns connect $udp $null
$ns at 0.4 "$cbr start"

for {set i 0} {$i < $val(nn)} {incr i} {
        $ns initial_node_pos $n_($i) 30
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
        exec nam ns_aodv.nam &
        exit 0
}

puts "CBR packet size = [$cbr set packetSize_]"
puts "CBR interval = [$cbr set interval_]"

$ns run