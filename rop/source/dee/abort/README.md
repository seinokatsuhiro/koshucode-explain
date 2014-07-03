# I/O List

- koshu [dee-abort-named-attr.k](#dee-abort-named-attrk)
- koshu [dee-abort-pos-attr.k](#dee-abort-pos-attrk)



## [dee-abort-named-attr.k](dee-abort-named-attr.k)

```
** -*- koshu -*-

|== P : dee -x
```

Command `koshu dee-abort-named-attr.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-abort-named-attr.k
**

**
**  ABORTED  Unexpected attribute
**  -------- -------------------------- ---------
**  Detail   Unknown -x
**  Source   3 8 dee-abort-named-attr.k
**           > dee -x                   .. lexmap
**           3 0 dee-abort-named-attr.k
**           > |== P : dee -x           .. assert
**  Command  koshu
**           dee-abort-named-attr.k
**
**  Exit with status 2
**
```



## [dee-abort-pos-attr.k](dee-abort-pos-attr.k)

```
** -*- koshu -*-

|== P : dee /x
```

Command `koshu dee-abort-pos-attr.k` exits with 2 and produces:

```
** -*- koshu -*-
**
**  INPUT
**    dee-abort-pos-attr.k
**

**
**  ABORTED  Unexpected attribute
**  -------- ------------------------ ---------
**  Detail   Attributes not required
**  Source   3 8 dee-abort-pos-attr.k
**           > dee /x                 .. lexmap
**           3 0 dee-abort-pos-attr.k
**           > |== P : dee /x         .. assert
**  Command  koshu
**           dee-abort-pos-attr.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
