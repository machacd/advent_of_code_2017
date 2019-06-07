inp: " " vs/: read0 `:/home/david/aoc/ex7_input.txt

re_com:{x where first flip ","<>flip enlist x}

/part 1 trivial
l1:1#/: inp
l2:{re_com each x} each  3_/:inp

l1 where 0b=raze l1 in\: raze l2
