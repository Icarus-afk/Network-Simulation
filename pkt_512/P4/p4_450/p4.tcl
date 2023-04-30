set val(chan) Channel/WirelessChannel;
set val(prop) Propagation/TwoRayGround;
set val(netif) Phy/WirelessPhy;
set val(mac) Mac/802_11;
set val(ifq) Queue/DropTail/PriQueue;
set val(ll) LL;
set val(ant) Antenna/OmniAntenna;
set val(ifqlen) 450;
set val(rp) AODV;
set val(nn) 300;
set val(x) 2000;
set val(y) 2000;
set val(stop) 150;


set ns [new Simulator]

set tf [open p4.tr w]
$ns trace-all $tf

set nf [open p4.nam w]
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

set dist(450m) 	3.4795e-11
Phy/WirelessPhy set CSThresh_ $dist(450m)
Phy/WirelessPhy set RXThresh_ $dist(450m)	
Phy/WirelessPhy set Pt_ 0.2818

set packetSize 512
set packetColor pink

set n_(0) [$ns node]
$n_(0) set X_ 261
$n_(0) set Y_ 930
$n_(0) set Z_ 0.0
set n_(1) [$ns node]
$n_(1) set X_ 936
$n_(1) set Y_ 314
$n_(1) set Z_ 0.0
set n_(2) [$ns node]
$n_(2) set X_ 1683
$n_(2) set Y_ 1816
$n_(2) set Z_ 0.0
set n_(3) [$ns node]
$n_(3) set X_ 3
$n_(3) set Y_ 1423
$n_(3) set Z_ 0.0
set n_(4) [$ns node]
$n_(4) set X_ 433
$n_(4) set Y_ 1170
$n_(4) set Z_ 0.0
set n_(5) [$ns node]
$n_(5) set X_ 132
$n_(5) set Y_ 1146
$n_(5) set Z_ 0.0
set n_(6) [$ns node]
$n_(6) set X_ 491
$n_(6) set Y_ 688
$n_(6) set Z_ 0.0
set n_(7) [$ns node]
$n_(7) set X_ 1732
$n_(7) set Y_ 510
$n_(7) set Z_ 0.0
set n_(8) [$ns node]
$n_(8) set X_ 1199
$n_(8) set Y_ 930
$n_(8) set Z_ 0.0
set n_(9) [$ns node]
$n_(9) set X_ 1157
$n_(9) set Y_ 908
$n_(9) set Z_ 0.0

set n_(10) [$ns node]
$n_(10) set X_ 1252
$n_(10) set Y_ 1995
$n_(10) set Z_ 0.0
set n_(11) [$ns node]
$n_(11) set X_ 1789
$n_(11) set Y_ 1397
$n_(11) set Z_ 0.0
set n_(12) [$ns node]
$n_(12) set X_ 1391
$n_(12) set Y_ 1829
$n_(12) set Z_ 0.0
set n_(13) [$ns node]
$n_(13) set X_ 741
$n_(13) set Y_ 887
$n_(13) set Z_ 0.0
set n_(14) [$ns node]
$n_(14) set X_ 1932
$n_(14) set Y_ 1453
$n_(14) set Z_ 0.0
set n_(15) [$ns node]
$n_(15) set X_ 319
$n_(15) set Y_ 1103
$n_(15) set Z_ 0.0
set n_(16) [$ns node]
$n_(16) set X_ 1935
$n_(16) set Y_ 1391
$n_(16) set Z_ 0.0
set n_(17) [$ns node]
$n_(17) set X_ 907
$n_(17) set Y_ 862
$n_(17) set Z_ 0.0
set n_(18) [$ns node]
$n_(18) set X_ 1778
$n_(18) set Y_ 1290
$n_(18) set Z_ 0.0
set n_(19) [$ns node]
$n_(19) set X_ 1042
$n_(19) set Y_ 283
$n_(19) set Z_ 0.0

set n_(20) [$ns node]
$n_(20) set X_ 1822
$n_(20) set Y_ 516
$n_(20) set Z_ 0.0
set n_(21) [$ns node]
$n_(21) set X_ 348
$n_(21) set Y_ 222
$n_(21) set Z_ 0.0
set n_(22) [$ns node]
$n_(22) set X_ 269
$n_(22) set Y_ 887
$n_(22) set Z_ 0.0
set n_(23) [$ns node]
$n_(23) set X_ 608
$n_(23) set Y_ 1174
$n_(23) set Z_ 0.0
set n_(24) [$ns node]
$n_(24) set X_ 144
$n_(24) set Y_ 146
$n_(24) set Z_ 0.0
set n_(25) [$ns node]
$n_(25) set X_ 511
$n_(25) set Y_ 1548
$n_(25) set Z_ 0.0
set n_(26) [$ns node]
$n_(26) set X_ 109
$n_(26) set Y_ 1067
$n_(26) set Z_ 0.0
set n_(27) [$ns node]
$n_(27) set X_ 1967
$n_(27) set Y_ 834
$n_(27) set Z_ 0.0
set n_(28) [$ns node]
$n_(28) set X_ 38
$n_(28) set Y_ 1758
$n_(28) set Z_ 0.0
set n_(29) [$ns node]
$n_(29) set X_ 373
$n_(29) set Y_ 1739
$n_(29) set Z_ 0.0

set n_(30) [$ns node]
$n_(30) set X_ 1894
$n_(30) set Y_ 822
$n_(30) set Z_ 0.0
set n_(31) [$ns node]
$n_(31) set X_ 331
$n_(31) set Y_ 872
$n_(31) set Z_ 0.0
set n_(32) [$ns node]
$n_(32) set X_ 124
$n_(32) set Y_ 1910
$n_(32) set Z_ 0.0
set n_(33) [$ns node]
$n_(33) set X_ 642
$n_(33) set Y_ 1504
$n_(33) set Z_ 0.0
set n_(34) [$ns node]
$n_(34) set X_ 1697
$n_(34) set Y_ 1360
$n_(34) set Z_ 0.0
set n_(35) [$ns node]
$n_(35) set X_ 816
$n_(35) set Y_ 562
$n_(35) set Z_ 0.0
set n_(36) [$ns node]
$n_(36) set X_ 1035
$n_(36) set Y_ 808
$n_(36) set Z_ 0.0
set n_(37) [$ns node]
$n_(37) set X_ 922
$n_(37) set Y_ 1149
$n_(37) set Z_ 0.0
set n_(38) [$ns node]
$n_(38) set X_ 986
$n_(38) set Y_ 253
$n_(38) set Z_ 0.0
set n_(39) [$ns node]
$n_(39) set X_ 715
$n_(39) set Y_ 78
$n_(39) set Z_ 0.0

set n_(40) [$ns node]
$n_(40) set X_ 726
$n_(40) set Y_ 115
$n_(40) set Z_ 0.0
set n_(41) [$ns node]
$n_(41) set X_ 1226
$n_(41) set Y_ 515
$n_(41) set Z_ 0.0
set n_(42) [$ns node]
$n_(42) set X_ 884
$n_(42) set Y_ 481
$n_(42) set Z_ 0.0
set n_(43) [$ns node]
$n_(43) set X_ 752
$n_(43) set Y_ 1701
$n_(43) set Z_ 0.0
set n_(44) [$ns node]
$n_(44) set X_ 649
$n_(44) set Y_ 1576
$n_(44) set Z_ 0.0
set n_(45) [$ns node]
$n_(45) set X_ 188
$n_(45) set Y_ 940
$n_(45) set Z_ 0.0
set n_(46) [$ns node]
$n_(46) set X_ 593
$n_(46) set Y_ 984
$n_(46) set Z_ 0.0
set n_(47) [$ns node]
$n_(47) set X_ 1725
$n_(47) set Y_ 850
$n_(47) set Z_ 0.0
set n_(48) [$ns node]
$n_(48) set X_ 353
$n_(48) set Y_ 1284
$n_(48) set Z_ 0.0
set n_(49) [$ns node]
$n_(49) set X_ 84
$n_(49) set Y_ 1497
$n_(49) set Z_ 0.0

set n_(50) [$ns node]
$n_(50) set X_ 367
$n_(50) set Y_ 1268
$n_(50) set Z_ 0.0
set n_(51) [$ns node]
$n_(51) set X_ 1224
$n_(51) set Y_ 1002
$n_(51) set Z_ 0.0
set n_(52) [$ns node]
$n_(52) set X_ 641
$n_(52) set Y_ 206
$n_(52) set Z_ 0.0
set n_(53) [$ns node]
$n_(53) set X_ 1359
$n_(53) set Y_ 335
$n_(53) set Z_ 0.0
set n_(54) [$ns node]
$n_(54) set X_ 120
$n_(54) set Y_ 1170
$n_(54) set Z_ 0.0
set n_(55) [$ns node]
$n_(55) set X_ 25
$n_(55) set Y_ 1786
$n_(55) set Z_ 0.0
set n_(56) [$ns node]
$n_(56) set X_ 871
$n_(56) set Y_ 1942
$n_(56) set Z_ 0.0
set n_(57) [$ns node]
$n_(57) set X_ 1960
$n_(57) set Y_ 32
$n_(57) set Z_ 0.0
set n_(58) [$ns node]
$n_(58) set X_ 806
$n_(58) set Y_ 1879
$n_(58) set Z_ 0.0
set n_(59) [$ns node]
$n_(59) set X_ 530
$n_(59) set Y_ 1375
$n_(59) set Z_ 0.0

set n_(60) [$ns node]
$n_(60) set X_ 669
$n_(60) set Y_ 447
$n_(60) set Z_ 0.0
set n_(61) [$ns node]
$n_(61) set X_ 376
$n_(61) set Y_ 308
$n_(61) set Z_ 0.0
set n_(62) [$ns node]
$n_(62) set X_ 1812
$n_(62) set Y_ 20
$n_(62) set Z_ 0.0
set n_(63) [$ns node]
$n_(63) set X_ 1898
$n_(63) set Y_ 808
$n_(63) set Z_ 0.0
set n_(64) [$ns node]
$n_(64) set X_ 1355
$n_(64) set Y_ 675
$n_(64) set Z_ 0.0
set n_(65) [$ns node]
$n_(65) set X_ 974
$n_(65) set Y_ 1652
$n_(65) set Z_ 0.0
set n_(66) [$ns node]
$n_(66) set X_ 875
$n_(66) set Y_ 1426
$n_(66) set Z_ 0.0
set n_(67) [$ns node]
$n_(67) set X_ 39
$n_(67) set Y_ 1491
$n_(67) set Z_ 0.0
set n_(68) [$ns node]
$n_(68) set X_ 315
$n_(68) set Y_ 420
$n_(68) set Z_ 0.0
set n_(69) [$ns node]
$n_(69) set X_ 989
$n_(69) set Y_ 1880
$n_(69) set Z_ 0.0

set n_(70) [$ns node]
$n_(70) set X_ 396
$n_(70) set Y_ 812
$n_(70) set Z_ 0.0
set n_(71) [$ns node]
$n_(71) set X_ 1136
$n_(71) set Y_ 1606
$n_(71) set Z_ 0.0
set n_(72) [$ns node]
$n_(72) set X_ 99
$n_(72) set Y_ 998
$n_(72) set Z_ 0.0
set n_(73) [$ns node]
$n_(73) set X_ 1682
$n_(73) set Y_ 356
$n_(73) set Z_ 0.0
set n_(74) [$ns node]
$n_(74) set X_ 497
$n_(74) set Y_ 686
$n_(74) set Z_ 0.0
set n_(75) [$ns node]
$n_(75) set X_ 1610
$n_(75) set Y_ 547
$n_(75) set Z_ 0.0
set n_(76) [$ns node]
$n_(76) set X_ 4
$n_(76) set Y_ 326
$n_(76) set Z_ 0.0
set n_(77) [$ns node]
$n_(77) set X_ 236
$n_(77) set Y_ 753
$n_(77) set Z_ 0.0
set n_(78) [$ns node]
$n_(78) set X_ 221
$n_(78) set Y_ 1426
$n_(78) set Z_ 0.0
set n_(79) [$ns node]
$n_(79) set X_ 1557
$n_(79) set Y_ 1315
$n_(79) set Z_ 0.0

set n_(80) [$ns node]
$n_(80) set X_ 135
$n_(80) set Y_ 1751
$n_(80) set Z_ 0.0
set n_(81) [$ns node]
$n_(81) set X_ 1633
$n_(81) set Y_ 1510
$n_(81) set Z_ 0.0
set n_(82) [$ns node]
$n_(82) set X_ 1188
$n_(82) set Y_ 877
$n_(82) set Z_ 0.0
set n_(83) [$ns node]
$n_(83) set X_ 1716
$n_(83) set Y_ 906
$n_(83) set Z_ 0.0
set n_(84) [$ns node]
$n_(84) set X_ 1668
$n_(84) set Y_ 697
$n_(84) set Z_ 0.0
set n_(85) [$ns node]
$n_(85) set X_ 963
$n_(85) set Y_ 18
$n_(85) set Z_ 0.0
set n_(86) [$ns node]
$n_(86) set X_ 558
$n_(86) set Y_ 960
$n_(86) set Z_ 0.0
set n_(87) [$ns node]
$n_(87) set X_ 1619
$n_(87) set Y_ 1155
$n_(87) set Z_ 0.0
set n_(88) [$ns node]
$n_(88) set X_ 1006
$n_(88) set Y_ 105
$n_(88) set Z_ 0.0
set n_(89) [$ns node]
$n_(89) set X_ 418
$n_(89) set Y_ 860
$n_(89) set Z_ 0.0

set n_(90) [$ns node]
$n_(90) set X_ 931
$n_(90) set Y_ 1816
$n_(90) set Z_ 0.0
set n_(91) [$ns node]
$n_(91) set X_ 1063
$n_(91) set Y_ 337
$n_(91) set Z_ 0.0
set n_(92) [$ns node]
$n_(92) set X_ 1435
$n_(92) set Y_ 782
$n_(92) set Z_ 0.0
set n_(93) [$ns node]
$n_(93) set X_ 1016
$n_(93) set Y_ 507
$n_(93) set Z_ 0.0
set n_(94) [$ns node]
$n_(94) set X_ 843
$n_(94) set Y_ 885
$n_(94) set Z_ 0.0
set n_(95) [$ns node]
$n_(95) set X_ 1358
$n_(95) set Y_ 111
$n_(95) set Z_ 0.0
set n_(96) [$ns node]
$n_(96) set X_ 892
$n_(96) set Y_ 1595
$n_(96) set Z_ 0.0
set n_(97) [$ns node]
$n_(97) set X_ 767
$n_(97) set Y_ 1249
$n_(97) set Z_ 0.0
set n_(98) [$ns node]
$n_(98) set X_ 1235
$n_(98) set Y_ 680
$n_(98) set Z_ 0.0
set n_(99) [$ns node]
$n_(99) set X_ 597
$n_(99) set Y_ 169
$n_(99) set Z_ 0.0

set n_(100) [$ns node]
$n_(100) set X_ 506
$n_(100) set Y_ 1018
$n_(100) set Z_ 0.0
set n_(101) [$ns node]
$n_(101) set X_ 1156
$n_(101) set Y_ 516
$n_(101) set Z_ 0.0
set n_(102) [$ns node]
$n_(102) set X_ 410
$n_(102) set Y_ 629
$n_(102) set Z_ 0.0
set n_(103) [$ns node]
$n_(103) set X_ 1428
$n_(103) set Y_ 1208
$n_(103) set Z_ 0.0
set n_(104) [$ns node]
$n_(104) set X_ 384
$n_(104) set Y_ 1807
$n_(104) set Z_ 0.0
set n_(105) [$ns node]
$n_(105) set X_ 1835
$n_(105) set Y_ 936
$n_(105) set Z_ 0.0
set n_(106) [$ns node]
$n_(106) set X_ 1553
$n_(106) set Y_ 1568
$n_(106) set Z_ 0.0
set n_(107) [$ns node]
$n_(107) set X_ 798
$n_(107) set Y_ 54
$n_(107) set Z_ 0.0
set n_(108) [$ns node]
$n_(108) set X_ 324
$n_(108) set Y_ 1187
$n_(108) set Z_ 0.0
set n_(109) [$ns node]
$n_(109) set X_ 1412
$n_(109) set Y_ 45
$n_(109) set Z_ 0.0

set n_(110) [$ns node]
$n_(110) set X_ 976
$n_(110) set Y_ 1221
$n_(110) set Z_ 0.0
set n_(111) [$ns node]
$n_(111) set X_ 1240
$n_(111) set Y_ 1629
$n_(111) set Z_ 0.0
set n_(112) [$ns node]
$n_(112) set X_ 814
$n_(112) set Y_ 1852
$n_(112) set Z_ 0.0
set n_(113) [$ns node]
$n_(113) set X_ 643
$n_(113) set Y_ 1587
$n_(113) set Z_ 0.0
set n_(114) [$ns node]
$n_(114) set X_ 460
$n_(114) set Y_ 1716
$n_(114) set Z_ 0.0
set n_(115) [$ns node]
$n_(115) set X_ 334
$n_(115) set Y_ 454
$n_(115) set Z_ 0.0
set n_(116) [$ns node]
$n_(116) set X_ 1253
$n_(116) set Y_ 159
$n_(116) set Z_ 0.0
set n_(117) [$ns node]
$n_(117) set X_ 158
$n_(117) set Y_ 347
$n_(117) set Z_ 0.0
set n_(118) [$ns node]
$n_(118) set X_ 1910
$n_(118) set Y_ 834
$n_(118) set Z_ 0.0
set n_(119) [$ns node]
$n_(119) set X_ 923
$n_(119) set Y_ 1591
$n_(119) set Z_ 0.0

set n_(120) [$ns node]
$n_(120) set X_ 402
$n_(120) set Y_ 1063
$n_(120) set Z_ 0.0
set n_(121) [$ns node]
$n_(121) set X_ 1139
$n_(121) set Y_ 256
$n_(121) set Z_ 0.0
set n_(122) [$ns node]
$n_(122) set X_ 1216
$n_(122) set Y_ 876
$n_(122) set Z_ 0.0
set n_(123) [$ns node]
$n_(123) set X_ 1955
$n_(123) set Y_ 1629
$n_(123) set Z_ 0.0
set n_(124) [$ns node]
$n_(124) set X_ 433
$n_(124) set Y_ 1063
$n_(124) set Z_ 0.0
set n_(125) [$ns node]
$n_(125) set X_ 1736
$n_(125) set Y_ 269
$n_(125) set Z_ 0.0
set n_(126) [$ns node]
$n_(126) set X_ 1244
$n_(126) set Y_ 1935
$n_(126) set Z_ 0.0
set n_(127) [$ns node]
$n_(127) set X_ 167
$n_(127) set Y_ 672
$n_(127) set Z_ 0.0
set n_(128) [$ns node]
$n_(128) set X_ 1750
$n_(128) set Y_ 1135
$n_(128) set Z_ 0.0
set n_(129) [$ns node]
$n_(129) set X_ 1244
$n_(129) set Y_ 129
$n_(129) set Z_ 0.0

set n_(130) [$ns node]
$n_(130) set X_ 780
$n_(130) set Y_ 1311
$n_(130) set Z_ 0.0
set n_(131) [$ns node]
$n_(131) set X_ 1489
$n_(131) set Y_ 196
$n_(131) set Z_ 0.0
set n_(132) [$ns node]
$n_(132) set X_ 291
$n_(132) set Y_ 1247
$n_(132) set Z_ 0.0
set n_(133) [$ns node]
$n_(133) set X_ 350
$n_(133) set Y_ 1161
$n_(133) set Z_ 0.0
set n_(134) [$ns node]
$n_(134) set X_ 462
$n_(134) set Y_ 1396
$n_(134) set Z_ 0.0
set n_(135) [$ns node]
$n_(135) set X_ 599
$n_(135) set Y_ 911
$n_(135) set Z_ 0.0
set n_(136) [$ns node]
$n_(136) set X_ 1419
$n_(136) set Y_ 1949
$n_(136) set Z_ 0.0
set n_(137) [$ns node]
$n_(137) set X_ 524
$n_(137) set Y_ 200
$n_(137) set Z_ 0.0
set n_(138) [$ns node]
$n_(138) set X_ 694
$n_(138) set Y_ 1740
$n_(138) set Z_ 0.0
set n_(139) [$ns node]
$n_(139) set X_ 1554
$n_(139) set Y_ 1583
$n_(139) set Z_ 0.0

set n_(140) [$ns node]
$n_(140) set X_ 842
$n_(140) set Y_ 1006
$n_(140) set Z_ 0.0
set n_(141) [$ns node]
$n_(141) set X_ 1463
$n_(141) set Y_ 1662
$n_(141) set Z_ 0.0
set n_(142) [$ns node]
$n_(142) set X_ 685
$n_(142) set Y_ 307
$n_(142) set Z_ 0.0
set n_(143) [$ns node]
$n_(143) set X_ 1866
$n_(143) set Y_ 1421
$n_(143) set Z_ 0.0
set n_(144) [$ns node]
$n_(144) set X_ 1112
$n_(144) set Y_ 1077
$n_(144) set Z_ 0.0
set n_(145) [$ns node]
$n_(145) set X_ 50
$n_(145) set Y_ 223
$n_(145) set Z_ 0.0
set n_(146) [$ns node]
$n_(146) set X_ 1329
$n_(146) set Y_ 1265
$n_(146) set Z_ 0.0
set n_(147) [$ns node]
$n_(147) set X_ 1422
$n_(147) set Y_ 1686
$n_(47) set Z_ 0.0
set n_(148) [$ns node]
$n_(148) set X_ 457
$n_(148) set Y_ 894
$n_(148) set Z_ 0.0
set n_(149) [$ns node]
$n_(149) set X_ 1399
$n_(149) set Y_ 837
$n_(149) set Z_ 0.0

set n_(150) [$ns node]
$n_(150) set X_ 34
$n_(150) set Y_ 379
$n_(150) set Z_ 0.0
set n_(151) [$ns node]
$n_(151) set X_ 446
$n_(151) set Y_ 1728
$n_(151) set Z_ 0.0
set n_(152) [$ns node]
$n_(152) set X_ 979
$n_(152) set Y_ 5
$n_(152) set Z_ 0.0
set n_(153) [$ns node]
$n_(153) set X_ 1883
$n_(153) set Y_ 852
$n_(153) set Z_ 0.0
set n_(154) [$ns node]
$n_(154) set X_ 310
$n_(154) set Y_ 1254
$n_(154) set Z_ 0.0
set n_(155) [$ns node]
$n_(155) set X_ 1651
$n_(155) set Y_ 17
$n_(155) set Z_ 0.0
set n_(156) [$ns node]
$n_(156) set X_ 1528
$n_(156) set Y_ 1247
$n_(156) set Z_ 0.0
set n_(157) [$ns node]
$n_(157) set X_ 1519
$n_(157) set Y_ 376
$n_(157) set Z_ 0.0
set n_(158) [$ns node]
$n_(158) set X_ 545
$n_(158) set Y_ 280
$n_(158) set Z_ 0.0
set n_(159) [$ns node]
$n_(159) set X_ 765
$n_(159) set Y_ 1713
$n_(159) set Z_ 0.0

set n_(160) [$ns node]
$n_(160) set X_ 902
$n_(160) set Y_ 407
$n_(160) set Z_ 0.0
set n_(161) [$ns node]
$n_(161) set X_ 1451
$n_(161) set Y_ 932
$n_(161) set Z_ 0.0
set n_(162) [$ns node]
$n_(162) set X_ 1585
$n_(162) set Y_ 115
$n_(162) set Z_ 0.0
set n_(163) [$ns node]
$n_(163) set X_ 506
$n_(163) set Y_ 1695
$n_(163) set Z_ 0.0
set n_(164) [$ns node]
$n_(164) set X_ 1918
$n_(164) set Y_ 343
$n_(164) set Z_ 0.0
set n_(165) [$ns node]
$n_(165) set X_ 1582
$n_(165) set Y_ 1785
$n_(165) set Z_ 0.0
set n_(166) [$ns node]
$n_(166) set X_ 1416
$n_(166) set Y_ 1015
$n_(166) set Z_ 0.0
set n_(167) [$ns node]
$n_(167) set X_ 328
$n_(167) set Y_ 1691
$n_(167) set Z_ 0.0
set n_(168) [$ns node]
$n_(168) set X_ 1669
$n_(168) set Y_ 579
$n_(168) set Z_ 0.0
set n_(169) [$ns node]
$n_(169) set X_ 380
$n_(169) set Y_ 1365
$n_(169) set Z_ 0.0

set n_(170) [$ns node]
$n_(170) set X_ 658
$n_(170) set Y_ 627
$n_(170) set Z_ 0.0
set n_(171) [$ns node]
$n_(171) set X_ 163
$n_(171) set Y_ 624
$n_(171) set Z_ 0.0
set n_(172) [$ns node]
$n_(172) set X_ 1649
$n_(172) set Y_ 1590
$n_(172) set Z_ 0.0
set n_(173) [$ns node]
$n_(173) set X_ 658
$n_(173) set Y_ 1818
$n_(173) set Z_ 0.0
set n_(174) [$ns node]
$n_(174) set X_ 832
$n_(174) set Y_ 924
$n_(174) set Z_ 0.0
set n_(175) [$ns node]
$n_(175) set X_ 625
$n_(175) set Y_ 774
$n_(175) set Z_ 0.0
set n_(176) [$ns node]
$n_(176) set X_ 1969
$n_(176) set Y_ 421
$n_(176) set Z_ 0.0
set n_(177) [$ns node]
$n_(177) set X_ 1515
$n_(177) set Y_ 1090
$n_(177) set Z_ 0.0
set n_(178) [$ns node]
$n_(178) set X_ 733
$n_(178) set Y_ 583
$n_(178) set Z_ 0.0
set n_(179) [$ns node]
$n_(179) set X_ 306
$n_(179) set Y_ 282
$n_(179) set Z_ 0.0

set n_(180) [$ns node]
$n_(180) set X_ 1947
$n_(180) set Y_ 216
$n_(180) set Z_ 0.0
set n_(181) [$ns node]
$n_(181) set X_ 1518
$n_(181) set Y_ 1961
$n_(181) set Z_ 0.0
set n_(182) [$ns node]
$n_(182) set X_ 1778
$n_(182) set Y_ 956
$n_(182) set Z_ 0.0
set n_(183) [$ns node]
$n_(183) set X_ 1465
$n_(183) set Y_ 586
$n_(183) set Z_ 0.0
set n_(184) [$ns node]
$n_(184) set X_ 833
$n_(184) set Y_ 1474
$n_(184) set Z_ 0.0
set n_(185) [$ns node]
$n_(185) set X_ 1665
$n_(185) set Y_ 317
$n_(185) set Z_ 0.0
set n_(186) [$ns node]
$n_(186) set X_ 1079
$n_(186) set Y_ 797
$n_(186) set Z_ 0.0
set n_(187) [$ns node]
$n_(187) set X_ 292
$n_(187) set Y_ 453
$n_(187) set Z_ 0.0
set n_(188) [$ns node]
$n_(188) set X_ 1352
$n_(188) set Y_ 1932
$n_(188) set Z_ 0.0
set n_(189) [$ns node]
$n_(189) set X_ 375
$n_(189) set Y_ 980
$n_(189) set Z_ 0.0

set n_(190) [$ns node]
$n_(190) set X_ 526
$n_(190) set Y_ 59
$n_(190) set Z_ 0.0
set n_(191) [$ns node]
$n_(191) set X_ 597
$n_(191) set Y_ 1945
$n_(191) set Z_ 0.0
set n_(192) [$ns node]
$n_(192) set X_ 283
$n_(192) set Y_ 836
$n_(192) set Z_ 0.0
set n_(193) [$ns node]
$n_(193) set X_ 1691
$n_(193) set Y_ 1012
$n_(193) set Z_ 0.0
set n_(194) [$ns node]
$n_(194) set X_ 259
$n_(194) set Y_ 791
$n_(194) set Z_ 0.0
set n_(195) [$ns node]
$n_(195) set X_ 241
$n_(195) set Y_ 451
$n_(195) set Z_ 0.0
set n_(196) [$ns node]
$n_(196) set X_ 1270
$n_(196) set Y_ 334
$n_(196) set Z_ 0.0
set n_(197) [$ns node]
$n_(197) set X_ 1245
$n_(197) set Y_ 1297
$n_(197) set Z_ 0.0
set n_(198) [$ns node]
$n_(198) set X_ 1782
$n_(198) set Y_ 1463
$n_(198) set Z_ 0.0
set n_(199) [$ns node]
$n_(199) set X_ 1210
$n_(199) set Y_ 1455
$n_(199) set Z_ 0.0

set n_(200) [$ns node]
$n_(200) set X_ 703
$n_(200) set Y_ 941
$n_(200) set Z_ 0.0
set n_(201) [$ns node]
$n_(201) set X_ 177
$n_(201) set Y_ 1281
$n_(201) set Z_ 0.0
set n_(202) [$ns node]
$n_(202) set X_ 414
$n_(202) set Y_ 77
$n_(202) set Z_ 0.0
set n_(203) [$ns node]
$n_(203) set X_ 1949
$n_(203) set Y_ 606
$n_(203) set Z_ 0.0
set n_(204) [$ns node]
$n_(204) set X_ 1729
$n_(204) set Y_ 1366
$n_(204) set Z_ 0.0
set n_(205) [$ns node]
$n_(205) set X_ 391
$n_(205) set Y_ 927
$n_(205) set Z_ 0.0
set n_(206) [$ns node]
$n_(206) set X_ 711
$n_(206) set Y_ 331
$n_(206) set Z_ 0.0
set n_(207) [$ns node]
$n_(207) set X_ 1736
$n_(207) set Y_ 257
$n_(207) set Z_ 0.0
set n_(208) [$ns node]
$n_(208) set X_ 500
$n_(208) set Y_ 925
$n_(208) set Z_ 0.0
set n_(209) [$ns node]
$n_(209) set X_ 1639
$n_(209) set Y_ 1160
$n_(209) set Z_ 0.0

set n_(210) [$ns node]
$n_(210) set X_ 192
$n_(210) set Y_ 660
$n_(210) set Z_ 0.0
set n_(211) [$ns node]
$n_(211) set X_ 1857
$n_(211) set Y_ 1778
$n_(211) set Z_ 0.0
set n_(212) [$ns node]
$n_(212) set X_ 864
$n_(212) set Y_ 1955
$n_(212) set Z_ 0.0
set n_(213) [$ns node]
$n_(213) set X_ 1549
$n_(213) set Y_ 1013
$n_(213) set Z_ 0.0
set n_(214) [$ns node]
$n_(214) set X_ 993
$n_(214) set Y_ 1656
$n_(214) set Z_ 0.0
set n_(215) [$ns node]
$n_(215) set X_ 1789
$n_(215) set Y_ 1670
$n_(215) set Z_ 0.0
set n_(216) [$ns node]
$n_(216) set X_ 1941
$n_(216) set Y_ 568
$n_(216) set Z_ 0.0
set n_(217) [$ns node]
$n_(217) set X_ 328
$n_(217) set Y_ 229
$n_(217) set Z_ 0.0
set n_(218) [$ns node]
$n_(218) set X_ 907
$n_(218) set Y_ 387
$n_(218) set Z_ 0.0
set n_(219) [$ns node]
$n_(219) set X_ 1551
$n_(219) set Y_ 430
$n_(219) set Z_ 0.0

set n_(220) [$ns node]
$n_(220) set X_ 1833
$n_(220) set Y_ 487
$n_(220) set Z_ 0.0
set n_(221) [$ns node]
$n_(221) set X_ 375
$n_(221) set Y_ 1793
$n_(221) set Z_ 0.0
set n_(222) [$ns node]
$n_(222) set X_ 1614
$n_(222) set Y_ 1718
$n_(222) set Z_ 0.0
set n_(223) [$ns node]
$n_(223) set X_ 1164
$n_(223) set Y_ 1021
$n_(223) set Z_ 0.0
set n_(224) [$ns node]
$n_(224) set X_ 1485
$n_(224) set Y_ 717
$n_(224) set Z_ 0.0
set n_(225) [$ns node]
$n_(225) set X_ 1812
$n_(225) set Y_ 1150
$n_(225) set Z_ 0.0
set n_(226) [$ns node]
$n_(226) set X_ 218
$n_(226) set Y_ 1242
$n_(226) set Z_ 0.0
set n_(227) [$ns node]
$n_(227) set X_ 113
$n_(227) set Y_ 388
$n_(227) set Z_ 0.0
set n_(228) [$ns node]
$n_(228) set X_ 1685
$n_(228) set Y_ 1769
$n_(228) set Z_ 0.0
set n_(229) [$ns node]
$n_(229) set X_ 93
$n_(229) set Y_ 1066
$n_(229) set Z_ 0.0

set n_(230) [$ns node]
$n_(230) set X_ 940
$n_(230) set Y_ 767
$n_(230) set Z_ 0.0
set n_(231) [$ns node]
$n_(231) set X_ 1060
$n_(231) set Y_ 1137
$n_(231) set Z_ 0.0
set n_(232) [$ns node]
$n_(232) set X_ 1419
$n_(232) set Y_ 1015
$n_(232) set Z_ 0.0
set n_(233) [$ns node]
$n_(233) set X_ 1798
$n_(233) set Y_ 1505
$n_(233) set Z_ 0.0
set n_(234) [$ns node]
$n_(234) set X_ 1119
$n_(234) set Y_ 449
$n_(234) set Z_ 0.0
set n_(235) [$ns node]
$n_(235) set X_ 153
$n_(235) set Y_ 1904
$n_(235) set Z_ 0.0
set n_(236) [$ns node]
$n_(236) set X_ 175
$n_(236) set Y_ 1304
$n_(236) set Z_ 0.0
set n_(237) [$ns node]
$n_(237) set X_ 750
$n_(237) set Y_ 122
$n_(237) set Z_ 0.0
set n_(238) [$ns node]
$n_(238) set X_ 1396
$n_(238) set Y_ 1591
$n_(238) set Z_ 0.0
set n_(239) [$ns node]
$n_(239) set X_ 571
$n_(239) set Y_ 1354
$n_(239) set Z_ 0.0

set n_(240) [$ns node]
$n_(240) set X_ 1952
$n_(240) set Y_ 459
$n_(240) set Z_ 0.0
set n_(241) [$ns node]
$n_(241) set X_ 1909
$n_(241) set Y_ 428
$n_(241) set Z_ 0.0
set n_(242) [$ns node]
$n_(242) set X_ 1143
$n_(242) set Y_ 949
$n_(242) set Z_ 0.0
set n_(243) [$ns node]
$n_(243) set X_ 223
$n_(243) set Y_ 1632
$n_(243) set Z_ 0.0
set n_(244) [$ns node]
$n_(244) set X_ 627
$n_(244) set Y_ 1414
$n_(244) set Z_ 0.0
set n_(245) [$ns node]
$n_(245) set X_ 641
$n_(245) set Y_ 1125
$n_(245) set Z_ 0.0
set n_(246) [$ns node]
$n_(246) set X_ 1015
$n_(246) set Y_ 103
$n_(246) set Z_ 0.0
set n_(247) [$ns node]
$n_(247) set X_ 252
$n_(247) set Y_ 1185
$n_(247) set Z_ 0.0
set n_(248) [$ns node]
$n_(248) set X_ 1417
$n_(248) set Y_ 774
$n_(248) set Z_ 0.0
set n_(249) [$ns node]
$n_(249) set X_ 1450
$n_(249) set Y_ 1814
$n_(249) set Z_ 0.0

set n_(250) [$ns node]
$n_(250) set X_ 1725
$n_(250) set Y_ 218
$n_(250) set Z_ 0.0
set n_(251) [$ns node]
$n_(251) set X_ 1595
$n_(251) set Y_ 760
$n_(251) set Z_ 0.0
set n_(252) [$ns node]
$n_(252) set X_ 1187
$n_(252) set Y_ 1304
$n_(252) set Z_ 0.0
set n_(253) [$ns node]
$n_(253) set X_ 902
$n_(253) set Y_ 1139
$n_(253) set Z_ 0.0
set n_(254) [$ns node]
$n_(254) set X_ 1715
$n_(254) set Y_ 176
$n_(254) set Z_ 0.0
set n_(255) [$ns node]
$n_(255) set X_ 1548
$n_(255) set Y_ 865
$n_(255) set Z_ 0.0
set n_(256) [$ns node]
$n_(256) set X_ 978
$n_(256) set Y_ 746
$n_(256) set Z_ 0.0
set n_(257) [$ns node]
$n_(257) set X_ 1814
$n_(257) set Y_ 1948
$n_(257) set Z_ 0.0
set n_(258) [$ns node]
$n_(258) set X_ 964
$n_(258) set Y_ 943
$n_(258) set Z_ 0.0
set n_(259) [$ns node]
$n_(259) set X_ 1852
$n_(259) set Y_ 1415
$n_(259) set Z_ 0.0

set n_(260) [$ns node]
$n_(260) set X_ 1809
$n_(260) set Y_ 1409
$n_(260) set Z_ 0.0
set n_(261) [$ns node]
$n_(261) set X_ 1157
$n_(261) set Y_ 1655
$n_(261) set Z_ 0.0
set n_(262) [$ns node]
$n_(262) set X_ 272
$n_(262) set Y_ 1495
$n_(262) set Z_ 0.0
set n_(263) [$ns node]
$n_(263) set X_ 1135
$n_(263) set Y_ 899
$n_(263) set Z_ 0.0
set n_(264) [$ns node]
$n_(264) set X_ 278
$n_(264) set Y_ 227
$n_(264) set Z_ 0.0
set n_(265) [$ns node]
$n_(265) set X_ 893
$n_(265) set Y_ 308
$n_(265) set Z_ 0.0
set n_(266) [$ns node]
$n_(266) set X_ 1009
$n_(266) set Y_ 115
$n_(266) set Z_ 0.0
set n_(267) [$ns node]
$n_(267) set X_ 1094
$n_(267) set Y_ 171
$n_(267) set Z_ 0.0
set n_(268) [$ns node]
$n_(268) set X_ 1814
$n_(268) set Y_ 323
$n_(268) set Z_ 0.0
set n_(269) [$ns node]
$n_(269) set X_ 561
$n_(269) set Y_ 1231
$n_(269) set Z_ 0.0

set n_(270) [$ns node]
$n_(270) set X_ 586
$n_(270) set Y_ 1388
$n_(270) set Z_ 0.0
set n_(271) [$ns node]
$n_(271) set X_ 224
$n_(271) set Y_ 1811
$n_(271) set Z_ 0.0
set n_(272) [$ns node]
$n_(272) set X_ 1849
$n_(272) set Y_ 1248
$n_(272) set Z_ 0.0
set n_(273) [$ns node]
$n_(273) set X_ 58
$n_(273) set Y_ 1924
$n_(273) set Z_ 0.0
set n_(274) [$ns node]
$n_(274) set X_ 497
$n_(274) set Y_ 989
$n_(274) set Z_ 0.0
set n_(275) [$ns node]
$n_(275) set X_ 1744
$n_(275) set Y_ 650
$n_(275) set Z_ 0.0
set n_(276) [$ns node]
$n_(276) set X_ 9
$n_(276) set Y_ 1550
$n_(276) set Z_ 0.0
set n_(277) [$ns node]
$n_(277) set X_ 972
$n_(277) set Y_ 765
$n_(277) set Z_ 0.0
set n_(278) [$ns node]
$n_(278) set X_ 1379
$n_(278) set Y_ 794
$n_(278) set Z_ 0.0
set n_(279) [$ns node]
$n_(279) set X_ 442
$n_(279) set Y_ 488
$n_(279) set Z_ 0.0

set n_(280) [$ns node]
$n_(280) set X_ 1486
$n_(280) set Y_ 503
$n_(280) set Z_ 0.0
set n_(281) [$ns node]
$n_(281) set X_ 1553
$n_(281) set Y_ 1376
$n_(281) set Z_ 0.0
set n_(282) [$ns node]
$n_(282) set X_ 240
$n_(282) set Y_ 939
$n_(282) set Z_ 0.0
set n_(283) [$ns node]
$n_(283) set X_ 474
$n_(283) set Y_ 294
$n_(283) set Z_ 0.0
set n_(284) [$ns node]
$n_(284) set X_ 1611
$n_(284) set Y_ 1785
$n_(284) set Z_ 0.0
set n_(285) [$ns node]
$n_(285) set X_ 839
$n_(285) set Y_ 1709
$n_(285) set Z_ 0.0
set n_(286) [$ns node]
$n_(286) set X_ 570
$n_(286) set Y_ 422
$n_(286) set Z_ 0.0
set n_(287) [$ns node]
$n_(287) set X_ 746
$n_(287) set Y_ 978
$n_(287) set Z_ 0.0
set n_(288) [$ns node]
$n_(288) set X_ 1079
$n_(288) set Y_ 971
$n_(288) set Z_ 0.0
set n_(289) [$ns node]
$n_(289) set X_ 1726
$n_(289) set Y_ 1219
$n_(289) set Z_ 0.0

set n_(290) [$ns node]
$n_(290) set X_ 673
$n_(290) set Y_ 262
$n_(290) set Z_ 0.0
set n_(291) [$ns node]
$n_(291) set X_ 1364
$n_(291) set Y_ 1041
$n_(291) set Z_ 0.0
set n_(292) [$ns node]
$n_(292) set X_ 933
$n_(292) set Y_ 1644
$n_(292) set Z_ 0.0
set n_(293) [$ns node]
$n_(293) set X_ 1934
$n_(293) set Y_ 882
$n_(293) set Z_ 0.0
set n_(294) [$ns node]
$n_(294) set X_ 1871
$n_(294) set Y_ 196
$n_(294) set Z_ 0.0
set n_(295) [$ns node]
$n_(295) set X_ 959
$n_(295) set Y_ 988
$n_(295) set Z_ 0.0
set n_(296) [$ns node]
$n_(296) set X_ 855
$n_(296) set Y_ 1943
$n_(296) set Z_ 0.0
set n_(297) [$ns node]
$n_(297) set X_ 1418
$n_(297) set Y_ 1251
$n_(297) set Z_ 0.0
set n_(298) [$ns node]
$n_(298) set X_ 953
$n_(298) set Y_ 276
$n_(298) set Z_ 0.0
set n_(299) [$ns node]
$n_(299) set X_ 358
$n_(299) set Y_ 780
$n_(299) set Z_ 0.0


set positions  {
	{1102 52} {1066 192} {11 1977} {1392 720} {628 1408} {311 1266} {449 200} {47 780} {1424 816} 
	{1026 1581} {758 1191} {1254 78} {842 1982} {1127 1136} {673 1042} {1430 329} {1864 637} {1015 161} 
	{605 1365} {1653 1338} {616 616} {842 113} {516 1152} {843 639} {507 545} {1084 1778} {1704 639} {781 1761} 
	{342 1070} {1908 1853} {976 892} {1149 747} {1793 685} {117 1338} {321 594} {481 90} {693 857} {254 1614} {333 968}
	{937 1619} {1107 426} {460 247} {817 755} {470 1411} {572 591} {209 1818} {429 635} {270 809} {1773 1083} {3 880} 
	{1992 110} {285 1287} {1722 305} {1212 1415} {836 376} {257 1507} {1852 1778} {368 1844} {1901 1127} {253 656} {667 407} {480 655} 
	{605 399} {1967 357} {612 701} {523 961} {728 1960} {1022 1806} {1827 1297} {505 1553} {1861 493} {241 221} {1335 1966} {1282 1644}
	{1447 1291} {1219 805} {173 1156} {536 1799} {395 647} {976 4} {1646 112} {991 1911} {927 528} {1304 223} {1337 262} {1811 1249} {1326 18}
	{1107 838} {211 87} {1064 1831} {954 919} {988 1357} {1753 601} {1389 545} {762 308} {1279 1957} {1394 649} {344 1337} {126 1967} 
	{1447 345} {1479 1704} {877 690} {1412 1198} {1729 27} {544 612} {1178 37} {1092 1922} {410 467} {1110 682} {753 184} {116 752}
	{582 702} {1850 952} {1994 535} {437 1812} {1032 1169} {1591 1386} {118 1245} {889 356} {1604 709} {1614 1099} {616 333} {140 376} 
	{688 1391} {100 1519} {877 53} {1464 995} {1561 570} {1355 1400} {1218 1759} {1587 1226} {369 300} {1577 1550} {251 477} {1039 48} 
	{1906 178} {197 797} {501 596} {187 1770} {34 328} {308 1206} {1692 907} {1314 334} {1117 1040} {131 74} {99 1309} {1062 1949} {890 1244} 
	{75 1456} {748 1127} {1445 1588} {216 1028} {686 639} {1455 296} {1405 169} {1254 101} {1709 792} {1725 1945} {1276 840} {70 1237} {375 1334} 
	{1790 581} {161 1305} {752 1872} {127 833} {909 1426} {898 263} {1669 1778} {150 929} {1615 1461} {1719 1338} {1167 258} {1385 1816} 
	{1047 1804} {1543 468} {1952 1290} {1265 542} {613 1388} {1086 1645} {28 1916} {84 1956} {1309 715} {1969 1199} {799 943} 
	{21 1264} {1246 1307} {1547 1710} {794 1593} {622 1044} {1503 275} {882 1711} {958 981} {1491 1190} {619 1762} {608 1833} 
	{1222 790} {1709 1707} {544 707} {245 1998} {1734 192} {141 975} {239 1225} {136 822} {815 1706} {948 1290} {1042 93} {342 542} 
	{328 1749} {80 1258} {1919 720} {1144 1154} {547 1182} {994 479} {632 1909} {750 617} {494 1626} {119 99} {1599 529} {944 1706} 
	{1059 1432} {1746 278} {1973 1411} {1481 221} {36 844} {1916 223} {1858 855} {111 400} {947 1892} {1247 867} {1803 1783} {1505 1017} 
	{27 789} {119 786} {1558 607} {1391 839} {1143 140} {331 807} {828 709} {1123 729} {464 1038} {1647 908} {1171 841} {1407 1439} {1578 659} 
	{810 1170} {239 308} {1395 83} {1066 99} {44 1156} {388 1131} {179 1142} {1401 667} {295 883} {31 1470} {1870 1170} {957 288} {40 128} {865 1658} 
	{962 942} {993 1724} {668 1241} {1994 1449} {1783 228} {955 1330} {1563 1885} {245 289} {1726 7} {283 797} {700 85} {1639 1800} {92 1986} 
	{1081 957} {249 1341} {337 1484} {420 1951} {1064 1772} {925 1633} {1570 1479} {316 91} {499 1106} {428 1544} {1646 295} {1560 1957} {59 874} 
	{1392 191} {704 450} {1071 1890} {1425 48} {680 299} {143 1745} {1153 1586} {568 1255} {562 1207} {294 1175} {713 1757} {235 945} {44 1246} 
	{1999 1480} {35 850} {396 835}
}

for {set i 0} {$i < $val(nn)} {incr i} {
    set node_pos [lindex $positions $i]
    set n_x [expr [lindex $node_pos 0]]
    set n_y [expr [lindex $node_pos 1]]
	 $ns at 0.01 "$n_($i) setdest $n_x $n_y 400"
}


$ns color 0 Red


set udp [new Agent/UDP]
$ns attach-agent $n_(148) $udp
set null [new Agent/Null]
$ns attach-agent $n_(208) $null
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 512
$cbr set interval_ 0.2
$cbr set rate_ 1mb
$cbr set maxpkts_ 10000
$cbr set packetColor_ $packetColor
$ns connect $udp $null
$ns at 0.1 "$cbr start"

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
        exec nam p4.nam &
        exit 0
}

puts "CBR packet size = [$cbr set packetSize_]"
puts "CBR interval = [$cbr set interval_]"

$ns run
