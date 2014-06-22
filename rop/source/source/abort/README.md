# I/O List

- koshu [source-abort-dup-pattern.k](#source-abort-dup-patternk)
- koshu [source-abort-nested-term.k](#source-abort-nested-termk)
- koshu [source-abort-no-pattern.k](#source-abort-no-patternk)
- koshu [source-abort-non-name.k](#source-abort-non-namek)



## [source-abort-dup-pattern.k](source-abort-dup-pattern.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|== Q : source -pattern P P -term /x /y
```

Command `koshu source-abort-dup-pattern.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-abort-dup-pattern.k
**

**
**  ABORTED  Unexpected attribute
**  -------- ----------------------------------------- ---------
**  Detail   Require one word
**  Source   6 24 source-abort-dup-pattern.k
**           > P P -term /x /y                         .. attr
**           6 8 source-abort-dup-pattern.k
**           > source -pattern P P -term /x /y         .. relmap
**           6 0 source-abort-dup-pattern.k
**           > |== Q : source -pattern P P -term /x /y .. assert
**  Command  koshu
**           source-abort-dup-pattern.k
**
**  Exit with status 2
**
```



## [source-abort-nested-term.k](source-abort-nested-term.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|== Q : source P /x /y/z
```

Command `koshu source-abort-nested-term.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-abort-nested-term.k
**

**
**  ABORTED  Require term name
**  -------- ------------------------------- ---------
**  Source   6 17 source-abort-nested-term.k
**           > /x /y/z                       .. attr
**           6 8 source-abort-nested-term.k
**           > source P /x /y/z              .. relmap
**           6 0 source-abort-nested-term.k
**           > |== Q : source P /x /y/z      .. assert
**  Command  koshu
**           source-abort-nested-term.k
**
**  Exit with status 2
**
```



## [source-abort-no-pattern.k](source-abort-no-pattern.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|== Q : source -pattern -term /x /y
```

Command `koshu source-abort-no-pattern.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-abort-no-pattern.k
**

**
**  ABORTED  Unexpected attribute
**  -------- ------------------------------------- ---------
**  Detail   Require one word
**  Source   6 8 source-abort-no-pattern.k
**           > source -pattern -term /x /y         .. relmap
**           6 0 source-abort-no-pattern.k
**           > |== Q : source -pattern -term /x /y .. assert
**  Command  koshu
**           source-abort-no-pattern.k
**
**  Exit with status 2
**
```



## [source-abort-non-name.k](source-abort-non-name.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : source
**

|== Q : source P /x 0 /y 1
```

Command `koshu source-abort-non-name.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    source-abort-non-name.k
**

**
**  ABORTED  Require term name
**  -------- ---------------------------- ---------
**  Source   6 17 source-abort-non-name.k
**           > /x 0 /y 1                  .. attr
**           6 8 source-abort-non-name.k
**           > source P /x 0 /y 1         .. relmap
**           6 0 source-abort-non-name.k
**           > |== Q : source P /x 0 /y 1 .. assert
**  Command  koshu
**           source-abort-non-name.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
