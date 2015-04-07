# I/O List

- koshu [dum-equiv-const.k](#dum-equiv-constk)



## [dum-equiv-const.k](dum-equiv-const.k)

```
** -*- koshu -*-

my-dum : const {| |}

|== P : dum    | down /r
|== Q : my-dum | down /r
```

Command `koshu dum-equiv-const.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dum-equiv-const.k
**
**  OUTPUT
**    <stdout>
**

|-- P  /r {| |}

*** 1 judge 

|-- Q  /r {| |}

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  on Q
**       2 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
