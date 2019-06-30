t:flip (`res`act`c`d`oprnd`comp`g)!( flip " " vs/: read0 `:/home/david/aoc/ex8_input.q)
delete d from `t
update act:"+" from `t where act~\:"inc"
update act:"-" from `t where act~\:"dec"
update comp:(count exec comp from t where comp~\:"!=")#enlist "<>" from `t where comp~\:"!=" /ugly but what is the other option? nested list is not automatically expanded into the parent list


select c,':g from t

eval each parse each (exec c from t),'exec g from t

res:select val:0,n:(distinct res) from t