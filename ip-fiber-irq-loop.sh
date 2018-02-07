#!/bin/bash
echo "send raport"
while true ; do 
 for IRQ in 82 83 84 85 ;
 do echo 01 > /proc/irq/$IRQ/smp_affinity;
 done  ;  
 for IRQ in 86 87 88 89 ;
 do echo 04 > /proc/irq/$IRQ/smp_affinity;
 done  ;
 sleep 0.2 ;
 done

# send raport - used e.g. in: https://github.com/yedinocommunity/galaxy42/wiki/Bench
