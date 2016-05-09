# I/O List

- koshu [cut-detail-order.k](#cut-detail-orderk)



## [cut-detail-order.k](cut-detail-order.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

p : source P /x /y /z

|== Q : p | cut /x /y
|== R : p | cut /y /x
```

Command `koshu cut-detail-order.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-detail-order.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /z 50
|-- Q  /z 60

*** 2 judges

|-- R  /z 50
|-- R  /z 60

*** 2 judges

**
**  SUMMARY
**       2 judges on Q
**       2 judges on R
**       4 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
