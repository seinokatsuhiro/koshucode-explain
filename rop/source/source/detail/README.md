# I/O List

- koshu [source-detail-named-attr.k](#source-detail-named-attrk)



## [source-detail-named-attr.k](source-detail-named-attr.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

|== Q : source -pattern P -term /x /y

```

Command `koshu source-detail-named-attr.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-detail-named-attr.k
**

|-- Q  /x 1  /y 40
|-- Q  /x 1  /y 50
|-- Q  /x 2  /y 60

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
