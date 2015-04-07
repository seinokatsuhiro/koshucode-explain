# I/O List

- koshu [id-basic.k](#id-basick)



## [id-basic.k](id-basic.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p
|== R : p | id
|== S : p | id | id
```

Command `koshu id-basic.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    id-basic.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1  /y 10  /z 50
|-- Q  /x 1  /y 12  /z 60
|-- Q  /x 2  /y 14  /z 60

*** 3 judges

|-- R  /x 1  /y 10  /z 50
|-- R  /x 1  /y 12  /z 60
|-- R  /x 2  /y 14  /z 60

*** 3 judges

|-- S  /x 1  /y 10  /z 50
|-- S  /x 1  /y 12  /z 60
|-- S  /x 2  /y 14  /z 60

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges on R
**       3 judges on S
**       9 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
