# I/O List

- koshu [koshu-rop-basic-name.k](#koshu-rop-basic-namek)
- koshu [koshu-rop-basic-table.k](#koshu-rop-basic-tablek)



## [koshu-rop-basic-name.k](koshu-rop-basic-name.k)

```
** -*- koshu -*-

|== ROP : koshu-rop /name
```

Command `koshu koshu-rop-basic-name.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    koshu-rop-basic-name.k
**

|-- ROP  /name 'add
|-- ROP  /name 'range
|-- ROP  /name 'fill
|-- ROP  /name 'replace
|-- ROP  /name 'replace-all

|-- ROP  /name 'split
|-- ROP  /name 'subst
|-- ROP  /name 'unary
|-- ROP  /name 'dump-cox
|-- ROP  /name 'both

|-- ROP  /name 'maybe
|-- ROP  /name 'contain
|-- ROP  /name 'keep
|-- ROP  /name 'omit
|-- ROP  /name 'omit-all

|-- ROP  /name 'number
|-- ROP  /name 'rank
|-- ROP  /name 'repeat
|-- ROP  /name 'koshu-cop
|-- ROP  /name 'koshu-cop-infix

|-- ROP  /name 'koshu-rop
|-- ROP  /name 'koshu-version
|-- ROP  /name 'chunk
|-- ROP  /name 'copy
|-- ROP  /name 'down
*** 25

|-- ROP  /name 'for
|-- ROP  /name 'group
|-- ROP  /name 'group-by
|-- ROP  /name 'join-up
|-- ROP  /name 'nest

|-- ROP  /name 'unnest
|-- ROP  /name 'slice
|-- ROP  /name 'slice-up
|-- ROP  /name 'up
|-- ROP  /name 'check-term

|-- ROP  /name 'dump
|-- ROP  /name 'duplicate
|-- ROP  /name 'exclude
|-- ROP  /name 'assn
|-- ROP  /name 'member

|-- ROP  /name 'rdf
|-- ROP  /name 'term-name
|-- ROP  /name 'type-name
|-- ROP  /name 'unassn
|-- ROP  /name 'equal

|-- ROP  /name 'fix
|-- ROP  /name 'fix-join
|-- ROP  /name 'if
|-- ROP  /name 'unless
|-- ROP  /name 'when
*** 50

|-- ROP  /name 'contents
|-- ROP  /name 'dump-tree
|-- ROP  /name 'size
|-- ROP  /name 'cut
|-- ROP  /name 'cut-term

|-- ROP  /name 'pick
|-- ROP  /name 'pick-term
|-- ROP  /name 'rename
|-- ROP  /name 'move
|-- ROP  /name 'prefix

|-- ROP  /name 'prefix-change
|-- ROP  /name 'unprefix
|-- ROP  /name 'compose
|-- ROP  /name 'join
|-- ROP  /name 'meet

|-- ROP  /name 'none
|-- ROP  /name 'some
|-- ROP  /name 'sub
|-- ROP  /name 'const
|-- ROP  /name 'dee

|-- ROP  /name 'dum
|-- ROP  /name 'empty
|-- ROP  /name 'source
|-- ROP  /name 'source-term
|-- ROP  /name 'append
*** 75

|-- ROP  /name 'id

*** 76 judges

**
**  SUMMARY
**      76 judges on ROP
**      76 judges in total
**
```



## [koshu-rop-basic-table.k](koshu-rop-basic-table.k)

```
** -*- koshu -*-

|== ROP -table -fore /n /group
    : koshu-rop -group /group
                -name  /name
                -usage /usage
    | nest ~ /group -to /rop
    | for /rop ( number-by /name )
    | number-by /group

number-by : number /n  -from 1  -order @'all
```

Command `koshu koshu-rop-basic-table.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    koshu-rop-basic-table.k
**

|-- ROP  /n 1  /group 'builtin  /rop {| /n : /name : /usage | 1 : 'append : "append R ..." | 2 : 'id : 'id |}
|-- ROP  /n 2  /group 'check  /rop {| /n : /name : /usage | 1 : 'check-term : "check-term [-just /N ... | -has /N ... | -but /N ...]" | 2 : 'dump : 'dump | 3 : 'duplicate : "duplicate /N ..." | 4 : 'exclude : "exclude /N ... -from R" |}
|-- ROP  /n 3  /group 'control  /rop {| /n : /name : /usage | 1 : 'equal : 'equal | 2 : 'fix : "fix R" | 3 : 'fix-join : "fix-join R" | 4 : 'if : "if R ..." | 5 : 'unless : "unless R R" | 6 : 'when : "when R R" |}
|-- ROP  /n 4  /group 'cox-calc  /rop {| /n : /name : /usage | 1 : 'add : "add /N E ..." | 2 : 'dump-cox : "dump-cox E" | 3 : 'fill : "fill /P E" | 4 : 'range : "range /N -from E -to E" | 5 : 'replace : "replace /P E" | 6 : 'replace-all : "replace-all -from E -to E" | 7 : 'split : "split /N E ..." | 8 : 'subst : "subst /N E ..." | 9 : 'unary : "unary /N E ..." |}
|-- ROP  /n 5  /group 'cox-empty  /rop {| /n : /name : /usage | 1 : 'both : "both R [-fill E]" | 2 : 'maybe : "maybe R [-fill E]" |}

|-- ROP  /n 6  /group 'cox-filter  /rop {| /n : /name : /usage | 1 : 'contain : "contain E" | 2 : 'keep : "keep E" | 3 : 'omit : "omit E" | 4 : 'omit-all : 'omit-all |}
|-- ROP  /n 7  /group 'cox-gadget  /rop {| /n : /name : /usage | 1 : 'number : "number /N -order /N ..." | 2 : 'rank : "rank /N -order /N ..." | 3 : 'repeat : "repeat N R" |}
|-- ROP  /n 8  /group 'gadget  /rop {| /n : /name : /usage | 1 : 'contents : "contents /N" | 2 : 'dump-tree : "dump-tree X" | 3 : 'size : "size /N" |}
|-- ROP  /n 9  /group 'lattice  /rop {| /n : /name : /usage | 1 : 'compose : "compose R" | 2 : 'join : "join R" | 3 : 'meet : "meet R" | 4 : 'none : "none R" | 5 : 'some : "some R" | 6 : 'sub : "sub R" |}
|-- ROP  /n 10  /group 'meta  /rop {| /n : /name : /usage | 1 : 'koshu-cop : "koshu-cop /N" | 2 : 'koshu-cop-infix : "koshu-cop-infix /N [-height /N][-dir /N]" | 3 : 'koshu-rop : "koshu-rop /N /N" | 4 : 'koshu-version : "koshu-version /N" |}

|-- ROP  /n 11  /group 'nest  /rop {| /n : /name : /usage | 1 : 'chunk : "chunk /T ... [-order /P ...]" | 2 : 'copy : "copy N R" | 3 : 'down : "down /N" | 4 : 'for : "for /N R [-with /N ...]" | 5 : 'group : "group /N R" | 6 : 'group-by : "group-by /N R" | 7 : 'join-up : "join-up /P ..." | 8 : 'nest : "nest [~] /P ... -to /N" | 9 : 'slice : "slice /N [R] [-with /N ...]" | 10 : 'slice-up : "slice-up R [-with /N ...]" | 11 : 'unnest : "unnest /P" | 12 : 'up : "up /N" |}
|-- ROP  /n 12  /group 'peripheral  /rop {| /n : /name : /usage | 1 : 'assn : "assn /P ... -to N" | 2 : 'member : "member /N /N" | 3 : 'rdf : "rdf P /S /O" | 4 : 'term-name : "term-name /N" | 5 : 'type-name : "type-name /N /P ..." | 6 : 'unassn : "unassn /P -only /P ..." |}
|-- ROP  /n 13  /group 'source  /rop {| /n : /name : /usage | 1 : 'const : "const R" | 2 : 'dee : 'dee | 3 : 'dum : 'dum | 4 : 'empty : "empty /N ..." | 5 : 'source : "source P /N ..." | 6 : 'source-term : "source-term P R" |}
|-- ROP  /n 14  /group 'term  /rop {| /n : /name : /usage | 1 : 'cut : "cut /P ..." | 2 : 'cut-term : "cut-term /R" | 3 : 'move : "move /P ... -to /N ..." | 4 : 'pick : "pick /P ..." | 5 : 'pick-term : "pick-term /R" | 6 : 'prefix : "prefix /P /N ..." | 7 : 'prefix-change : "prefix-change /P /Q" | 8 : 'rename : "rename /N /P ..." | 9 : 'unprefix : "unprefix /P" |}

*** 14 judges

**  TABLE : ROP
**
**    /n   /group        /rop
**    ---- ------------- ---------------------------------------------------------------------------------
**    1    'builtin      /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'append            "append R ..."
**                       2    'id                'id
**                       
**    2    'check        /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'check-term        "check-term [-just /N ... | -has /N ... | -but /N ...]"
**                       2    'dump              'dump
**                       3    'duplicate         "duplicate /N ..."
**                       4    'exclude           "exclude /N ... -from R"
**                       
**    3    'control      /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'equal             'equal
**                       2    'fix               "fix R"
**                       3    'fix-join          "fix-join R"
**                       4    'if                "if R ..."
**                       5    'unless            "unless R R"
**                       6    'when              "when R R"
**                       
**    4    'cox-calc     /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'add               "add /N E ..."
**                       2    'dump-cox          "dump-cox E"
**                       3    'fill              "fill /P E"
**                       4    'range             "range /N -from E -to E"
**                       5    'replace           "replace /P E"
**                       6    'replace-all       "replace-all -from E -to E"
**                       7    'split             "split /N E ..."
**                       8    'subst             "subst /N E ..."
**                       9    'unary             "unary /N E ..."
**                       
**    5    'cox-empty    /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'both              "both R [-fill E]"
**                       2    'maybe             "maybe R [-fill E]"
**                       
**    6    'cox-filter   /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'contain           "contain E"
**                       2    'keep              "keep E"
**                       3    'omit              "omit E"
**                       4    'omit-all          'omit-all
**                       
**    7    'cox-gadget   /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'number            "number /N -order /N ..."
**                       2    'rank              "rank /N -order /N ..."
**                       3    'repeat            "repeat N R"
**                       
**    8    'gadget       /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'contents          "contents /N"
**                       2    'dump-tree         "dump-tree X"
**                       3    'size              "size /N"
**                       
**    9    'lattice      /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'compose           "compose R"
**                       2    'join              "join R"
**                       3    'meet              "meet R"
**                       4    'none              "none R"
**                       5    'some              "some R"
**                       6    'sub               "sub R"
**                       
**    10   'meta         /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'koshu-cop         "koshu-cop /N"
**                       2    'koshu-cop-infix   "koshu-cop-infix /N [-height /N][-dir /N]"
**                       3    'koshu-rop         "koshu-rop /N /N"
**                       4    'koshu-version     "koshu-version /N"
**                       
**    11   'nest         /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'chunk             "chunk /T ... [-order /P ...]"
**                       2    'copy              "copy N R"
**                       3    'down              "down /N"
**                       4    'for               "for /N R [-with /N ...]"
**                       5    'group             "group /N R"
**                       6    'group-by          "group-by /N R"
**                       7    'join-up           "join-up /P ..."
**                       8    'nest              "nest [~] /P ... -to /N"
**                       9    'slice             "slice /N [R] [-with /N ...]"
**                       10   'slice-up          "slice-up R [-with /N ...]"
**                       11   'unnest            "unnest /P"
**                       12   'up                "up /N"
**                       
**    12   'peripheral   /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'assn              "assn /P ... -to N"
**                       2    'member            "member /N /N"
**                       3    'rdf               "rdf P /S /O"
**                       4    'term-name         "term-name /N"
**                       5    'type-name         "type-name /N /P ..."
**                       6    'unassn            "unassn /P -only /P ..."
**                       
**    13   'source       /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'const             "const R"
**                       2    'dee               'dee
**                       3    'dum               'dum
**                       4    'empty             "empty /N ..."
**                       5    'source            "source P /N ..."
**                       6    'source-term       "source-term P R"
**                       
**    14   'term         /n   /name              /usage
**                       ---- ------------------ ---------------------------------------------------------
**                       1    'cut               "cut /P ..."
**                       2    'cut-term          "cut-term /R"
**                       3    'move              "move /P ... -to /N ..."
**                       4    'pick              "pick /P ..."
**                       5    'pick-term         "pick-term /R"
**                       6    'prefix            "prefix /P /N ..."
**                       7    'prefix-change     "prefix-change /P /Q"
**                       8    'rename            "rename /N /P ..."
**                       9    'unprefix          "unprefix /P"
**                       

**
**  SUMMARY
**      14 judges on ROP
**      14 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
