set terminal pdfcairo
set output "PsearchyLoad.pdf"
set title 'PsearchyLoad'
set xlabel 'cores'
set ylabel 'jobs/hour'
set yrange [0:*]
set y2label 'CPU time (secs/job)'
set y2tics 
set ytics nomirror
plot 'PsearchyLoad.dat' index 0 title '' with lines linecolor 1,\
  'PsearchyLoad.dat' index 1 axis x1y2 title ' user' with linespoints linecolor 2 pointtype 6,\
  'PsearchyLoad.dat' index 2 axis x1y2 title ' sys' with linespoints linecolor 3 pointtype 8,\
  'PsearchyLoad.dat' index 3 axis x1y2 title ' idle' with linespoints linecolor 4 pointtype 2
