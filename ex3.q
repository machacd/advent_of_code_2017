/part 1

input:347991

b:1+til input
c:b where b mod 2
corner:max sums c*input > sums c
next_corner:1+sqrt corner /it's sqrt actually
dx:floor div[-1+sqrt corner;2]
dy:floor div[sqrt corner;2]
0N!dx_c:abs dx+1-0|input-corner+next_corner
0N!dy_c:abs dy-(next_corner-1)&input-corner+1
dx_c+dy_c

/part 2

/ from streetster.github.io
l:0 0
g:(enlist l)!enlist 1
l+: 1 0


while[input>g[l]:sum (n:g l +/:(0 1; 1 0; 0 -1; -1 0)), g l +/:(1 1; 1 -1; -1 -1; -1 1); 
 $[(d:"b"$0^n) in (0001b; 0011b);
  l+:0 1; /move north
  d in (0010b; 0110b);
  l+:-1 0; /move west
  d in (1100b; 0100b);
  l+:0 -1; /move south
  l+:1 0 /move east
  ]
 ]

/ functional select for later
c:(),`h`n
sc:{c:(), x; ?[`q;();0b;c!c]}
sc reverse cols q

