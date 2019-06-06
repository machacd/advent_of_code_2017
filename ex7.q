inp: " " vs/: read0 `:/home/david/aoc/ex7_input.txt

re_com:{x where first flip ","<>flip enlist x}
re_com_l:{re_com each x}

1#/: inp

{re_com each x} each  3_/:inp

