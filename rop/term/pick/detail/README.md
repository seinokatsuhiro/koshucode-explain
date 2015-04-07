# I/O List

- koshu [pick-detail-named-attr.k](#pick-detail-named-attrk)



## [pick-detail-named-attr.k](pick-detail-named-attr.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p | pick -term /x /y
|== R : p | pick -term /x
|== S : p | pick -term
```

Command `koshu pick-detail-named-attr.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-detail-named-attr.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1  /y 10
|-- Q  /x 1  /y 12
|-- Q  /x 2  /y 14

*** 3 judges

|-- R  /x 1
|-- R  /x 2

*** 2 judges

|-- S

*** 1 judge 

**
**  SUMMARY
**       3 judges on Q
**       2 judges on R
**       1 judge  on S
**       6 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
