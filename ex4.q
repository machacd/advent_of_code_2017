inp:read0 `:ex4_input.txt

/part 1
sum 1>(" " {count x vs y}/:inp) - (" " {count distinct x vs y}/:inp)

/part 2

sum 1>(" " {count x vs y}/:inp) - (" " {count distinct asc each x vs y}/:inp)
