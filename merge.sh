#!/usr/bin/env sh
cd tracks

mapshaper -i ./tracks.json ./tracks1.json ./tracks2.json ./tracks3.json ./tracks4.json snap combine-files -rename-layers topo1,topo2,geo,shape -merge-layers target=topo,topo1,topo2,topo3,topo4,geo name=merged-layers -simplify weighted 3% -o ../output-topo.json format=topojson target=merged-layers bbox prettify force