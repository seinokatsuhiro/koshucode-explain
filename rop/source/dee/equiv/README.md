# I/O List

- koshu [dee-equiv-const.k](#dee-equiv-constk)
- koshu [dee-equiv-join.k](#dee-equiv-joink)
- koshu [dee-equiv-noop.k](#dee-equiv-noopk)



## [dee-equiv-const.k](dee-equiv-const.k)

```
** -*- koshu -*-

my-dee : const {= [] =}

|== P : dee
|== Q : my-dee
```

Command `koshu dee-equiv-const.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-equiv-const.k
**
**  OUTPUT
**    <stdout>
**

|-- P

*** 1 judge 

|-- Q

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  on Q
**       2 judges in total
**
```



## [dee-equiv-join.k](dee-equiv-join.k)

```
** -*- koshu -*-

|-- P  /x 1
|-- P  /x 2

|-- Q  /y 40
|-- Q  /y 50
|-- Q  /y 60

p : source P /x
q : source Q /y

|== P : p | join q
```

Command `koshu dee-equiv-join.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-equiv-join.k
**
**  OUTPUT
**    <stdout>
**

|-- P

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  in total
**
```



## [dee-equiv-noop.k](dee-equiv-noop.k)

```
** -*- koshu -*-

|== P : 
```

Command `koshu dee-equiv-noop.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-equiv-noop.k
**
**  OUTPUT
**    <stdout>
**

|-- P

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
