inp: " " vs/: read0 `:/Users/david/advent_of_code_2017/ex7_input.txt

re_com:{x where first flip ","<>flip enlist x}

/part 1 trivial
l1:1#/: inp
l2:{re_com each x} each  3_/:inp

l1 where 0b=raze l1 in\: raze l2


/part 2

w:"J"$reverse each 1_/:reverse each 1_/: first each 1_/:inp /pokusit se bez tech reverse
cons:
data:flip (`in`w)!(l1;w) /zjistit, jak zapsat elegantneji


