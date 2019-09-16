inp:raze read0 `:/Users/david/advent_of_code_2017/ex9_input

/part 1

run:1b
/removes cancels 
while[run;
 excs:"!" = inp;
 rm:(b+1),b:a where 1=(til count a:where differ excs) mod 2;
 inp:inp where 0=(til 0N!count  inp) in rm;
 $[0=0N!count rm;run:0b;run:1b];
 ]

/removes garbage
gar:(inp="<")+neg inp=">"
limitSum:{[x;y]
 1&x+y}
inp:inp[where 0=(0 | neg gar) + 0 limitSum\ gar]

/find self contained groups, note their positions, sum their scores
positions:flip(`pos`opens`closes)!(til count inp;"{"=inp;neg "}"=inp)
/ } lowers the score by one, these positions only are used for the final score sum
/ with an added 1 to account for the clasing bracket
a:0+\exec opens+closes from positions where (opens=1) | closes=-1
sum (a+1) where a<0,-1_a

/part 2
allg:sum 0 limitSum\ gar / still need to remove the garbage initializer
stag:(neg 1-count where differ 0 limitSum\ gar)%2
allg-stag










