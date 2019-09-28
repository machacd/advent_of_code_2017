inp:"J"$"," vs raze read0 `:/Users/david/advent_of_code_2017/ex10_input.txt

list:til 256

/part 1
twist:{[x;y;z] /twist and shift to start with the right element
 (y+z) rotate (reverse (y)#x), (y)_x
 }

r:twist/[list;inp;til count inp]
r:(neg sum inp + til count inp) rotate r / reverse all rotations
prd 2#r


