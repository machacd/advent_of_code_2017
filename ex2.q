/part 1

inp:read0 `:ex2_input.txt

l:flip "J"$"\t" vs/: inp
sum (max l) - min l

/part 2

fl: flip l
sum {-1+max sum d*d=floor d:x%\:x} each fl

