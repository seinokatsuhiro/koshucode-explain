# I/O List

- koshu [rename-detail-no-terms.k](#rename-detail-no-termsk)



## [rename-detail-no-terms.k](rename-detail-no-terms.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

|== Q : source P /x /y
      | rename
```

Command `koshu rename-detail-no-terms.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    rename-detail-no-terms.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1  /y 10
|-- Q  /x 1  /y 20
|-- Q  /x 2  /y 30

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
