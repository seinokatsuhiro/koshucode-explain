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

|== Q : source P P /x /y
```

Command `koshu source-abort-dup-pattern.k` exits with 2 and produces:

```
**
**  ABORTED  Require flat name
**  -------- ------------------------------- ---------
**  Detail   P
**  Source   6 17 source-abort-dup-pattern.k
**           > P /x /y                       .. attr
**           6 8 source-abort-dup-pattern.k
**           > source P P /x /y              .. relmap
**           6 0 source-abort-dup-pattern.k
**           > |== Q : source P P /x /y      .. assert
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

|== Q : source /x /y
```

Command `koshu source-abort-no-pattern.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- ------------------------------ ---------
**  Detail   Require one word
**  Source   6 15 source-abort-no-pattern.k
**           > /x /y                        .. attr
**           6 8 source-abort-no-pattern.k
**           > source /x /y                 .. relmap
**           6 0 source-abort-no-pattern.k
**           > |== Q : source /x /y         .. assert
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
**
**  ABORTED  Require flat name
**  -------- ---------------------------- ---------
**  Detail   0
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
