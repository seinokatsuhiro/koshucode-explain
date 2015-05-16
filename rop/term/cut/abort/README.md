# I/O List

- koshu [cut-abort-nested-term.k](#cut-abort-nested-termk)
- koshu [cut-abort-non-term.k](#cut-abort-non-termk)
- koshu [cut-abort-unknown-term.k](#cut-abort-unknown-termk)



## [cut-abort-nested-term.k](cut-abort-nested-term.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut /x | group p -to /g | cut /g/x
```

Command `koshu cut-abort-nested-term.k` exits with 2 and produces:

```
**
**  ABORTED  Require term name
**  -------- ------------------------------------------------ ---------
**  Source   12 42 cut-abort-nested-term.k
**           > /g/x                                           .. attr
**           12 38 cut-abort-nested-term.k
**           > cut /g/x                                       .. relmap
**           12 0 cut-abort-nested-term.k
**           > |== Q : p | cut /x | group p -to /g | cut /g/x .. assert
**  Command  koshu
**           cut-abort-nested-term.k
**
**  Exit with status 2
**
```



## [cut-abort-non-term.k](cut-abort-non-term.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut /x y
```

Command `koshu cut-abort-non-term.k` exits with 2 and produces:

```
**
**  ABORTED  Require term name
**  -------- -------------------------- ---------
**  Source   12 16 cut-abort-non-term.k
**           > /x y                     .. attr
**           12 12 cut-abort-non-term.k
**           > cut /x y                 .. relmap
**           12 0 cut-abort-non-term.k
**           > |== Q : p | cut /x y     .. assert
**  Command  koshu
**           cut-abort-non-term.k
**
**  Exit with status 2
**
```



## [cut-abort-unknown-term.k](cut-abort-unknown-term.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : cut
**

|-- P  /x 1  /y 10
|-- P  /x 1  /y 20
|-- P  /x 2  /y 30

p : source P /x /y

|== Q : p | cut /x /z
```

Command `koshu cut-abort-unknown-term.k` exits with 2 and produces:

```
**
**  ABORTED  Unknown term name
**  -------- ------------------------------ -------------
**  Detail   Unknown
**             /z
**           Input relation
**             rel /x any
**                 /y any
**  Source   12 12 cut-abort-unknown-term.k
**           > cut /x /z                    .. specialize
**           12 0 cut-abort-unknown-term.k
**           > |== Q : p | cut /x /z        .. assert
**  Command  koshu
**           cut-abort-unknown-term.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
