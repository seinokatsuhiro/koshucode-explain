# I/O List

- koshu [rename-equiv-move.k](#rename-equiv-movek)
- koshu [rename-equiv-swap.k](#rename-equiv-swapk)



## [rename-equiv-move.k](rename-equiv-move.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

xyz : source P /x /y /z

|== Q : xyz | rename /a /x /b /y
|== R : xyz | move /x /y -to /a /b
```

Command `koshu rename-equiv-move.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    rename-equiv-move.k
**

|-- Q  /a 1  /b 10  /z 50
|-- Q  /a 1  /b 20  /z 60
|-- Q  /a 2  /b 30  /z 60

*** 3 judges

|-- R  /a 1  /b 10  /z 50
|-- R  /a 1  /b 20  /z 60
|-- R  /a 2  /b 30  /z 60

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges on R
**       6 judges in total
**
```



## [rename-equiv-swap.k](rename-equiv-swap.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

xyz : source P /x /y /z

|== Q : xyz | rename /x /y /y /x
|== R : xyz | move /x /y -to /y /x
```

Command `koshu rename-equiv-swap.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    rename-equiv-swap.k
**

|-- Q  /y 1  /x 10  /z 50
|-- Q  /y 1  /x 20  /z 60
|-- Q  /y 2  /x 30  /z 60

*** 3 judges

|-- R  /y 1  /x 10  /z 50
|-- R  /y 1  /x 20  /z 60
|-- R  /y 2  /x 30  /z 60

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges on R
**       6 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
