# I/O List

- koshu [pick-equiv-cut.k](#pick-equiv-cutk)
- koshu [pick-equiv-join.k](#pick-equiv-joink)
- koshu [pick-equiv-relmap.k](#pick-equiv-relmapk)



## [pick-equiv-cut.k](pick-equiv-cut.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z
xy : empty /x /y

|== Q : p | pick /x /y
|== R : p | cut /z
```

Command `koshu pick-equiv-cut.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-equiv-cut.k
**

|-- Q  /x 1  /y 10
|-- Q  /x 1  /y 12
|-- Q  /x 2  /y 14

*** 3 judges

|-- R  /x 1  /y 10
|-- R  /x 1  /y 12
|-- R  /x 2  /y 14

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges on R
**       6 judges in total
**
```



## [pick-equiv-join.k](pick-equiv-join.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p    : source P /x /y /z
xy   : empty /x /y
vwxy : empty /v /w /x /y

|== Q : p | pick /x /y
|== R : p | join xy
|== S : p | join vwxy
```

Command `koshu pick-equiv-join.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-equiv-join.k
**

|-- Q  /x 1  /y 10
|-- Q  /x 1  /y 12
|-- Q  /x 2  /y 14

*** 3 judges

|-- R  /x 1  /y 10
|-- R  /x 1  /y 12
|-- R  /x 2  /y 14

*** 3 judges

|-- S  /x 1  /y 10
|-- S  /x 1  /y 12
|-- S  /x 2  /y 14

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges on R
**       3 judges on S
**       9 judges in total
**
```



## [pick-equiv-relmap.k](pick-equiv-relmap.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z
xy : empty /x /y

|== Q : p | pick /x /y
|== R : p | pick-term xy
```

Command `koshu pick-equiv-relmap.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-equiv-relmap.k
**

|-- Q  /x 1  /y 10
|-- Q  /x 1  /y 12
|-- Q  /x 2  /y 14

*** 3 judges

|-- R  /x 1  /y 10
|-- R  /x 1  /y 12
|-- R  /x 2  /y 14

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
