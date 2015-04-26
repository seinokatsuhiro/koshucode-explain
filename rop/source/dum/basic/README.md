# I/O List

- koshu [dum-basic-add.k](#dum-basic-addk)
- koshu [dum-basic-join.k](#dum-basic-joink)
- koshu [dum-basic-meet.k](#dum-basic-meetk)
- koshu [dum-basic-size.k](#dum-basic-sizek)



## [dum-basic-add.k](dum-basic-add.k)

```
** -*- koshu -*-

|== P : dum | add /a 1 /b 20 | down /r
```

Command `koshu dum-basic-add.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dum-basic-add.k
**
**  OUTPUT
**    <stdout>
**

|-- P  /r {| /a /b |}

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  in total
**
```



## [dum-basic-join.k](dum-basic-join.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

p : source P /x /y
q : source Q /x /y

|== P  : p | down /r
|== P2 : p | join dum | down /r

|== Q  : q | down /r
|== Q2 : q | join dum | down /r
```

Command `koshu dum-basic-join.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dum-basic-join.k
**
**  OUTPUT
**    <stdout>
**

|-- P  /r {| /x /y [ 1 | 40 ] [ 1 | 50 ] [ 2 | 60 ] |}

*** 1 judge 

|-- P2  /r {| [ ] |}

*** 1 judge 

|-- Q  /r {| /x /y |}

*** 1 judge 

|-- Q2  /r {| |}

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  on P2
**       1 judge  on Q
**       1 judge  on Q2
**       4 judges in total
**
```



## [dum-basic-meet.k](dum-basic-meet.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

p : source P /x /y

|== P : p | omit-all | down /r
|== Q : p | meet dum | down /r
```

Command `koshu dum-basic-meet.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dum-basic-meet.k
**
**  OUTPUT
**    <stdout>
**

|-- P  /r {| /x /y |}

*** 1 judge 

|-- Q  /r {| /x /y |}

*** 1 judge 

**
**  SUMMARY
**       1 judge  on P
**       1 judge  on Q
**       2 judges in total
**
```



## [dum-basic-size.k](dum-basic-size.k)

```
** -*- koshu -*-

|== P : dum
|== Q : dum | size /n
```

Command `koshu dum-basic-size.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    dum-basic-size.k
**
**  OUTPUT
**    <stdout>
**

*** no judges

|-- Q  /n 0

*** 1 judge 

**
**  SUMMARY
**      no judges on P
**       1 judge  on Q
**       1 judge  in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
