# I/O List

- koshu [rename-abort-conflict.k](#rename-abort-conflictk)
- koshu [rename-abort-duplicate.k](#rename-abort-duplicatek)
- koshu [rename-abort-fork.k](#rename-abort-forkk)
- koshu [rename-abort-not-term.k](#rename-abort-not-termk)
- koshu [rename-abort-odd.k](#rename-abort-oddk)
- koshu [rename-abort-unknown.k](#rename-abort-unknownk)



## [rename-abort-conflict.k](rename-abort-conflict.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|== Q : source P /x /y /z
      | rename /y /x
```

Command `koshu rename-abort-conflict.k` exits with 2 and produces:

```
**
**  ABORTED  Duplicate term name
**  -------- --------------------------- -------------
**  Detail   Duplicate
**             /y
**           in the terms
**             /y
**             /y
**             /z
**
**  Source   7.8 rename-abort-conflict.k
**             |
**               rename /y /x            .. specialize
**
**           6.0 rename-abort-conflict.k
**             |== Q : source P /x /y /z .. assert
**
**  Command  koshu
**           rename-abort-conflict.k
**
**  Exit with status 2
**
```



## [rename-abort-duplicate.k](rename-abort-duplicate.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|== Q : source P /x /y /z
      | rename /a /x
               /a /y
```

Command `koshu rename-abort-duplicate.k` exits with 2 and produces:

```
**
**  ABORTED  Duplicate term name
**  -------- ---------------------------- -------------
**  Detail   Duplicate
**             /a
**           in the terms
**             /a
**             /a
**
**  Source   7.8 rename-abort-duplicate.k
**             |
**               rename /a /x             .. specialize
**
**           6.0 rename-abort-duplicate.k
**             |== Q : source P /x /y /z  .. assert
**
**  Command  koshu
**           rename-abort-duplicate.k
**
**  Exit with status 2
**
```



## [rename-abort-fork.k](rename-abort-fork.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|== Q : source P /x /y
      | rename /a /x /b /x
```

Command `koshu rename-abort-fork.k` exits with 2 and produces:

```
**
**  ABORTED  Duplicate term name
**  -------- ------------------------ -------------
**  Detail   Duplicate
**             /x
**           in the terms
**             /x
**             /x
**
**  Source   7.8 rename-abort-fork.k
**             |
**               rename /a /x /b /x   .. specialize
**
**           6.0 rename-abort-fork.k
**             |== Q : source P /x /y .. assert
**
**  Command  koshu
**           rename-abort-fork.k
**
**  Exit with status 2
**
```



## [rename-abort-not-term.k](rename-abort-not-term.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|== Q : source P /x /y
      | rename /a x
```

Command `koshu rename-abort-not-term.k` exits with 2 and produces:

```
**
**  ABORTED  Require flat name
**  -------- ---------------------------- ---------
**  Detail   x
**
**  Source   7.15 rename-abort-not-term.k
**             | rename
**                 /a x                   .. attr
**
**           7.8 rename-abort-not-term.k
**             |
**               rename /a x              .. relmap
**
**           6.0 rename-abort-not-term.k
**             |== Q : source P /x /y     .. assert
**
**  Command  koshu
**           rename-abort-not-term.k
**
**  Exit with status 2
**
```



## [rename-abort-odd.k](rename-abort-odd.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|== Q : source P /x /y
      | rename /a /x
               /b
```

Command `koshu rename-abort-odd.k` exits with 2 and produces:

```
**
**  ABORTED  Require term name
**  -------- ------------------------ ---------
**  Source   7.15 rename-abort-odd.k
**             | rename
**                 /a /x              .. attr
**
**           7.8 rename-abort-odd.k
**             |
**               rename /a /x         .. relmap
**
**           6.0 rename-abort-odd.k
**             |== Q : source P /x /y .. assert
**
**  Command  koshu
**           rename-abort-odd.k
**
**  Exit with status 2
**
```



## [rename-abort-unknown.k](rename-abort-unknown.k)

```
** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|== Q : source P /x /y
      | rename /c /z
```

Command `koshu rename-abort-unknown.k` exits with 2 and produces:

```
**
**  ABORTED  Unknown term name
**  -------- -------------------------- -------------
**  Detail   Unknown
**             /z
**           in the terms
**             /x
**             /y
**
**  Source   7.8 rename-abort-unknown.k
**             |
**               rename /c /z           .. specialize
**
**           6.0 rename-abort-unknown.k
**             |== Q : source P /x /y   .. assert
**
**  Command  koshu
**           rename-abort-unknown.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
