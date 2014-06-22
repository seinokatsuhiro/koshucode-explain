# I/O List

- koshu [source-equiv-relmap.k](#source-equiv-relmapk)



## [source-equiv-relmap.k](source-equiv-relmap.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

xy : empty /x /y

|== Q : source P /x /y
|== R : source-term P xy
```

Command `koshu source-equiv-relmap.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-equiv-relmap.k
**

|-- Q  /x 1  /y 40
|-- Q  /x 1  /y 50
|-- Q  /x 2  /y 60

*** 3 judges

|-- R  /x 1  /y 40
|-- R  /x 1  /y 50
|-- R  /x 2  /y 60

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
