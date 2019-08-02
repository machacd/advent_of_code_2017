t:flip (`res`act`c`d`oprnd`comp`g)!( flip " " vs/: read0 `:/Users/david/advent_of_code_2017/ex8_input.q)
delete d from `t
update act:"+" from `t where act~\:"inc"
update act:"-" from `t where act~\:"dec"
update comp:(count exec comp from t where comp~\:"!=")#enlist "<>" from `t where comp~\:"!=" /ugly but what is the other option? nested list is not automatically expanded into the parent list
update comp:(count exec comp from t where comp~\:"==")#enlist "=" from `t where comp~\:"=="

res:select n:(distinct res) from t /list of all registers
eval each parse each (exec res from t),\:":0" /inivals (newly created vars)
maxObserve:0
eval each parse each "if[",/:(exec oprnd from t),'(exec comp from t),'(exec g from t),'";",'(exec res from t),'":",'(exec res from t),'(exec act from t),'(exec c from t),'";maxObserve:maxObserve|",/:(exec res from t),\:"]" /eval conditions and then eventually the expressions
0N!max eval each parse each exec n from res /result part 1







