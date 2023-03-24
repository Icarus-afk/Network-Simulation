set val(chan) Channel/WirelessChannel;
set val(prop) Propagation/TwoRayGround;
set val(netif) Phy/WirelessPhy;
set val(mac) Mac/802_11;
set val(ifq) Queue/DropTail/PriQueue;
set val(ll) LL;
set val(ant) Antenna/OmniAntenna;
set val(ifqlen) 50;
set val(rp) AODV;
set val(nn) 100;
set val(x) 4000;
set val(y) 4000;
set val(stop) 150;

set val(energymodel) EnergyModel;
set val(initialenergy) 500;

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
	-energyModel $val(energymodel) \
	-initialEnergy $val(initialenergy) \
	-rxPower 0.4 \
	-txPower 1.0 \
	-idlePower 0.6 \
	-sleepPower 0.1 \
	-transitionPower 0.4 \
	-transitionTime 0.1


# Create a list of 100 X and Y positions
set positions {
	{2233  2791}  {933  1067}  {3070  1057}  {2144  2324}  {2044  2008}  {1659  2321}  {3342  3508}  {1472  1432}  {3850  2048}  {3433  2403} 
	{1354  2597}  {2523  275}  {2972  1269}  {2991  3059}  {2130  1193}  {3933  3123}  {3742  2729}  {2521  1349}  {711  2164}  {901  3828} 
	{1346  788}  {1230  2275}  {2262  1685}  {3095  3725}  {1465  1735}  {3085  2005}  {2995  3505}  {1853  2044}  {3274  2984}  {1142  2501} 
	{2547  3394}  {1342  1565}  {3225  3985}  {3475  1945}  {3775  2905}  {1097  841}  {1828  360}  {1886  1059}  {2396  372}  {2783  3057} 
	{3936  999}  {2560  1121}  {1022  3299}  {2864  726}  {2224  1004}  {1808  2454}  {3843  1953}  {3271  1963}  {1760  1761}  {2522  3122} 
	{1128  2932}  {2210  3523}  {2693  2662}  {1640  2033}  {957  908}  {3034  3994}  {1779  2968}  {1864  1797}  {1591  3528}  {3710  1227} 
	{2788  211}  {3124  3383}  {3150  310}  {3185  2735}  {1923  1965}  {339  2319}  {3702  2158}  {2652  3627}  {1302  557}  {2471  2959} 
	{3789  1365}  {3645  1065}  {1645  3435}  {1978  3625}  {2669  2113}  {3208  366}  {694  1463}  {2842  1070}  {2695  3299}  {3742  1710} 
	{1668  1019}  {3652  190}  {1138  2440}  {237  2296}  {3356  1676}  {1366  3686}  {3376  2393}  {2092  2656}  {1196  2433}  {2302  1125} 
	{2942  3058}  {3793  2153}  {977  1418}  {1231  2453}  {1880  1048}  {1959  2729}  {1892  3591}  {3572  1171}  {1834  1834}  {3870  2329}
	}

# Create 100 nodes with the X and Y positions
for {set i 0} {$i < 100} {incr i} {
    set node_name "node_($i)"
    set node_pos [lindex $positions $i]
    set n_x [expr [lindex $node_pos 0]]
    set n_y [expr [lindex $node_pos 1]]
	puts $n_x
	puts $n_y
	puts $node_pos
    set $node_name [$ns node]
	puts $node_name
    set ${node_name}_X_ $n_x
    set ${node_name}_Y_ $n_y
    set ${node_name}_Z_ 0.0

	 lappend xListHead $node_name
}



for {set i 0} {$i < $val(nn)} {incr i} {
	$ns at [ expr 0.01+round(rand()) ] "$node_($i) setdest [ expr 10+round(rand()*2000) ] [expr 10+round(rand()*2000) ] [expr 60+round(rand()*30) ]"
}

set udp [new Agent/UDP]
$ns attach-agent $node_(11) $udp
set null [new Agent/Null]
$ns attach-agent $node_(73) $null
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 512
$cbr set interval_ 0.2
$cbr set rate_ 1mb
$cbr set maxpkts_ 10000
$ns connect $udp $null
$ns at 0.4 "$cbr start"

for {set i 0} {$i < $val(nn)} {incr i} {
        $ns initial_node_pos $node_($i) 30
}

for {set i 0} {$i < $val(nn)} {incr i} {
	$ns at $val(stop) "$node_($i) reset";
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