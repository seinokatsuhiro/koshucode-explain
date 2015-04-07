# I/O List

- koshu [cut-basic-all-none.k](#cut-basic-all-nonek)
- koshu [cut-basic-many-terms.k](#cut-basic-many-termsk)
- koshu [cut-basic-xy.k](#cut-basic-xyk)



## [cut-basic-all-none.k](cut-basic-all-none.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut /x /y
|== R : p | cut

```

Command `koshu cut-basic-all-none.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-basic-all-none.k
**
**  OUTPUT
**    <stdout>
**

|-- Q

*** 1 judge 

|-- R  /x 1  /y 10
|-- R  /x 1  /y 20
|-- R  /x 2  /y 30

*** 3 judges

**
**  SUMMARY
**       1 judge  on Q
**       3 judges on R
**       4 judges in total
**
```



## [cut-basic-many-terms.k](cut-basic-many-terms.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- ALPH  /a 1   /b 2   /c 3   /d 4   /e 5   /f 6   /g 7
          /h 8   /i 9   /j 10  /k 11  /l 12  /m 13  /n 14
          /o 15  /p 16  /q 17  /r 18  /s 19  /t 20  /u 21
          /v 22  /w 23  /x 24  /y 25  /z 26

alph : source ALPH
          /a /b /c /d /e /f /g
          /h /i /j /k /l /m /n
          /o /p /q /r /s /t /u
          /v /w /x /y /z

|== NON-VOWEL : alph | cut /a /e /i /o /u /y
|== NON-PRIME : alph | cut /b /c /e /g /k /m /q /s /w

```

Command `koshu cut-basic-many-terms.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-basic-many-terms.k
**
**  OUTPUT
**    <stdout>
**

|-- NON-VOWEL  /b 2  /c 3  /d 4  /f 6  /g 7  /h 8  /j 10  /k 11  /l 12  /m 13  /n 14  /p 16  /q 17  /r 18  /s 19  /t 20  /v 22  /w 23  /x 24  /z 26

*** 1 judge 

|-- NON-PRIME  /a 1  /d 4  /f 6  /h 8  /i 9  /j 10  /l 12  /n 14  /o 15  /p 16  /r 18  /t 20  /u 21  /v 22  /x 24  /y 25  /z 26

*** 1 judge 

**
**  SUMMARY
**       1 judge  on NON-PRIME
**       1 judge  on NON-VOWEL
**       2 judges in total
**
```



## [cut-basic-xy.k](cut-basic-xy.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut /x
|== R : p | cut /y
```

Command `koshu cut-basic-xy.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    cut-basic-xy.k
**
**  OUTPUT
**    <stdout>
**

|-- Q  /y 10
|-- Q  /y 20
|-- Q  /y 30

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
