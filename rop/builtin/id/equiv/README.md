# I/O List

- koshu [id-equiv-cut.k](#id-equiv-cutk)
- koshu [id-equiv-keep.k](#id-equiv-keepk)
- koshu [id-equiv-meet.k](#id-equiv-meetk)



## [id-equiv-cut.k](id-equiv-cut.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p
|== R : p | cut
```

Command `koshu id-equiv-cut.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    id-equiv-cut.k
**

|-- Q  /x 1  /y 10  /z 50
|-- Q  /x 1  /y 12  /z 60
|-- Q  /x 2  /y 14  /z 60

*** 3 judges

|-- R  /x 1  /y 10  /z 50
|-- R  /x 1  /y 12  /z 60
|-- R  /x 2  /y 14  /z 60

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges on R
**       6 judges in total
**
```



## [id-equiv-keep.k](id-equiv-keep.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p
|== R : p | keep <1>
|== S : p | omit <0>
```

Command `koshu id-equiv-keep.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    id-equiv-keep.k
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



## [id-equiv-meet.k](id-equiv-meet.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p
|== R : p | meet dee
```

Command `koshu id-equiv-meet.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    id-equiv-meet.k
**

|-- Q  /x 1  /y 10  /z 50
|-- Q  /x 1  /y 12  /z 60
|-- Q  /x 2  /y 14  /z 60

*** 3 judges

|-- R  /x 1  /y 10  /z 50
|-- R  /x 1  /y 12  /z 60
|-- R  /x 2  /y 14  /z 60

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
