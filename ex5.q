inp:"I"$read0 `:ex5_input.txt

/part 1, brute loop solution
add:1,(-1+count inp)#0

ctr:first inp
i:1 /start at 1 bc looking on step ahead
while[(ctr<count inp)&ctr>0;ctr+:first inp:(first inp) rotate inp+add;i+:1]

/part 2, loop again
while[(ctr<count inp)&ctr>0;ctr+:first inp:(first inp) rotate $[2<first inp;inp-add;inp+add];i+:1]

