#!/bin/sh

for f in *.geo
do
	[ -e "$f" ] || continue
	echo "Processing " $f

	gmsh $f -save
done

for f in *.msh
do
	[ -e "$f" ] || continue
	echo "Processing " $f

	ElmerGrid 14 2 $f
done


