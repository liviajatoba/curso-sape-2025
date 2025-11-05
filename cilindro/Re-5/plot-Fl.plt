reset

#set terminal postscript eps enhanced color"Times-Roman" 18
set term png

set autoscale
set lmargin 13
set bmargin 4

#set output "Fl.eps"
set output "Fl.png"

set xlabel"{/*1.5{/Italic t(s)}" offset 1,0
set ylabel"{/*1.5{/Italic F_l (N)} }" offset 0,0

set xrange [10:200]
set key right


plot "postProcessing/force/0/force.dat"  using ($1):($3) title"{Fy}" with lines lt 2 lw 2.5


