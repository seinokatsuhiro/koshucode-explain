# I/O List

- koshu [pick-basic-all-none.k](#pick-basic-all-nonek)
- koshu [pick-basic-many-terms.k](#pick-basic-many-termsk)
- koshu [pick-basic-xy.k](#pick-basic-xyk)



## [pick-basic-all-none.k](pick-basic-all-none.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p | pick /x /y /z
|== R : p | pick
```

Command `koshu pick-basic-all-none.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-basic-all-none.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1  /y 10  /z 50
|-- Q  /x 1  /y 12  /z 60
|-- Q  /x 2  /y 14  /z 60

*** 3 judges

|-- R

*** 1 judge 

**
**  SUMMARY
**       3 judges on Q
**       1 judge  on R
**       4 judges in total
**
```



## [pick-basic-many-terms.k](pick-basic-many-terms.k)

```
** -*- koshu -*-

|-- ALPH  /a 1   /b 2   /c 3   /d 4   /e 5   /f 6   /g 7
          /h 8   /i 9   /j 10  /k 11  /l 12  /m 13  /n 14
          /o 15  /p 16  /q 17  /r 18  /s 19  /t 20  /u 21
          /v 22  /w 23  /x 24  /y 25  /z 26

alph : source ALPH
          /a /b /c /d /e /f /g
          /h /i /j /k /l /m /n
          /o /p /q /r /s /t /u
          /v /w /x /y /z

|== VOWEL : alph | pick /a /e /i /o /u /y
|== PRIME : alph | pick /b /c /e /g /k /m /q /s /w
```

Command `koshu pick-basic-many-terms.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-basic-many-terms.k
**
**  OUTPUT
**    <stdout>
**

|-- VOWEL  /a 1  /e 5  /i 9  /o 15  /u 21  /y 25

*** 1 judge 

|-- PRIME  /b 2  /c 3  /e 5  /g 7  /k 11  /m 13  /q 17  /s 19  /w 23

*** 1 judge 

**
**  SUMMARY
**       1 judge  on PRIME
**       1 judge  on VOWEL
**       2 judges in total
**
```



## [pick-basic-xy.k](pick-basic-xy.k)

```
** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p | pick /x /y
|== R : p | pick /x
```

Command `koshu pick-basic-xy.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-basic-xy.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /x 1  /y 10
|-- Q  /x 1  /y 12
|-- Q  /x 2  /y 14

*** 3 judges

|-- R  /x 1
|-- R  /x 2

*** 2 judges

**
**  SUMMARY
**       3 judges on Q
**       2 judges on R
**       5 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
