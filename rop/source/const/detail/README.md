# I/O List

- koshu [const-detail-duplicate.k](#const-detail-duplicatek)



## [const-detail-duplicate.k](const-detail-duplicate.k)

```
** -*- koshu -*-

|== P : const {= /a /b
               [ 1 | 10 ]
               [ 1 | 11 ]
               [ 2 | 20 ]
               [ 3 | 30 ]
               [ 3 | 31 ]
               [ 1 | 10 ]
               [ 3 | 30 ]
               =}
```

Command `koshu const-detail-duplicate.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    const-detail-duplicate.k
**
**  OUTPUT
**    <stdout>
**

|-- P  /a 1  /b 10
|-- P  /a 1  /b 11
|-- P  /a 2  /b 20
|-- P  /a 3  /b 30
|-- P  /a 3  /b 31

*** 5 judges

**
**  SUMMARY
**       5 judges on P
**       5 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
