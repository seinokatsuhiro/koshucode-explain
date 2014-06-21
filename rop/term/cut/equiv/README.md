# I/O List

- koshu [cut-equiv-join.k](#cut-equiv-joink)
- koshu [cut-equiv-pick.k](#cut-equiv-pickk)
- koshu [cut-equiv-relmap.k](#cut-equiv-relmapk)



## [cut-equiv-join.k](cut-equiv-join.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y
x : empty /x

|== Q : p | cut /y
|== R : p | join x
```

Command `koshu cut-equiv-join.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-equiv-join.k
**

|-- Q  /x 1
|-- Q  /x 2

*** 2 judges

|-- R  /x 1
|-- R  /x 2

*** 2 judges

**
**  SUMMARY
**       2 judges on Q
**       2 judges on R
**       4 judges in total
**
```



## [cut-equiv-pick.k](cut-equiv-pick.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut /y
|== R : p | pick /x
```

Command `koshu cut-equiv-pick.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-equiv-pick.k
**

|-- Q  /x 1
|-- Q  /x 2

*** 2 judges

|-- R  /x 1
|-- R  /x 2

*** 2 judges

**
**  SUMMARY
**       2 judges on Q
**       2 judges on R
**       4 judges in total
**
```



## [cut-equiv-relmap.k](cut-equiv-relmap.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y
y : empty /y

|== Q : p | cut /y
|== R : p | cut-term y
```

Command `koshu cut-equiv-relmap.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-equiv-relmap.k
**

|-- Q  /x 1
|-- Q  /x 2

*** 2 judges

|-- R  /x 1
|-- R  /x 2

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
