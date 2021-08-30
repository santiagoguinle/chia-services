#!/bin/bash

cd /home/usuario/services/madmax

. ./plotter.config

rm $temp1*.tmp
rm $temp2*.tmp

cd /home/usuario/chia-plotter

#	./build/chia_plot -r 6 -t /media/usuario/plotter_01/ -2 /media/usuario/plotter_02/ -d /media/usuario/plots_int_01/ -n 1 -f a10177dcee81707ea2184c2a6d1153edccfc1b078460969c0564c94dd07949aab506e88ae5069a16847d7490049edfe8 -c xch1wnt4n5lc7vyp0z3r6m6nnc47armhy0dwzs0yh006uz4gvt8ye64qxhuezy


for dest in ${dests[@]}; do

  size=$(($(df -m $dest |awk '{print $4}' | tail $1 -n 1) + 0))

  if [ $size -gt $minsize ]; then
	./build/chia_plot -r $rvar -t $temp1 -2 $temp2 -d $dest -n 1 -f $fvar -c $cvar
  fi

done
