/part 1

input:347991
input:15

b:1+til input
c:b where b mod 2
corner:max sums c*input > sums c
next_corner:1+sqrt corner
dx:floor div[-1+sqrt corner;2]
dy:floor div[sqrt corner;2]
0N!dx_c:abs dx+1-0|input-corner+next_corner
0N!dy_c:abs dy-(next_corner-1)&input-corner+1
dx_c+dy_c

/part 2


