#!/usr/bin/env gnuplot

######################################################################
# http://youinfinitesnake.blogspot.com/2011/02/attractive-scientific-plots-with.html
set terminal pdfcairo size 7in,4.2in font "Gill Sans,9" linewidth 4 rounded fontscale 1.0

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

set grid back linestyle 81
set border 3 back linestyle 80 # Remove border on top and right.  These
             # borders are useless and make it harder
             # to see plotted lines near the border.
    # Also, put it in grey; no need for so much emphasis on a border.
set xtics nomirror
set ytics nomirror

#set log x
#set mxtics 10    # Makes logscale look good.

# Line styles: try to pick pleasing colors, rather
# than strictly primary colors or hard-to-see colors
# like gnuplot's default yellow.  Make the lines thick
# so they're easy to see in small plots in papers.
set style line 1 lt rgb "#A00000" lw 2 pt 1
set style line 2 lt rgb "#00A000" lw 2 pt 6
set style line 3 lt rgb "#5060D0" lw 2 pt 2
set style line 4 lt rgb "#F25900" lw 2 pt 9
######################################################################

# set terminal pdf
set output 'plot.pdf'

set title 'Apache'
set xtics 24
set xlabel 'cores'
set ylabel 'requests/sec'
set yrange [0:*]
set ytics nomirror
plot \
        'nested/apache/ApacheMon.dat' index 0 title 'nVM' with lp linecolor 1, \
        'vm/apache/ApacheMon.dat' index 0 title 'VM' with lp linecolor 2


set title 'Exim'
set xlabel 'cores'
set ylabel 'messages/sec'
set yrange [0:*]
set ytics nomirror
plot \
        'nested/exim/EximLoad.dat' index 0 title 'nVM' with lp linecolor 1, \
        'vm/exim/EximLoad.dat' index 0 title 'VM' with lp linecolor 2


set title 'Gmake'
set xlabel 'cores'
set ylabel 'builds/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'nested/gmake/GmakeLoad.dat' index 0 title 'nVM' with lp linecolor 1,\
        'vm/gmake/GmakeLoad.dat' index 0 title 'VM' with lp linecolor 2


set title 'Metis'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'nested/metis/MetisLoad.dat' index 0 title 'nVM' with lp linecolor 1, \
        'vm/metis/MetisLoad.dat' index 0 title 'VM' with lp linecolor 2


set title 'Psearchy'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'nested/psearchy/PsearchyLoad.dat' index 0 title 'nVM' with lp linecolor 1,\
        'vm/psearchy/PsearchyLoad.dat' index 0 title 'VM' with lp linecolor 2


set title 'Pbzip'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'nested/pbzip.dat' index 0 title 'nVM' with lp linecolor 1, \
        'vm/pbzip.dat' index 0 title 'VM' with lp linecolor 2
