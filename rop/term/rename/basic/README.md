# I/O List

- koshu [rename-basic-cycle.k](#rename-basic-cyclek)
- koshu [rename-basic-xy.k](#rename-basic-xyk)



## [rename-basic-cycle.k](rename-basic-cycle.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

|== Q : source P /x /y /z
      | rename /y /x
               /z /y
               /x /z
```

Command `koshu rename-basic-cycle.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    rename-basic-cycle.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /y 1  /z 10  /x 50
|-- Q  /y 1  /z 20  /x 60
|-- Q  /y 2  /z 30  /x 60

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges in total
**
```



## [rename-basic-xy.k](rename-basic-xy.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

|== Q : source P /x /y /z
      | rename /a /x
               /b /y

```

Command `koshu rename-basic-xy.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    rename-basic-xy.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /a 1  /b 10  /z 50
|-- Q  /a 1  /b 20  /z 60
|-- Q  /a 2  /b 30  /z 60

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
