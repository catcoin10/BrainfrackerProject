echo "obase=8;$1"|bc|tr 0 \>|tr 1 \<|tr 2 +|tr 3 -|tr 4 .|tr 5 ,|tr 6 [|tr 7 ]
