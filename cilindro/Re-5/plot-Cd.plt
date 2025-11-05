reset

#set terminal postscript eps enhanced color"Times-Roman" 18
set term png

set autoscale
set lmargin 13
set bmargin 4

#set output "Cd.eps"
set output "Cd.png"

set xlabel"{/*1.5{/Italic t(s)}" offset 1,0
set ylabel"{/*1.5{/Italic C_d} }" offset 0,0

set xrange [10:200]
set key left

plot "postProcessing/forceCoef/0/coefficient.dat"  using ($1):($2) title"{C_d}" with lines lt 3 lw 2.5

