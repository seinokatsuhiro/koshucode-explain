# I/O List

- koshu [id-abort-named-attr.k](#id-abort-named-attrk)
- koshu [id-abort-pos-attr.k](#id-abort-pos-attrk)



## [id-abort-named-attr.k](id-abort-named-attr.k)

```
** -*- koshu -*-

|== P : id -x
```

Command `koshu id-abort-named-attr.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- ------------------------- ---------
**  Detail   Unknown -x
**  Source   3 8 id-abort-named-attr.k
**           > id -x                   .. lexmap
**           3 0 id-abort-named-attr.k
**           > |== P : id -x           .. assert
**  Command  koshu
**           id-abort-named-attr.k
**
**  Exit with status 2
**
```



## [id-abort-pos-attr.k](id-abort-pos-attr.k)

```
** -*- koshu -*-

|== P : id /x
```

Command `koshu id-abort-pos-attr.k` exits with 2 and produces:

```
**
**  ABORTED  Unexpected attribute
**  -------- ----------------------- ---------
**  Detail   Attributes not required
**  Source   3 8 id-abort-pos-attr.k
**           > id /x                 .. lexmap
**           3 0 id-abort-pos-attr.k
**           > |== P : id /x         .. assert
**  Command  koshu
**           id-abort-pos-attr.k
**
**  Exit with status 2
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
