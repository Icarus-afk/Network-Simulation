set val(chan) Channel/WirelessChannel;
set val(prop) Propagation/TwoRayGround;
set val(netif) Phy/WirelessPhy;
set val(mac) Mac/802_11;
set val(ifq) Queue/DropTail/PriQueue;
set val(ll) LL;
set val(ant) Antenna/OmniAntenna;
set val(ifqlen) 500;
set val(rp) AODV;
set val(nn) 300;
set val(x) 4000;
set val(y) 4000;
set val(stop) 150;


set ns [new Simulator]

set tf [open p3.tr w]
$ns trace-all $tf

set nf [open p3.nam w]
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


set dist(500m) 2.2829e-11 
Phy/WirelessPhy set CSThresh_ $dist(500m)
Phy/WirelessPhy set RXThresh_ $dist(500m)	
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

set n_(100) [$ns node]
$n_(100) set X_ 2889
$n_(100) set Y_ 1073
$n_(100) set Z_ 0.0
set n_(101) [$ns node]
$n_(101) set X_ 2181
$n_(101) set Y_ 359
$n_(101) set Z_ 0.0
set n_(102) [$ns node]
$n_(102) set X_ 55
$n_(102) set Y_ 3054
$n_(102) set Z_ 0.0
set n_(103) [$ns node]
$n_(103) set X_ 82
$n_(103) set Y_ 1719
$n_(103) set Z_ 0.0
set n_(104) [$ns node]
$n_(104) set X_ 2833
$n_(104) set Y_ 168
$n_(104) set Z_ 0.0
set n_(105) [$ns node]
$n_(105) set X_ 716
$n_(105) set Y_ 3990
$n_(105) set Z_ 0.0
set n_(106) [$ns node]
$n_(106) set X_ 3773
$n_(106) set Y_ 3147
$n_(106) set Z_ 0.0
set n_(107) [$ns node]
$n_(107) set X_ 3718
$n_(107) set Y_ 2142
$n_(107) set Z_ 0.0
set n_(108) [$ns node]
$n_(108) set X_ 3902
$n_(108) set Y_ 3722
$n_(108) set Z_ 0.0
set n_(109) [$ns node]
$n_(109) set X_ 972
$n_(109) set Y_ 137
$n_(109) set Z_ 0.0

set n_(110) [$ns node]
$n_(110) set X_ 477
$n_(110) set Y_ 2927
$n_(110) set Z_ 0.0
set n_(111) [$ns node]
$n_(111) set X_ 1827
$n_(111) set Y_ 2652
$n_(111) set Z_ 0.0
set n_(112) [$ns node]
$n_(112) set X_ 2416
$n_(112) set Y_ 1448
$n_(112) set Z_ 0.0
set n_(113) [$ns node]
$n_(113) set X_ 3037
$n_(113) set Y_ 1782
$n_(113) set Z_ 0.0
set n_(114) [$ns node]
$n_(114) set X_ 14
$n_(114) set Y_ 1801
$n_(114) set Z_ 0.0
set n_(115) [$ns node]
$n_(115) set X_ 3643
$n_(115) set Y_ 3003
$n_(115) set Z_ 0.0
set n_(116) [$ns node]
$n_(116) set X_ 2249
$n_(116) set Y_ 2675
$n_(116) set Z_ 0.0
set n_(117) [$ns node]
$n_(117) set X_ 2993
$n_(117) set Y_ 2821
$n_(117) set Z_ 0.0
set n_(118) [$ns node]
$n_(118) set X_ 1425
$n_(118) set Y_ 3879
$n_(118) set Z_ 0.0
set n_(119) [$ns node]
$n_(119) set X_ 3337
$n_(119) set Y_ 915
$n_(119) set Z_ 0.0

set n_(120) [$ns node]
$n_(120) set X_ 2203
$n_(120) set Y_ 2701
$n_(120) set Z_ 0.0
set n_(121) [$ns node]
$n_(121) set X_ 735
$n_(121) set Y_ 2348
$n_(121) set Z_ 0.0
set n_(122) [$ns node]
$n_(122) set X_ 2112
$n_(122) set Y_ 1329
$n_(122) set Z_ 0.0
set n_(123) [$ns node]
$n_(123) set X_ 1264
$n_(123) set Y_ 1407
$n_(123) set Z_ 0.0
set n_(124) [$ns node]
$n_(124) set X_ 921
$n_(124) set Y_ 2180
$n_(124) set Z_ 0.0
set n_(125) [$ns node]
$n_(125) set X_ 3563
$n_(125) set Y_ 757
$n_(125) set Z_ 0.0
set n_(126) [$ns node]
$n_(126) set X_ 902
$n_(126) set Y_ 2200
$n_(126) set Z_ 0.0
set n_(127) [$ns node]
$n_(127) set X_ 1507
$n_(127) set Y_ 1996
$n_(127) set Z_ 0.0
set n_(128) [$ns node]
$n_(128) set X_ 3385
$n_(128) set Y_ 3942
$n_(128) set Z_ 0.0
set n_(129) [$ns node]
$n_(129) set X_ 327
$n_(129) set Y_ 2291
$n_(129) set Z_ 0.0

set n_(130) [$ns node]
$n_(130) set X_ 2679
$n_(130) set Y_ 3991
$n_(130) set Z_ 0.0
set n_(131) [$ns node]
$n_(131) set X_ 3291
$n_(131) set Y_ 3279
$n_(131) set Z_ 0.0
set n_(132) [$ns node]
$n_(132) set X_ 1112
$n_(132) set Y_ 2905
$n_(132) set Z_ 0.0
set n_(133) [$ns node]
$n_(133) set X_ 3214
$n_(133) set Y_ 3328
$n_(133) set Z_ 0.0
set n_(134) [$ns node]
$n_(134) set X_ 1833
$n_(134) set Y_ 3647
$n_(134) set Z_ 0.0
set n_(135) [$ns node]
$n_(135) set X_ 920
$n_(135) set Y_ 3268
$n_(135) set Z_ 0.0
set n_(136) [$ns node]
$n_(136) set X_ 2665
$n_(136) set Y_ 1248
$n_(136) set Z_ 0.0
set n_(137) [$ns node]
$n_(137) set X_ 1085
$n_(137) set Y_ 1722
$n_(137) set Z_ 0.0
set n_(138) [$ns node]
$n_(138) set X_ 3810
$n_(138) set Y_ 3389
$n_(138) set Z_ 0.0
set n_(139) [$ns node]
$n_(139) set X_ 3437
$n_(139) set Y_ 1646
$n_(139) set Z_ 0.0

set n_(140) [$ns node]
$n_(140) set X_ 1375
$n_(140) set Y_ 2730
$n_(140) set Z_ 0.0
set n_(141) [$ns node]
$n_(141) set X_ 3938
$n_(141) set Y_ 2061
$n_(141) set Z_ 0.0
set n_(142) [$ns node]
$n_(142) set X_ 3512
$n_(142) set Y_ 475
$n_(142) set Z_ 0.0
set n_(143) [$ns node]
$n_(143) set X_ 1821
$n_(143) set Y_ 2434
$n_(143) set Z_ 0.0
set n_(144) [$ns node]
$n_(144) set X_ 1525
$n_(144) set Y_ 3639
$n_(144) set Z_ 0.0
set n_(145) [$ns node]
$n_(145) set X_ 2975
$n_(145) set Y_ 2627
$n_(145) set Z_ 0.0
set n_(146) [$ns node]
$n_(146) set X_ 2221
$n_(146) set Y_ 1748
$n_(146) set Z_ 0.0
set n_(147) [$ns node]
$n_(147) set X_ 2049
$n_(147) set Y_ 2871
$n_(47) set Z_ 0.0
set n_(148) [$ns node]
$n_(148) set X_ 440
$n_(148) set Y_ 2210
$n_(148) set Z_ 0.0
set n_(149) [$ns node]
$n_(149) set X_ 2651
$n_(149) set Y_ 2650
$n_(149) set Z_ 0.0

set n_(150) [$ns node]
$n_(150) set X_ 1869
$n_(150) set Y_ 983
$n_(150) set Z_ 0.0
set n_(151) [$ns node]
$n_(151) set X_ 2217
$n_(151) set Y_ 1498
$n_(151) set Z_ 0.0
set n_(152) [$ns node]
$n_(152) set X_ 2531
$n_(152) set Y_ 2768
$n_(152) set Z_ 0.0
set n_(153) [$ns node]
$n_(153) set X_ 1023
$n_(153) set Y_ 2784
$n_(153) set Z_ 0.0
set n_(154) [$ns node]
$n_(154) set X_ 2159
$n_(154) set Y_ 2466
$n_(154) set Z_ 0.0
set n_(155) [$ns node]
$n_(155) set X_ 1697
$n_(155) set Y_ 2223
$n_(155) set Z_ 0.0
set n_(156) [$ns node]
$n_(156) set X_ 2479
$n_(156) set Y_ 1206
$n_(156) set Z_ 0.0
set n_(157) [$ns node]
$n_(157) set X_ 2150
$n_(157) set Y_ 2137
$n_(157) set Z_ 0.0
set n_(158) [$ns node]
$n_(158) set X_ 2861
$n_(158) set Y_ 3804
$n_(158) set Z_ 0.0
set n_(159) [$ns node]
$n_(159) set X_ 145
$n_(159) set Y_ 466
$n_(159) set Z_ 0.0

set n_(160) [$ns node]
$n_(160) set X_ 1275
$n_(160) set Y_ 3839
$n_(160) set Z_ 0.0
set n_(161) [$ns node]
$n_(161) set X_ 1058
$n_(161) set Y_ 2764
$n_(161) set Z_ 0.0
set n_(162) [$ns node]
$n_(162) set X_ 1957
$n_(162) set Y_ 232
$n_(162) set Z_ 0.0
set n_(163) [$ns node]
$n_(163) set X_ 3726
$n_(163) set Y_ 2894
$n_(163) set Z_ 0.0
set n_(164) [$ns node]
$n_(164) set X_ 2872
$n_(164) set Y_ 1544
$n_(164) set Z_ 0.0
set n_(165) [$ns node]
$n_(165) set X_ 3723
$n_(165) set Y_ 3385
$n_(165) set Z_ 0.0
set n_(166) [$ns node]
$n_(166) set X_ 1024
$n_(166) set Y_ 1473
$n_(166) set Z_ 0.0
set n_(167) [$ns node]
$n_(167) set X_ 3623
$n_(167) set Y_ 655
$n_(167) set Z_ 0.0
set n_(168) [$ns node]
$n_(168) set X_ 806
$n_(168) set Y_ 1
$n_(168) set Z_ 0.0
set n_(169) [$ns node]
$n_(169) set X_ 3414
$n_(169) set Y_ 3502
$n_(169) set Z_ 0.0

set n_(170) [$ns node]
$n_(170) set X_ 2446
$n_(170) set Y_ 2370
$n_(170) set Z_ 0.0
set n_(171) [$ns node]
$n_(171) set X_ 289
$n_(171) set Y_ 353
$n_(171) set Z_ 0.0
set n_(172) [$ns node]
$n_(172) set X_ 2199
$n_(172) set Y_ 1301
$n_(172) set Z_ 0.0
set n_(173) [$ns node]
$n_(173) set X_ 2523
$n_(173) set Y_ 1117
$n_(173) set Z_ 0.0
set n_(174) [$ns node]
$n_(174) set X_ 2932
$n_(174) set Y_ 3138
$n_(174) set Z_ 0.0
set n_(175) [$ns node]
$n_(175) set X_ 2797
$n_(175) set Y_ 179
$n_(175) set Z_ 0.0
set n_(176) [$ns node]
$n_(176) set X_ 401
$n_(176) set Y_ 1685
$n_(176) set Z_ 0.0
set n_(177) [$ns node]
$n_(177) set X_ 732
$n_(177) set Y_ 453
$n_(177) set Z_ 0.0
set n_(178) [$ns node]
$n_(178) set X_ 1106
$n_(178) set Y_ 400
$n_(178) set Z_ 0.0
set n_(179) [$ns node]
$n_(179) set X_ 2268
$n_(179) set Y_ 3563
$n_(179) set Z_ 0.0

set n_(180) [$ns node]
$n_(180) set X_ 712
$n_(180) set Y_ 2860
$n_(180) set Z_ 0.0
set n_(181) [$ns node]
$n_(181) set X_ 1703
$n_(181) set Y_ 2450
$n_(181) set Z_ 0.0
set n_(182) [$ns node]
$n_(182) set X_ 849
$n_(182) set Y_ 339
$n_(182) set Z_ 0.0
set n_(183) [$ns node]
$n_(183) set X_ 1862
$n_(183) set Y_ 490
$n_(183) set Z_ 0.0
set n_(184) [$ns node]
$n_(184) set X_ 3420
$n_(184) set Y_ 35
$n_(184) set Z_ 0.0
set n_(185) [$ns node]
$n_(185) set X_ 2442
$n_(185) set Y_ 3056
$n_(185) set Z_ 0.0
set n_(186) [$ns node]
$n_(186) set X_ 3124
$n_(186) set Y_ 630
$n_(186) set Z_ 0.0
set n_(187) [$ns node]
$n_(187) set X_ 3589
$n_(187) set Y_ 3797
$n_(187) set Z_ 0.0
set n_(188) [$ns node]
$n_(188) set X_ 2634
$n_(188) set Y_ 3329
$n_(188) set Z_ 0.0
set n_(189) [$ns node]
$n_(189) set X_ 3655
$n_(189) set Y_ 724
$n_(189) set Z_ 0.0

set n_(190) [$ns node]
$n_(190) set X_ 136
$n_(190) set Y_ 2105
$n_(190) set Z_ 0.0
set n_(191) [$ns node]
$n_(191) set X_ 1912
$n_(191) set Y_ 667
$n_(191) set Z_ 0.0
set n_(192) [$ns node]
$n_(192) set X_ 293
$n_(192) set Y_ 2365
$n_(192) set Z_ 0.0
set n_(193) [$ns node]
$n_(193) set X_ 1065
$n_(193) set Y_ 338
$n_(193) set Z_ 0.0
set n_(194) [$ns node]
$n_(194) set X_ 703
$n_(194) set Y_ 2300
$n_(194) set Z_ 0.0
set n_(195) [$ns node]
$n_(195) set X_ 1600
$n_(195) set Y_ 1432
$n_(195) set Z_ 0.0
set n_(196) [$ns node]
$n_(196) set X_ 3530
$n_(196) set Y_ 3532
$n_(196) set Z_ 0.0
set n_(197) [$ns node]
$n_(197) set X_ 1015
$n_(197) set Y_ 2955
$n_(197) set Z_ 0.0
set n_(198) [$ns node]
$n_(198) set X_ 2959
$n_(198) set Y_ 641
$n_(198) set Z_ 0.0
set n_(199) [$ns node]
$n_(199) set X_ 395
$n_(199) set Y_ 1206
$n_(199) set Z_ 0.0

set n_(200) [$ns node]
$n_(200) set X_ 2504
$n_(200) set Y_ 3581
$n_(200) set Z_ 0.0
set n_(201) [$ns node]
$n_(201) set X_ 3206
$n_(201) set Y_ 853
$n_(201) set Z_ 0.0
set n_(202) [$ns node]
$n_(202) set X_ 2233
$n_(202) set Y_ 735
$n_(202) set Z_ 0.0
set n_(203) [$ns node]
$n_(203) set X_ 1375
$n_(203) set Y_ 3670
$n_(203) set Z_ 0.0
set n_(204) [$ns node]
$n_(204) set X_ 43
$n_(204) set Y_ 3457
$n_(204) set Z_ 0.0
set n_(205) [$ns node]
$n_(205) set X_ 1329
$n_(205) set Y_ 3590
$n_(205) set Z_ 0.0
set n_(206) [$ns node]
$n_(206) set X_ 1036
$n_(206) set Y_ 83
$n_(206) set Z_ 0.0
set n_(207) [$ns node]
$n_(207) set X_ 424
$n_(207) set Y_ 1785
$n_(207) set Z_ 0.0
set n_(208) [$ns node]
$n_(208) set X_ 1992
$n_(208) set Y_ 107
$n_(208) set Z_ 0.0
set n_(209) [$ns node]
$n_(209) set X_ 661
$n_(209) set Y_ 1050
$n_(209) set Z_ 0.0

set n_(210) [$ns node]
$n_(210) set X_ 1425
$n_(210) set Y_ 2522
$n_(210) set Z_ 0.0
set n_(211) [$ns node]
$n_(211) set X_ 3449
$n_(211) set Y_ 3139
$n_(211) set Z_ 0.0
set n_(212) [$ns node]
$n_(212) set X_ 2796
$n_(212) set Y_ 3173
$n_(212) set Z_ 0.0
set n_(213) [$ns node]
$n_(213) set X_ 386
$n_(213) set Y_ 1859
$n_(213) set Z_ 0.0
set n_(214) [$ns node]
$n_(214) set X_ 86
$n_(214) set Y_ 173
$n_(214) set Z_ 0.0
set n_(215) [$ns node]
$n_(215) set X_ 159
$n_(215) set Y_ 1704
$n_(215) set Z_ 0.0
set n_(216) [$ns node]
$n_(216) set X_ 34
$n_(216) set Y_ 2582
$n_(216) set Z_ 0.0
set n_(217) [$ns node]
$n_(217) set X_ 1567
$n_(217) set Y_ 200
$n_(217) set Z_ 0.0
set n_(218) [$ns node]
$n_(218) set X_ 2791
$n_(218) set Y_ 2537
$n_(218) set Z_ 0.0
set n_(219) [$ns node]
$n_(219) set X_ 2965
$n_(219) set Y_ 2702
$n_(219) set Z_ 0.0

set n_(220) [$ns node]
$n_(220) set X_ 3352
$n_(220) set Y_ 3428
$n_(220) set Z_ 0.0
set n_(221) [$ns node]
$n_(221) set X_ 850
$n_(221) set Y_ 1881
$n_(221) set Z_ 0.0
set n_(222) [$ns node]
$n_(222) set X_ 2498
$n_(222) set Y_ 493
$n_(222) set Z_ 0.0
set n_(223) [$ns node]
$n_(223) set X_ 1061
$n_(223) set Y_ 168
$n_(223) set Z_ 0.0
set n_(224) [$ns node]
$n_(224) set X_ 1879
$n_(224) set Y_ 698
$n_(224) set Z_ 0.0
set n_(225) [$ns node]
$n_(225) set X_ 3797
$n_(225) set Y_ 3267
$n_(225) set Z_ 0.0
set n_(226) [$ns node]
$n_(226) set X_ 2834
$n_(226) set Y_ 3148
$n_(226) set Z_ 0.0
set n_(227) [$ns node]
$n_(227) set X_ 1635
$n_(227) set Y_ 2806
$n_(227) set Z_ 0.0
set n_(228) [$ns node]
$n_(228) set X_ 1717
$n_(228) set Y_ 725
$n_(228) set Z_ 0.0
set n_(229) [$ns node]
$n_(229) set X_ 517
$n_(229) set Y_ 1439
$n_(229) set Z_ 0.0

set n_(230) [$ns node]
$n_(230) set X_ 2180
$n_(230) set Y_ 2844
$n_(230) set Z_ 0.0
set n_(231) [$ns node]
$n_(231) set X_ 2248
$n_(231) set Y_ 2108
$n_(231) set Z_ 0.0
set n_(232) [$ns node]
$n_(232) set X_ 2009
$n_(232) set Y_ 1425
$n_(232) set Z_ 0.0
set n_(233) [$ns node]
$n_(233) set X_ 363
$n_(233) set Y_ 3822
$n_(233) set Z_ 0.0
set n_(234) [$ns node]
$n_(234) set X_ 431
$n_(234) set Y_ 1092
$n_(234) set Z_ 0.0
set n_(235) [$ns node]
$n_(235) set X_ 872
$n_(235) set Y_ 398
$n_(235) set Z_ 0.0
set n_(236) [$ns node]
$n_(236) set X_ 3620
$n_(236) set Y_ 1158
$n_(236) set Z_ 0.0
set n_(237) [$ns node]
$n_(237) set X_ 1863
$n_(237) set Y_ 1810
$n_(237) set Z_ 0.0
set n_(238) [$ns node]
$n_(238) set X_ 2518
$n_(238) set Y_ 1140
$n_(238) set Z_ 0.0
set n_(239) [$ns node]
$n_(239) set X_ 829
$n_(239) set Y_ 3781
$n_(239) set Z_ 0.0

set n_(240) [$ns node]
$n_(240) set X_ 3069
$n_(240) set Y_ 3035
$n_(240) set Z_ 0.0
set n_(241) [$ns node]
$n_(241) set X_ 1227
$n_(241) set Y_ 3296
$n_(241) set Z_ 0.0
set n_(242) [$ns node]
$n_(242) set X_ 285
$n_(242) set Y_ 2312
$n_(242) set Z_ 0.0
set n_(243) [$ns node]
$n_(243) set X_ 3702
$n_(243) set Y_ 2832
$n_(243) set Z_ 0.0
set n_(244) [$ns node]
$n_(244) set X_ 2484
$n_(244) set Y_ 356
$n_(244) set Z_ 0.0
set n_(245) [$ns node]
$n_(245) set X_ 3172
$n_(245) set Y_ 182
$n_(245) set Z_ 0.0
set n_(246) [$ns node]
$n_(246) set X_ 2197
$n_(246) set Y_ 2466
$n_(246) set Z_ 0.0
set n_(247) [$ns node]
$n_(247) set X_ 110
$n_(247) set Y_ 2780
$n_(247) set Z_ 0.0
set n_(248) [$ns node]
$n_(248) set X_ 858
$n_(248) set Y_ 2976
$n_(248) set Z_ 0.0
set n_(249) [$ns node]
$n_(249) set X_ 2740
$n_(249) set Y_ 633
$n_(249) set Z_ 0.0

set n_(250) [$ns node]
$n_(250) set X_ 3172
$n_(250) set Y_ 750
$n_(250) set Z_ 0.0
set n_(251) [$ns node]
$n_(251) set X_ 2067
$n_(251) set Y_ 824
$n_(251) set Z_ 0.0
set n_(252) [$ns node]
$n_(252) set X_ 3625
$n_(252) set Y_ 1970
$n_(252) set Z_ 0.0
set n_(253) [$ns node]
$n_(253) set X_ 1918
$n_(253) set Y_ 3176
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
$n_(280) set X_ 330
$n_(280) set Y_ 806
$n_(280) set Z_ 0.0
set n_(281) [$ns node]
$n_(281) set X_ 1753
$n_(281) set Y_ 2689
$n_(281) set Z_ 0.0
set n_(282) [$ns node]
$n_(282) set X_ 3278
$n_(282) set Y_ 1609
$n_(282) set Z_ 0.0
set n_(283) [$ns node]
$n_(283) set X_ 2202
$n_(283) set Y_ 1844
$n_(283) set Z_ 0.0
set n_(284) [$ns node]
$n_(284) set X_ 1820
$n_(284) set Y_ 2496
$n_(284) set Z_ 0.0
set n_(285) [$ns node]
$n_(285) set X_ 2909
$n_(285) set Y_ 2480
$n_(285) set Z_ 0.0
set n_(286) [$ns node]
$n_(286) set X_ 1288
$n_(286) set Y_ 95
$n_(286) set Z_ 0.0
set n_(287) [$ns node]
$n_(287) set X_ 1562
$n_(287) set Y_ 534
$n_(287) set Z_ 0.0
set n_(288) [$ns node]
$n_(288) set X_ 1277
$n_(288) set Y_ 3719
$n_(288) set Z_ 0.0
set n_(289) [$ns node]
$n_(289) set X_ 208
$n_(289) set Y_ 3365
$n_(289) set Z_ 0.0

set n_(290) [$ns node]
$n_(290) set X_ 2925
$n_(290) set Y_ 1593
$n_(290) set Z_ 0.0
set n_(291) [$ns node]
$n_(291) set X_ 810
$n_(291) set Y_ 1444
$n_(291) set Z_ 0.0
set n_(292) [$ns node]
$n_(292) set X_ 2845
$n_(292) set Y_ 1855
$n_(292) set Z_ 0.0
set n_(293) [$ns node]
$n_(293) set X_ 2017
$n_(293) set Y_ 1144
$n_(293) set Z_ 0.0
set n_(294) [$ns node]
$n_(294) set X_ 1890
$n_(294) set Y_ 1509
$n_(294) set Z_ 0.0
set n_(295) [$ns node]
$n_(295) set X_ 3331
$n_(295) set Y_ 2976
$n_(295) set Z_ 0.0
set n_(296) [$ns node]
$n_(296) set X_ 2465
$n_(296) set Y_ 1217
$n_(296) set Z_ 0.0
set n_(297) [$ns node]
$n_(297) set X_ 3285
$n_(297) set Y_ 626
$n_(297) set Z_ 0.0
set n_(298) [$ns node]
$n_(298) set X_ 3994
$n_(298) set Y_ 2968
$n_(298) set Z_ 0.0
set n_(299) [$ns node]
$n_(299) set X_ 162
$n_(299) set Y_ 2140
$n_(299) set Z_ 0.0

set positions {
    {3932 248} {2435 3629} {311 3518} {1119 1236} {3384 385} {446 524} {1525 3084} {2609 373} {1070 3008} {1399 1740} {1302 3190} {3752 1913} {686 2633} {2411 381} {2623 2466} {2431 3236} {2552 2227} {1427 3065} {432 3501} {52 1029} {3108 3932} {980 2689} {262 1196} {90 163} {1151 2023} {1226 857} {3606 1467} {1252 3254} {1859 3679} {3809 3525} {2783 3174} {158 2203} {3847 3807} {1955 299} {165 677} {3609 2542} {2639 3938} {3849 1719} {2007 3797} {1366 2037} {1844 856} {3709 97} {1930 787} {529 243} {2643 3524} {1559 228} {255 1967} {3254 1023} {3429 75} {2545 594} {74 3772} {3050 2405} {1792 3433} {2131 3141} {1408 1829} {3231 2207} {3090 2218} {3398 1570} {2775 628} {2145 2560} {3116 3824} {1336 1806} {3851 1873} {1724 3042} {3966 2458} {1131 1813} {2827 3529} {1236 2683} {1090 1882} {1414 1494} {3211 2597} {3787 207} {1520 359} {1926 2272} {3431 79} {3443 2036} {1165 238} {896 3539} {3934 1172} {3955 2601} {407 604} {1735 737} {2156 1135} {3116 2659} {226 168} {364 2944} {1683 17} {1338 692} {1689 227} {2245 2767} {3439 2014} {3538 3371} {1789 1516} {3078 2220} {125 2417} {3748 1323} {1129 2346} {2160 554} {160 1795} {1514 906} {1522 3826} {1916 1529} {289 2681} {789 2141} {293 596} {274 3330} {3534 3446} {430 1606} {3918 188} {2785 1530} {749 508} {2331 1511} {1268 296} {2845 2160} {2349 3424} {3488 606} {2779 3795} {2978 205} {524 166} {2872 3276} {1373 1119} {993 2875} {313 1711} {638 1366} {3049 238} {3050 3529} {2133 1397} {851 3267} {1958 848} {775 413} {1969 1045} {2084 351} {1816 3714} {3926 3741} {2682 3057} {3210 3917} {1930 1125} {3172 3146} {1453 2201} {511 1838} {958 1786} {684 3457} {1650 1980} {920 2555} {1056 920} {2365 421} {1238 3227} {1788 3487} {1568 1771} {2350 1758} {2982 830} {3999 3058} {636 566} {1954 3362} {2154 3748} {1606 3029} {904 3864} {621 3924} {509 413} {20 3756} {3933 53} {379 2832} {1087 1896} {3286 1644} {1469 3899} {2787 2714} {3829 107} {2053 450} {684 44} {947 1761} {200 2428} {3718 3681} {338 1782} {914 3038} {1980 1871} {3452 2299} {2829 1101} {443 2968} {352 837} {1860 226} {2274 3776} {3802 3175} {3986 171} {233 2757} {2236 2082} {1240 1608} {789 1370} {3476 439} {3879 803} {3165 1840} {1545 551} {1428 468} {2761 1635} {1057 3352} {3083 2846} {38 507} {3689 768} {3243 3927} {778 1253} {1899 686} {1166 1205} {2134 2141} {2243 1971} {1398 2023} {2288 2158} {3021 3124} {2816 2682} {2398 1826} {106 969} {3346 2640} {1265 358} {2308 2518} {3508 1993} {3982 2178} {1344 2448} {2210 3092} {2462 527} {798 2079} {2681 2637} {3765 2692} {2357 2950} {99 1429} {2487 519} {2361 2654} {2057 1358} {2062 1421} {1580 2499} {174 2326} {2967 2548} {1273 619} {2365 3717} {1715 591} {876 706} {1622 1195} {1605 866} {1836 654} {1755 1824} {3105 3848} {3898 1983} {2304 1692} {1004 2953} {3649 3835} {455 2522} {3757 1726} {903 1876} {3935 1447} {855 2436} {1568 2364} {2751 2247} {2864 1422} {1713 581} {1582 423} {188 184} {3133 3990} {383 921} {2996 3860} {2619 71} {1018 293} {833 2206} {3587 701} {3514 1623} {2686 3118} {1625 2566} {3682 3714} {1530 987} {2327 531} {2175 3946} {3636 172} {1713 695} {3927 202} {1562 3560} {1446 776} {2708 2599} {705 1213} {2396 689} {210 2409} {47 3309} {2484 323} {2653 2967} {2162 1870} {491 1914} {2855 1378} {1731 3154} {2684 210} {3037 3510} {1646 331} {3178 571} {1397 3472} {3284 1497} {3638 3537} {436 608} {735 3153} {272 1234} {3417 2210} {669 1786} {567 3358} {1036 2819} {3499 3483} {3424 2660} {1215 307}	
	}


for {set i 0} {$i < $val(nn)} {incr i} {
    set node_pos [lindex $positions $i]
    set n_x [expr [lindex $node_pos 0]]
    set n_y [expr [lindex $node_pos 1]]
	 $ns at 0.01 "$n_($i) setdest $n_x $n_y 400"
}


$ns color 0 Red

set udp [new Agent/UDP]
$ns attach-agent $n_(299) $udp
set null [new Agent/Null]
$ns attach-agent $n_(190) $null
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