# I/O List

- koshu [koshu-rop-abort-group.k](#koshu-rop-abort-groupk)
- koshu [koshu-rop-abort-no-attrs.k](#koshu-rop-abort-no-attrsk)
- koshu [koshu-rop-abort-not-term.k](#koshu-rop-abort-not-termk)
- koshu [koshu-rop-abort-two-attrs.k](#koshu-rop-abort-two-attrsk)
- koshu [koshu-rop-abort-usage.k](#koshu-rop-abort-usagek)



## [koshu-rop-abort-group.k](koshu-rop-abort-group.k)

```
** -*- koshu -*-

|== ROP : koshu-rop /name -group g
```

Command `koshu koshu-rop-abort-group.k` exits with 2 and produces:

```
**
**  ABORTED  Require flat name
**  -------- ------------------------------------ ---------
**  Detail   g
**  Source   3 33 koshu-rop-abort-group.k
**           > g                                  .. attr
**           3 10 koshu-rop-abort-group.k
**           > koshu-rop /name -group g           .. relmap
**           3 0 koshu-rop-abort-group.k
**           > |== ROP : koshu-rop /name -group g .. assert
**  Command  koshu
**           koshu-rop-abort-group.k
**
**  Exit with status 2
**
```



## [koshu-rop-abort-no-attrs.k](koshu-rop-abort-no-attrs.k)

```
** -*- koshu -*-

|== ROP : koshu-rop
```

Command `koshu koshu-rop-abort-no-attrs.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- ------------------------------- ---------
**  Detail   Require one term
**  Source   3 10 koshu-rop-abort-no-attrs.k
**           > koshu-rop                     .. relmap
**           3 0 koshu-rop-abort-no-attrs.k
**           > |== ROP : koshu-rop           .. assert
**  Command  koshu
**           koshu-rop-abort-no-attrs.k
**
**  Exit with status 2
**
```



## [koshu-rop-abort-not-term.k](koshu-rop-abort-not-term.k)

```
** -*- koshu -*-

|== ROP : koshu-rop name
```

Command `koshu koshu-rop-abort-not-term.k` exits with 2 and produces:

```
**
**  ABORTED  Require flat name
**  -------- ------------------------------- ---------
**  Detail   name
**  Source   3 20 koshu-rop-abort-not-term.k
**           > name                          .. attr
**           3 10 koshu-rop-abort-not-term.k
**           > koshu-rop name                .. relmap
**           3 0 koshu-rop-abort-not-term.k
**           > |== ROP : koshu-rop name      .. assert
**  Command  koshu
**           koshu-rop-abort-not-term.k
**
**  Exit with status 2
**
```



## [koshu-rop-abort-two-attrs.k](koshu-rop-abort-two-attrs.k)

```
** -*- koshu -*-

|== ROP : koshu-rop /a /b
```

Command `koshu koshu-rop-abort-two-attrs.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- -------------------------------- ---------
**  Detail   Require one term
**  Source   3 20 koshu-rop-abort-two-attrs.k
**           > /a /b                          .. attr
**           3 10 koshu-rop-abort-two-attrs.k
**           > koshu-rop /a /b                .. relmap
**           3 0 koshu-rop-abort-two-attrs.k
**           > |== ROP : koshu-rop /a /b      .. assert
**  Command  koshu
**           koshu-rop-abort-two-attrs.k
**
**  Exit with status 2
**
```



## [koshu-rop-abort-usage.k](koshu-rop-abort-usage.k)

```
** -*- koshu -*-

|== ROP : koshu-rop /name -usage u
```

Command `koshu koshu-rop-abort-usage.k` exits with 2 and produces:

```
**
**  ABORTED  Require flat name
**  -------- ------------------------------------ ---------
**  Detail   u
**  Source   3 33 koshu-rop-abort-usage.k
**           > u                                  .. attr
**           3 10 koshu-rop-abort-usage.k
**           > koshu-rop /name -usage u           .. relmap
**           3 0 koshu-rop-abort-usage.k
**           > |== ROP : koshu-rop /name -usage u .. assert
**  Command  koshu
**           koshu-rop-abort-usage.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
