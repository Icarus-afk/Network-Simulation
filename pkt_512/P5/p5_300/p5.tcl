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
set val(x) 2000;
set val(y) 2000;
set val(stop) 150;


set ns [new Simulator]

set tf [open p5.tr w]
$ns trace-all $tf

set nf [open p5.nam w]
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


set dist(300m) 	1.7615e-10 
Phy/WirelessPhy set CSThresh_ $dist(300m)
Phy/WirelessPhy set RXThresh_ $dist(300m)	
Phy/WirelessPhy set Pt_ 0.2818

set n_(0) [$ns node]
$n_(0) set X_ 840
$n_(0) set Y_ 411
$n_(0) set Z_ 0.0
set n_(1) [$ns node]
$n_(1) set X_ 1933
$n_(1) set Y_ 648
$n_(1) set Z_ 0.0
set n_(2) [$ns node]
$n_(2) set X_ 448
$n_(2) set Y_ 1982
$n_(2) set Z_ 0.0
set n_(3) [$ns node]
$n_(3) set X_ 140
$n_(3) set Y_ 280
$n_(3) set Z_ 0.0
set n_(4) [$ns node]
$n_(4) set X_ 1450
$n_(4) set Y_ 1392
$n_(4) set Z_ 0.0
set n_(5) [$ns node]
$n_(5) set X_ 974
$n_(5) set Y_ 927
$n_(5) set Z_ 0.0
set n_(6) [$ns node]
$n_(6) set X_ 291
$n_(6) set Y_ 1569
$n_(6) set Z_ 0.0
set n_(7) [$ns node]
$n_(7) set X_ 111
$n_(7) set Y_ 668
$n_(7) set Z_ 0.0
set n_(8) [$ns node]
$n_(8) set X_ 1520
$n_(8) set Y_ 813
$n_(8) set Z_ 0.0
set n_(9) [$ns node]
$n_(9) set X_ 1964
$n_(9) set Y_ 1503
$n_(9) set Z_ 0.0

set n_(10) [$ns node]
$n_(10) set X_ 622
$n_(10) set Y_ 1531
$n_(10) set Z_ 0.0
set n_(11) [$ns node]
$n_(11) set X_ 576
$n_(11) set Y_ 359
$n_(11) set Z_ 0.0
set n_(12) [$ns node]
$n_(12) set X_ 1191
$n_(12) set Y_ 867
$n_(12) set Z_ 0.0
set n_(13) [$ns node]
$n_(13) set X_ 1853
$n_(13) set Y_ 1387
$n_(13) set Z_ 0.0
set n_(14) [$ns node]
$n_(14) set X_ 1079
$n_(14) set Y_ 912
$n_(14) set Z_ 0.0
set n_(15) [$ns node]
$n_(15) set X_ 1613
$n_(15) set Y_ 406
$n_(15) set Z_ 0.0
set n_(16) [$ns node]
$n_(16) set X_ 260
$n_(16) set Y_ 1681
$n_(16) set Z_ 0.0
set n_(17) [$ns node]
$n_(17) set X_ 607
$n_(17) set Y_ 186
$n_(17) set Z_ 0.0
set n_(18) [$ns node]
$n_(18) set X_ 565
$n_(18) set Y_ 618
$n_(18) set Z_ 0.0
set n_(19) [$ns node]
$n_(19) set X_ 1339
$n_(19) set Y_ 1280
$n_(19) set Z_ 0.0
set n_(20) [$ns node]
$n_(20) set X_ 1474
$n_(20) set Y_ 789
$n_(20) set Z_ 0.0

set n_(21) [$ns node]
$n_(21) set X_ 725
$n_(21) set Y_ 1311
$n_(21) set Z_ 0.0
set n_(22) [$ns node]
$n_(22) set X_ 274
$n_(22) set Y_ 1713
$n_(22) set Z_ 0.0
set n_(23) [$ns node]
$n_(23) set X_ 69
$n_(23) set Y_ 1986
$n_(23) set Z_ 0.0
set n_(24) [$ns node]
$n_(24) set X_ 1195
$n_(24) set Y_ 1770
$n_(24) set Z_ 0.0
set n_(25) [$ns node]
$n_(25) set X_ 737
$n_(25) set Y_ 486
$n_(25) set Z_ 0.0
set n_(26) [$ns node]
$n_(26) set X_ 419
$n_(26) set Y_ 584
$n_(26) set Z_ 0.0
set n_(27) [$ns node]
$n_(27) set X_ 844
$n_(27) set Y_ 1329
$n_(27) set Z_ 0.0
set n_(28) [$ns node]
$n_(28) set X_ 1002
$n_(28) set Y_ 1177
$n_(28) set Z_ 0.0
set n_(29) [$ns node]
$n_(29) set X_ 1880
$n_(29) set Y_ 1922
$n_(29) set Z_ 0.0

set n_(30) [$ns node]
$n_(30) set X_ 1826
$n_(30) set Y_ 386
$n_(30) set Z_ 0.0
set n_(31) [$ns node]
$n_(31) set X_ 1966
$n_(31) set Y_ 1027
$n_(31) set Z_ 0.0
set n_(32) [$ns node]
$n_(32) set X_ 2109
$n_(32) set Y_ 1532
$n_(32) set Z_ 0.0
set n_(33) [$ns node]
$n_(33) set X_ 1369
$n_(33) set Y_ 1149
$n_(33) set Z_ 0.0
set n_(34) [$ns node]
$n_(34) set X_ 286
$n_(34) set Y_ 1568
$n_(34) set Z_ 0.0
set n_(35) [$ns node]
$n_(35) set X_ 1034
$n_(35) set Y_ 562
$n_(35) set Z_ 0.0
set n_(36) [$ns node]
$n_(36) set X_ 1879
$n_(36) set Y_ 1611
$n_(36) set Z_ 0.0
set n_(37) [$ns node]
$n_(37) set X_ 169
$n_(37) set Y_ 107
$n_(37) set Z_ 0.0
set n_(38) [$ns node]
$n_(38) set X_ 3132
$n_(38) set Y_ 3066
$n_(38) set Z_ 0.0
set n_(39) [$ns node]
$n_(39) set X_ 1520
$n_(39) set Y_ 518
$n_(39) set Z_ 0.0

set n_(40) [$ns node]
$n_(40) set X_ 398
$n_(40) set Y_ 550
$n_(40) set Z_ 0.0
set n_(41) [$ns node]
$n_(41) set X_ 1918
$n_(41) set Y_ 504
$n_(41) set Z_ 0.0
set n_(42) [$ns node]
$n_(42) set X_ 1581
$n_(42) set Y_ 1827
$n_(42) set Z_ 0.0
set n_(43) [$ns node]
$n_(43) set X_ 1240
$n_(43) set Y_ 441
$n_(43) set Z_ 0.0
set n_(44) [$ns node]
$n_(44) set X_ 776
$n_(44) set Y_ 584
$n_(44) set Z_ 0.0
set n_(45) [$ns node]
$n_(45) set X_ 49
$n_(45) set Y_ 1584
$n_(45) set Z_ 0.0
set n_(46) [$ns node]
$n_(46) set X_ 1980
$n_(46) set Y_ 102
$n_(46) set Z_ 0.0
set n_(47) [$ns node]
$n_(47) set X_ 662
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
$n_(50) set Y_ 1791
$n_(50) set Z_ 0.0
set n_(51) [$ns node]
$n_(51) set X_ 812
$n_(51) set Y_ 191
$n_(51) set Z_ 0.0
set n_(52) [$ns node]
$n_(52) set X_ 1964
$n_(52) set Y_ 1114
$n_(52) set Z_ 0.0
set n_(53) [$ns node]
$n_(53) set X_ 117
$n_(53) set Y_ 1041
$n_(53) set Z_ 0.0
set n_(54) [$ns node]
$n_(54) set X_ 13
$n_(54) set Y_ 1370
$n_(54) set Z_ 0.0
set n_(55) [$ns node]
$n_(55) set X_ 1811
$n_(55) set Y_ 1536
$n_(55) set Z_ 0.0
set n_(56) [$ns node]
$n_(56) set X_ 1646
$n_(56) set Y_ 1053
$n_(56) set Z_ 0.0
set n_(57) [$ns node]
$n_(57) set X_ 690
$n_(57) set Y_ 1574
$n_(57) set Z_ 0.0
set n_(58) [$ns node]
$n_(58) set X_ 621
$n_(58) set Y_ 1639
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
$n_(61) set Y_ 1930
$n_(61) set Z_ 0.0
set n_(62) [$ns node]
$n_(62) set X_ 728
$n_(62) set Y_ 270
$n_(62) set Z_ 0.0
set n_(63) [$ns node]
$n_(63) set X_ 1652
$n_(63) set Y_ 684
$n_(63) set Z_ 0.0
set n_(64) [$ns node]
$n_(64) set X_ 1348
$n_(64) set Y_ 595
$n_(64) set Z_ 0.0
set n_(65) [$ns node]
$n_(65) set X_ 789
$n_(65) set Y_ 134
$n_(65) set Z_ 0.0
set n_(66) [$ns node]
$n_(66) set X_ 1977
$n_(66) set Y_ 2000
$n_(66) set Z_ 0.0
set n_(67) [$ns node]
$n_(67) set X_ 617
$n_(67) set Y_ 1260
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
$n_(70) set X_ 350
$n_(70) set Y_ 876
$n_(70) set Z_ 0.0
set n_(71) [$ns node]
$n_(71) set X_ 314
$n_(71) set Y_ 1018
$n_(71) set Z_ 0.0
set n_(72) [$ns node]
$n_(72) set X_ 1016
$n_(72) set Y_ 1533
$n_(72) set Z_ 0.0
set n_(73) [$ns node]
$n_(73) set X_ 1525
$n_(73) set Y_ 1237
$n_(73) set Z_ 0.0
set n_(74) [$ns node]
$n_(74) set X_ 204
$n_(74) set Y_ 496
$n_(74) set Z_ 0.0
set n_(75) [$ns node]
$n_(75) set X_ 975
$n_(75) set Y_ 1860
$n_(75) set Z_ 0.0
set n_(76) [$ns node]
$n_(76) set X_ 1752
$n_(76) set Y_ 1427
$n_(76) set Z_ 0.0
set n_(77) [$ns node]
$n_(77) set X_ 12
$n_(77) set Y_ 554
$n_(77) set Z_ 0.0
set n_(78) [$ns node]
$n_(78) set X_ 740
$n_(78) set Y_ 41
$n_(78) set Z_ 0.0
set n_(79) [$ns node]
$n_(79) set X_ 979
$n_(79) set Y_ 1010
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
$n_(82) set X_ 1761
$n_(82) set Y_ 231
$n_(82) set Z_ 0.0
set n_(83) [$ns node]
$n_(83) set X_ 1149
$n_(83) set Y_ 1131
$n_(83) set Z_ 0.0
set n_(84) [$ns node]
$n_(84) set X_ 1951
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
$n_(87) set Y_ 1388
$n_(87) set Z_ 0.0
set n_(88) [$ns node]
$n_(88) set X_ 906
$n_(88) set Y_ 115
$n_(88) set Z_ 0.0
set n_(89) [$ns node]
$n_(89) set X_ 1669
$n_(89) set Y_ 1109
$n_(89) set Z_ 0.0

set n_(90) [$ns node]
$n_(90) set X_ 923
$n_(90) set Y_ 952
$n_(90) set Z_ 0.0
set n_(91) [$ns node]
$n_(91) set X_ 1279
$n_(91) set Y_ 980
$n_(91) set Z_ 0.0
set n_(92) [$ns node]
$n_(92) set X_ 804
$n_(92) set Y_ 188
$n_(92) set Z_ 0.0
set n_(93) [$ns node]
$n_(93) set X_ 975
$n_(93) set Y_ 170
$n_(93) set Z_ 0.0
set n_(94) [$ns node]
$n_(94) set X_ 202
$n_(94) set Y_ 125
$n_(94) set Z_ 0.0
set n_(95) [$ns node]
$n_(95) set X_ 1868
$n_(95) set Y_ 4
$n_(95) set Z_ 0.0
set n_(96) [$ns node]
$n_(96) set X_ 310
$n_(96) set Y_ 265
$n_(96) set Z_ 0.0
set n_(97) [$ns node]
$n_(97) set X_ 479
$n_(97) set Y_ 478
$n_(97) set Z_ 0.0
set n_(98) [$ns node]
$n_(98) set X_ 379
$n_(98) set Y_ 1370
$n_(98) set Z_ 0.0
set n_(99) [$ns node]
$n_(99) set X_ 151
$n_(99) set Y_ 415
$n_(99) set Z_ 0.0


set positions {
	{167 724} {1140 1689} {975 306} {1865 1304} {943 282} {1104 1224} {816 1977} {136 1507} 
	{458 1734} {1338 1643} {395 1471} {1261 1664} {1440 1425} {852 786} {1733 495} {1523 1281} 
	{551 341} {665 616} {1271 97} {105 1909} {266 903} {991 990} {330 67} {1660 790} {979 1483} 
	{140 859} {277 207} {1326 1043} {289 717} {1729 1589} {1992 1047} {49 847} {1632 838} {1567 17} 
	{712 149} {484 295} {371 745} {657 76} {1190 680} {1857 1532} {774 1068} {1618 1198} {827 813} 
	{225 733} {1243 268} {1170 356} {1820 1434} {1888 964} {545 1260} {21 1154} {811 308} {438 1226} 
	{1645 152} {1472 880} {928 504} {318 1428} {159 1199} {1539 896} {457 538} {1837 693} {781 1967} 
	{1783 673} {580 1391} {891 1115} {1640 1830} {603 15} {239 1359} {1067 454} {410 319} {1471 42} 
	{132 1076} {596 672} {747 506} {1128 1140} {1937 603} {445 1556} {208 1546} {370 227} {1792 1171} 
	{717 1997} {1200 1907} {1976 1219} {1460 1877} {1661 369} {243 1279} {861 323} {195 1679} 
	{1402 1070} {145 781} {1988 1316} {1250 1634} {1868 1321} {1216 186} {1106 734} {6 1717} {1654 357} 
	{246 1598} {1964 1827} {1364 1155} {1706 1354}
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
$ns attach-agent $n_(22) $udp
set null [new Agent/Null]
$ns attach-agent $n_(16) $null
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
