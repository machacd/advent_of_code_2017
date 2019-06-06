inp:"J"$"\t" vs first read0 `:/home/david/aoc/ex6_input.txt
l:count inp

/part 1
shiftinp:{
 val:first x where x = max x;
 pos:first where x = max x;
 x[pos]:0;
 base:(val div l) * l#1;
 modulo:((val mod l)#1), (l-val mod l)#0;
 x + (-1 - pos) rotate base + modulo
 }

ctr:0
res:()
/store 'hashes' of each vector
/insert 'a' to avoid 22 1=2 21
while[ctr=count distinct res; res:res, enlist raze "a",/: string inp; inp:shiftinp inp; ctr+:1]
0N! ctr-1

/part 2
last deltas where res~\:last res
