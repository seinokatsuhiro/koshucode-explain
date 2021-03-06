# I/O List

- koshu [source-basic-empty.k](#source-basic-emptyk)
- koshu [source-basic-full-terms.k](#source-basic-full-termsk)
- koshu [source-basic-no-terms.k](#source-basic-no-termsk)
- koshu [source-basic-ragged-judges.k](#source-basic-ragged-judgesk)
- koshu [source-basic-sub-terms.k](#source-basic-sub-termsk)



## [source-basic-empty.k](source-basic-empty.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|== Q : source P /x /y

```

Command `koshu source-basic-empty.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-basic-empty.k
**
**  OUTPUT
**    <stdout>
**

*** no judges

**
**  SUMMARY
**      no judges on Q
**      no judges in total
**
```



## [source-basic-full-terms.k](source-basic-full-terms.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

|== Q : source P /x /y
```

Command `koshu source-basic-full-terms.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-basic-full-terms.k
**
**  OUTPUT
**    <stdout>
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



## [source-basic-no-terms.k](source-basic-no-terms.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

|== Q : source P
|== R : source P2
```

Command `koshu source-basic-no-terms.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-basic-no-terms.k
**
**  OUTPUT
**    <stdout>
**

|-- Q

*** 1 judge 

*** no judges

**
**  SUMMARY
**       1 judge  on Q
**      no judges on R
**       1 judge  in total
**
```



## [source-basic-ragged-judges.k](source-basic-ragged-judges.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50  /z 100
|-- P  /x 2

|== Q : source P /x /y
```

Command `koshu source-basic-ragged-judges.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-basic-ragged-judges.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1  /y 40
|-- Q  /x 1  /y 50
|-- Q  /x 2

*** 3 judges

**
**  SUMMARY
**       3 judges on Q
**       3 judges in total
**
```



## [source-basic-sub-terms.k](source-basic-sub-terms.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

|== Q : source P /x
```

Command `koshu source-basic-sub-terms.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-basic-sub-terms.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1
|-- Q  /x 2

*** 2 judges

**
**  SUMMARY
**       2 judges on Q
**       2 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
