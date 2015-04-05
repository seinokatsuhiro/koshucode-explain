# I/O List

- koshu [dum-abort-named-attr.k](#dum-abort-named-attrk)
- koshu [dum-abort-pos-attr.k](#dum-abort-pos-attrk)



## [dum-abort-named-attr.k](dum-abort-named-attr.k)

```
** -*- koshu -*-

|== P : dum -x
```

Command `koshu dum-abort-named-attr.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- -------------------------- ---------
**  Detail   Unknown -x
**  Source   3 8 dum-abort-named-attr.k
**           > dum -x                   .. lexmap
**           3 0 dum-abort-named-attr.k
**           > |== P : dum -x           .. assert
**  Command  koshu
**           dum-abort-named-attr.k
**
**  Exit with status 2
**
```



## [dum-abort-pos-attr.k](dum-abort-pos-attr.k)

```
** -*- koshu -*-

|== P : dum /x
```

Command `koshu dum-abort-pos-attr.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- ------------------------ ---------
**  Detail   Attributes not required
**  Source   3 8 dum-abort-pos-attr.k
**           > dum /x                 .. lexmap
**           3 0 dum-abort-pos-attr.k
**           > |== P : dum /x         .. assert
**  Command  koshu
**           dum-abort-pos-attr.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
