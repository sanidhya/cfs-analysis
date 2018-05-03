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
set output 'plot-host.pdf'

set title 'Apache'
set xlabel 'cores'
set ylabel 'requests/sec'
set yrange [0:*]
set ytics nomirror
plot \
        'apache-pinned/ApacheMon.dat' index 0 title 'Host' with lp linecolor 1, \
        '../vm/no-mem-bind/no-cpu-bind/apache/ApacheMon.dat' index 0 title 'VM-NM-NC' with lp linecolor 2, \
        '../vm/no-mem-bind/cpu-bind/apache/ApacheMon.dat' index 0 title 'VM-NM-C' with lp linecolor 3, \
        '../vm/mem-bind/no-cpu-bind/apache/ApacheMon.dat' index 0 title 'VM-M-NC' with lp linecolor 4, \
        '../vm/mem-bind/cpu-bind/apache/ApacheMon.dat' index 0 title 'VM-M-C' with lp linecolor 5, \


set title 'Exim'
set xlabel 'cores'
set ylabel 'messages/sec'
set yrange [0:*]
set ytics nomirror
plot \
        'exim-pinned/EximLoad.dat' index 0 title 'Host-P' with lp linecolor 1, \
        'exim-unpinned/EximLoad.dat' index 0 title 'Host-NP' with lp linecolor 2,\
        '../vm/no-mem-bind/no-cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-P-NM-NC' with lp linecolor 3, \
        '../vm/no-mem-bind/no-cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-NP-NM-NC' with lp linecolor 4,\
        '../vm/no-mem-bind/cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-P-NM-C' with lp linecolor 5, \
        '../vm/no-mem-bind/cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-NP-NM-C' with lp linecolor 6,\
        '../vm/mem-bind/no-cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-P-M-NC' with lp linecolor 7, \
        '../vm/mem-bind/no-cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-NP-M-NC' with lp linecolor 8,\
        '../vm/mem-bind/cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-P-M-C' with lp linecolor 9, \
        '../vm/mem-bind/cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-NP-M-C' with lp linecolor 10,\


set title 'Pinned Exim'
set xlabel 'cores'
set ylabel 'messages/sec'
set yrange [0:*]
set ytics nomirror
plot \
        'exim-pinned/EximLoad.dat' index 0 title 'Host-P' with lp linecolor 1, \
        '../vm/no-mem-bind/no-cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-NM-NC' with lp linecolor 2, \
        '../vm/no-mem-bind/cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-NM-C' with lp linecolor 3, \
        '../vm/mem-bind/no-cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-M-NC' with lp linecolor 4, \
        '../vm/mem-bind/cpu-bind/exim-pinned/EximLoad.dat' index 0 title 'VM-M-C' with lp linecolor 5, \


set title 'Unpinned Exim'
set xlabel 'cores'
set ylabel 'messages/sec'
set yrange [0:*]
set ytics nomirror
plot \
        'exim-unpinned/EximLoad.dat' index 0 title 'Host-NP' with lp linecolor 1,\
        '../vm/no-mem-bind/no-cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-NM-NC' with lp linecolor 2,\
        '../vm/no-mem-bind/cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-NM-C' with lp linecolor 3,\
        '../vm/mem-bind/no-cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-M-NC' with lp linecolor 4,\
        '../vm/mem-bind/cpu-bind/exim-unpinned/EximLoad.dat' index 0 title 'VM-M-C' with lp linecolor 5,\


set title 'Gmake'
set xlabel 'cores'
set ylabel 'builds/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'gmake/GmakeLoad.dat' index 0 title 'Host' with lp linecolor 1,\
        '../vm/no-mem-bind/no-cpu-bind/gmake/GmakeLoad.dat' index 0 title 'VM-NM-NC' with lp linecolor 2,\
        '../vm/no-mem-bind/cpu-bind/gmake/GmakeLoad.dat' index 0 title 'VM-NM-C' with lp linecolor 3,\
        '../vm/mem-bind/no-cpu-bind/gmake/GmakeLoad.dat' index 0 title 'VM-M-NC' with lp linecolor 4,\
        '../vm/mem-bind/cpu-bind/gmake/GmakeLoad.dat' index 0 title 'VM-M-C' with lp linecolor 5,\


set title 'Psearchy'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'psearchy-pinned/PsearchyLoad.dat' index 0 title 'Pinned' with lp linecolor 1,\
        'psearchy-unpinned/PsearchyLoad.dat' index 0 title 'Unpinned' with lp linecolor 2, \
        '../vm/no-mem-bind/no-cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-NM-NC' with lp linecolor 3, \
        '../vm/no-mem-bind/no-cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-NM-NC' with lp linecolor 4,\
        '../vm/no-mem-bind/cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-NM-C' with lp linecolor 5, \
        '../vm/no-mem-bind/cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-NM-C' with lp linecolor 6,\
        '../vm/mem-bind/no-cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-M-NC' with lp linecolor 7, \
        '../vm/mem-bind/no-cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-M-NC' with lp linecolor 8,\
        '../vm/mem-bind/cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-M-C' with lp linecolor 9, \
        '../vm/mem-bind/cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-M-C' with lp linecolor 10,\


set title 'Unpinned Psearchy'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'psearchy-unpinned/PsearchyLoad.dat' index 0 title 'Unpinned' with lp linecolor 1, \
        '../vm/no-mem-bind/no-cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-NM-NC' with lp linecolor 2,\
        '../vm/no-mem-bind/cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-NM-C' with lp linecolor 3,\
        '../vm/mem-bind/no-cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-M-NC' with lp linecolor 4,\
        '../vm/mem-bind/cpu-bind/psearchy-unpinned/PsearchyLoad.dat' index 0 title 'VM-NP-M-C' with lp linecolor 5,\


set title 'Pinned Psearchy'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set ytics nomirror
plot \
        'psearchy-pinned/PsearchyLoad.dat' index 0 title 'Pinned' with lp linecolor 1,\
        '../vm/no-mem-bind/no-cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-NM-NC' with lp linecolor 3, \
        '../vm/no-mem-bind/cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-NM-C' with lp linecolor 5, \
        '../vm/mem-bind/no-cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-M-NC' with lp linecolor 7, \
        '../vm/mem-bind/cpu-bind/psearchy-pinned/PsearchyLoad.dat' index 0 title 'VM-P-M-C' with lp linecolor 9, \


# set title 'Pbzip'
# set xlabel 'cores'
# set ylabel 'jobs/hour'
# set yrange [0:*]
# set ytics nomirror
# plot \
#         'nested/pbzip/pbzip.dat' index 0 title 'nVM' with lp linecolor 1, \
#         'vm/pbzip/pbzip.dat' index 0 title 'VM' with lp linecolor 2

# set title 'Metis'
# set xlabel 'cores'
# set ylabel 'jobs/hour'
# set yrange [0:*]
# set ytics nomirror
# plot \
#         'nested/metis/MetisLoad.dat' index 0 title 'nVM' with lp linecolor 1, \
#         'vm/metis/MetisLoad.dat' index 0 title 'VM' with lp linecolor 2


