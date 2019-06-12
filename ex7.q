inp: " " vs/: read0 `:/home/david/aoc/ex7_input.txt

re_com:{x where first flip ","<>flip enlist x}

/part 1 trivial
l1:raze each 1#/: inp
l2:{re_com each x} each  3_/:inp
start:`$l1 where 0b= l1 in\: raze l2


/part 2

w:"J"$-1_/: 1_/: first each 1_/:inp 
data:flip (`node`w`cons`nocons)!(`$l1;w;`$l2;count each l2) /zjistit, jak zapsat elegantneji

gwa:{sum exec w from data where node in x} /get weights above
gna:{raze exec cons from data where node in x} /get node above
weigh:{n:x; /get weight of the tree above
 wei:0;
 while[0<count n;wei+:sum gwa n; n:gna n];
 wei}
idf:{(x) where 0b=(weigh each x) = "j"$med weigh each x}
/identify the unbalanced node, might not work with a one node only

inidif:first m-a where 0b=a=m:"i"$med a:weigh each gna start
wnodes:start /wrong nodes
while[0<count wnodes;
 0N!exec w+inidif from data where node=first wnodes;
 wnodes:idf gna wnodes]
