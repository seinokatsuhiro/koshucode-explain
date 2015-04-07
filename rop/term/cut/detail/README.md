# I/O List

- koshu [cut-detail-named-attr.k](#cut-detail-named-attrk)
- koshu [cut-detail-order.k](#cut-detail-orderk)



## [cut-detail-named-attr.k](cut-detail-named-attr.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut -term /x /y
|== R : p | cut -term /y
|== S : p | cut -term
```

Command `koshu cut-detail-named-attr.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-detail-named-attr.k
**
**  OUTPUT
**    <stdout>
**

|-- Q

*** 1 judge 

|-- R  /x 1
|-- R  /x 2

*** 2 judges

|-- S  /x 1  /y 10
|-- S  /x 1  /y 20
|-- S  /x 2  /y 30

*** 3 judges

**
**  SUMMARY
**       1 judge  on Q
**       2 judges on R
**       3 judges on S
**       6 judges in total
**
```



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
