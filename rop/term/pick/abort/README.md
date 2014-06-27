# I/O List

- koshu [pick-abort-nested-term.k](#pick-abort-nested-termk)
- koshu [pick-abort-non-term.k](#pick-abort-non-termk)
- koshu [pick-abort-unknown-term.k](#pick-abort-unknown-termk)



## [pick-abort-nested-term.k](pick-abort-nested-term.k)

```
** -*- koshu -*-

p : source P /x /y /z

|== Q : p | pick /x/y
```

Command `koshu pick-abort-nested-term.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-abort-nested-term.k
**

**
**  ABORTED  Require term name
**  -------- ----------------------------- ---------
**  Source   5 17 pick-abort-nested-term.k
**           > /x/y                        .. attr
**           5 12 pick-abort-nested-term.k
**           > pick /x/y                   .. relmap
**           5 0 pick-abort-nested-term.k
**           > |== Q : p | pick /x/y       .. assert
**  Command  koshu
**           pick-abort-nested-term.k
**
**  Exit with status 2
**
```



## [pick-abort-non-term.k](pick-abort-non-term.k)

```
** -*- koshu -*-

p : source P /x /y /z

|== Q : p | pick /x y
```

Command `koshu pick-abort-non-term.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-abort-non-term.k
**

**
**  ABORTED  Require term name
**  -------- -------------------------- ---------
**  Source   5 17 pick-abort-non-term.k
**           > /x y                     .. attr
**           5 12 pick-abort-non-term.k
**           > pick /x y                .. relmap
**           5 0 pick-abort-non-term.k
**           > |== Q : p | pick /x y    .. assert
**  Command  koshu
**           pick-abort-non-term.k
**
**  Exit with status 2
**
```



## [pick-abort-unknown-term.k](pick-abort-unknown-term.k)

```
** -*- koshu -*-

p : source P /x /y /z

|== Q : p | pick /v /x
```

Command `koshu pick-abort-unknown-term.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    pick-abort-unknown-term.k
**

**
**  ABORTED  Unknown term name
**  -------- ------------------------------ -------------
**  Detail   Unknown
**             /v
**           Relation
**             /x
**             /y
**             /z
**  Source   5 12 pick-abort-unknown-term.k
**           > pick /v /x                   .. specialize
**           5 0 pick-abort-unknown-term.k
**           > |== Q : p | pick /v /x       .. assert
**  Command  koshu
**           pick-abort-unknown-term.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```