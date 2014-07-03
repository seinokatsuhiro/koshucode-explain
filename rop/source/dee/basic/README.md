# I/O List

- koshu [dee-basic-add.k](#dee-basic-addk)
- koshu [dee-basic-join.k](#dee-basic-joink)
- koshu [dee-basic-meet.k](#dee-basic-meetk)
- koshu [dee-basic-size.k](#dee-basic-sizek)



## [dee-basic-add.k](dee-basic-add.k)

```
** -*- koshu -*-

|== P : dee | add /a 1 /b 20
```

Command `koshu dee-basic-add.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-basic-add.k
**

|-- P  /a 1  /b 20

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  in total
**
```



## [dee-basic-join.k](dee-basic-join.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

p : source P /x /y

|== P : p
|== Q : p | join dee
```

Command `koshu dee-basic-join.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-basic-join.k
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

*** 3 judges

|-- Q

*** 1 judge 

**
**  SUMMARY
**       3 judges on P
**       1 judge  on Q
**       4 judges in total
**
```



## [dee-basic-meet.k](dee-basic-meet.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

p : source P /x /y

|== P : p
|== Q : p | meet dee
```

Command `koshu dee-basic-meet.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-basic-meet.k
**

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

*** 3 judges

|-- Q  /x 1  /y 40
|-- Q  /x 1  /y 50
|-- Q  /x 2  /y 60

*** 3 judges

**
**  SUMMARY
**       3 judges on P
**       3 judges on Q
**       6 judges in total
**
```



## [dee-basic-size.k](dee-basic-size.k)

```
** -*- koshu -*-

|== P : dee
|== Q : dee | size /n
```

Command `koshu dee-basic-size.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-basic-size.k
**

|-- P

*** 1 judge 

|-- Q  /n 1

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  on Q
**       2 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
