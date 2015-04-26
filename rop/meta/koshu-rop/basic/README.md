# I/O List

- koshu [koshu-rop-basic-name.k](#koshu-rop-basic-namek)
- koshu [koshu-rop-basic-table.k](#koshu-rop-basic-tablek)



## [koshu-rop-basic-name.k](koshu-rop-basic-name.k)

```
-*- koshu -*-

|== ROP : koshu-rop /name
```

Command `koshu koshu-rop-basic-name.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    koshu-rop-basic-name.k
**
**  OUTPUT
**    <stdout>
**

|-- ROP  /name 'clock
|-- ROP  /name 'clock-get
|-- ROP  /name 'clock-alter
|-- ROP  /name 'add
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
|-- ROP  /name 'const
|-- ROP  /name 'interp
|-- ROP  /name 'number

|-- ROP  /name 'rank
|-- ROP  /name 'repeat
|-- ROP  /name 'range
|-- ROP  /name 'range-year
|-- ROP  /name 'range-month
*** 25

|-- ROP  /name 'range-day
|-- ROP  /name 'range-hour
|-- ROP  /name 'range-minute
|-- ROP  /name 'range-second
|-- ROP  /name 'koshu-angle-text

|-- ROP  /name 'koshu-cop
|-- ROP  /name 'koshu-cop-infix
|-- ROP  /name 'koshu-source
|-- ROP  /name 'koshu-rop
|-- ROP  /name 'koshu-proxy

|-- ROP  /name 'koshu-version
|-- ROP  /name 'koshu-res-article
|-- ROP  /name 'koshu-res-rop
|-- ROP  /name 'koshu-res-sink
|-- ROP  /name 'koshu-res-source

|-- ROP  /name 'koshu-res-sink-source
|-- ROP  /name 'chunk
|-- ROP  /name 'copy
|-- ROP  /name 'down
|-- ROP  /name 'for

|-- ROP  /name 'group
|-- ROP  /name 'group-by
|-- ROP  /name 'hang
|-- ROP  /name 'join-up
|-- ROP  /name 'nest
*** 50

|-- ROP  /name 'unnest
|-- ROP  /name 'slice
|-- ROP  /name 'slice-up
|-- ROP  /name 'up
|-- ROP  /name 'check-term

|-- ROP  /name 'dump
|-- ROP  /name 'duplicate
|-- ROP  /name 'exclude
|-- ROP  /name 'assn
|-- ROP  /name 'index-elem

|-- ROP  /name 'member
|-- ROP  /name 'rdf
|-- ROP  /name 'term-name
|-- ROP  /name 'today
|-- ROP  /name 'unassn

|-- ROP  /name 'uncollect
|-- ROP  /name 'equal
|-- ROP  /name 'fix
|-- ROP  /name 'fix-join
|-- ROP  /name 'if

|-- ROP  /name 'unless
|-- ROP  /name 'when
|-- ROP  /name 'contents
|-- ROP  /name 'dump-tree
|-- ROP  /name 'dependent-rank
*** 75

|-- ROP  /name 'size
|-- ROP  /name 'backward
|-- ROP  /name 'cut
|-- ROP  /name 'cut-term
|-- ROP  /name 'forward

|-- ROP  /name 'pick
|-- ROP  /name 'pick-term
|-- ROP  /name 'rename
|-- ROP  /name 'move
|-- ROP  /name 'prefix

|-- ROP  /name 'prefix-change
|-- ROP  /name 'unprefix
|-- ROP  /name 'wipe
|-- ROP  /name 'compose
|-- ROP  /name 'join

|-- ROP  /name 'meet
|-- ROP  /name 'none
|-- ROP  /name 'none-meet
|-- ROP  /name 'some
|-- ROP  /name 'some-meet

|-- ROP  /name 'sub
|-- ROP  /name 'dee
|-- ROP  /name 'dum
|-- ROP  /name 'empty
|-- ROP  /name 'source
*** 100

|-- ROP  /name 'source-term
|-- ROP  /name 'append
|-- ROP  /name 'id

*** 103 judges

**
**  SUMMARY
**     103 judges on ROP
**     103 judges in total
**
```



## [koshu-rop-basic-table.k](koshu-rop-basic-table.k)

```
-*- koshu -*-

|== ROP
  : koshu-rop -group /group
              -name  /name
              -usage /usage
  | nest ~ /group -to /rop
  | for /rop ( number-by /name )
  | number-by /group
  --table --forward /n /group

number-by : number /n  -from 1  -order @'all
```

Command `koshu koshu-rop-basic-table.k` produces:

```
** -*- koshu -*-
**
**  INPUT
**    koshu-rop-basic-table.k
**
**  OUTPUT
**    <stdout>
**

|-- ROP  /n 1  /group 'builtin  /rop {| /n /name /usage [ 1 | 'append | "append R ..." ] [ 2 | 'id | 'id ] |}
|-- ROP  /n 2  /group 'check  /rop {| /n /name /usage [ 1 | 'check-term | "check-term [-just /N ... | -has /N ... | -but /N ...]" ] [ 2 | 'dump | 'dump ] [ 3 | 'duplicate | "duplicate /N ..." ] [ 4 | 'exclude | "exclude /N ... -from R" ] |}
|-- ROP  /n 3  /group 'control  /rop {| /n /name /usage [ 1 | 'equal | 'equal ] [ 2 | 'fix | "fix R" ] [ 3 | 'fix-join | "fix-join R" ] [ 4 | 'if | "if R ..." ] [ 5 | 'unless | "unless R R" ] [ 6 | 'when | "when R R" ] |}
|-- ROP  /n 4  /group 'cox-accessor  /rop {| /n /name /usage [ 1 | 'clock | "clock /N -PROP E ..." ] [ 2 | 'clock-alter | "clock-alter /P -PROP E ..." ] [ 3 | 'clock-get | "clock-get E -PROP /N ..." ] |}
|-- ROP  /n 5  /group 'cox-calc  /rop {| /n /name /usage [ 1 | 'add | "add /N E ..." ] [ 2 | 'dump-cox | "dump-cox E" ] [ 3 | 'fill | "fill /P E" ] [ 4 | 'range | "range /N -from E -to E" ] [ 5 | 'range-day | "range-day /N -from /P to /P" ] [ 6 | 'range-hour | "range-hour /N -from /P to /P" ] [ 7 | 'range-minute | "range-minute /N -from /P to /P" ] [ 8 | 'range-month | "range-month /N -from /P to /P" ] [ 9 | 'range-second | "range-second /N -from /P to /P" ] [ 10 | 'range-year | "range-year /N -from /P to /P" ] [ 11 | 'replace | "replace /P E" ] [ 12 | 'replace-all | "replace-all -from E -to E" ] [ 13 | 'split | "split /N E ..." ] [ 14 | 'subst | "subst /N E ..." ] [ 15 | 'unary | "unary /N E ..." ] |}

|-- ROP  /n 6  /group 'cox-empty  /rop {| /n /name /usage [ 1 | 'both | "both R [-fill E]" ] [ 2 | 'maybe | "maybe R [-fill E]" ] |}
|-- ROP  /n 7  /group 'cox-filter  /rop {| /n /name /usage [ 1 | 'contain | "contain E" ] [ 2 | 'keep | "keep E" ] [ 3 | 'omit | "omit E" ] [ 4 | 'omit-all | 'omit-all ] |}
|-- ROP  /n 8  /group 'cox-gadget  /rop {| /n /name /usage [ 1 | 'const | "const R" ] [ 2 | 'interp | "interp E" ] [ 3 | 'number | "number /N -order /N ..." ] [ 4 | 'rank | "rank /N -order /N ..." ] [ 5 | 'repeat | "repeat N R" ] |}
|-- ROP  /n 9  /group 'gadget  /rop {| /n /name /usage [ 1 | 'contents | "contents /N" ] [ 2 | 'dependent-rank | "dependent-rank /P /P -rank /N" ] [ 3 | 'dump-tree | "dump-tree X" ] [ 4 | 'size | "size /N" ] |}
|-- ROP  /n 10  /group 'lattice  /rop {| /n /name /usage [ 1 | 'compose | "compose R" ] [ 2 | 'join | "join R" ] [ 3 | 'meet | "meet R" ] [ 4 | 'none | "none R" ] [ 5 | 'none-meet | "none-meet R" ] [ 6 | 'some | "some R" ] [ 7 | 'some-meet | "some-meet R" ] [ 8 | 'sub | "sub R" ] |}

|-- ROP  /n 11  /group 'meta  /rop {| /n /name /usage [ 1 | 'koshu-angle-text | "koshu-angle-text /N [/N]" ] [ 2 | 'koshu-cop | "koshu-cop /N" ] [ 3 | 'koshu-cop-infix | "koshu-cop-infix /N [-height /N][-dir /N]" ] [ 4 | 'koshu-proxy | "koshu-proxy /N /N" ] [ 5 | 'koshu-rop | "koshu-rop /N /N" ] [ 6 | 'koshu-source | "koshu-source /N [-name /N][-type /N]" ] [ 7 | 'koshu-version | "koshu-version /N" ] |}
|-- ROP  /n 12  /group 'nest  /rop {| /n /name /usage [ 1 | 'chunk | "chunk /T ... [-order /P ...]" ] [ 2 | 'copy | "copy N R" ] [ 3 | 'down | "down /N" ] [ 4 | 'for | "for /N R" ] [ 5 | 'group | "group /N R" ] [ 6 | 'group-by | "group-by /N R" ] [ 7 | 'hang | "hang /N -on /P ..." ] [ 8 | 'join-up | "join-up /P ..." ] [ 9 | 'nest | "nest [~] /P ... -to /N" ] [ 10 | 'slice | "slice /N [R]" ] [ 11 | 'slice-up | "slice-up R" ] [ 12 | 'unnest | "unnest /P" ] [ 13 | 'up | "up /N" ] |}
|-- ROP  /n 13  /group 'peripheral  /rop {| /n /name /usage [ 1 | 'assn | "assn /P ... -to N" ] [ 2 | 'index-elem | "index-elem /N /N /P" ] [ 3 | 'member | "member /N /N" ] [ 4 | 'rdf | "rdf P /S /O" ] [ 5 | 'term-name | "term-name /N" ] [ 6 | 'today | "today /N" ] [ 7 | 'unassn | "unassn /P -only /P ..." ] [ 8 | 'uncollect | "uncollect /P -to /N ..." ] |}
|-- ROP  /n 14  /group 'resource  /rop {| /n /name /usage [ 1 | 'koshu-res-article | "koshu-res-article /N" ] [ 2 | 'koshu-res-rop | "koshu-res-rop /N /N" ] [ 3 | 'koshu-res-sink | "koshu-res-sink /N /N" ] [ 4 | 'koshu-res-sink-source | "koshu-res-sink-source /N /N" ] [ 5 | 'koshu-res-source | "koshu-res-source /N" ] |}
|-- ROP  /n 15  /group 'source  /rop {| /n /name /usage [ 1 | 'dee | 'dee ] [ 2 | 'dum | 'dum ] [ 3 | 'empty | "empty /N ..." ] [ 4 | 'source | "source P /N ..." ] [ 5 | 'source-term | "source-term P R" ] |}

|-- ROP  /n 16  /group 'term  /rop {| /n /name /usage [ 1 | 'backward | "backward /P ..." ] [ 2 | 'cut | "cut /P ..." ] [ 3 | 'cut-term | "cut-term /R" ] [ 4 | 'forward | "forward /P ..." ] [ 5 | 'move | "move /P ... -to /N ..." ] [ 6 | 'pick | "pick /P ..." ] [ 7 | 'pick-term | "pick-term /R" ] [ 8 | 'prefix | "prefix /P /N ..." ] [ 9 | 'prefix-change | "prefix-change /P /Q" ] [ 10 | 'rename | "rename /N /P ..." ] [ 11 | 'unprefix | "unprefix /P" ] [ 12 | 'wipe | 'wipe ] |}

*** 16 judges

=== note

TABLE : ROP

  /n   /group          /rop
  ---- --------------- ---------------------------------------------------------------------------------------
  1    'builtin        /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'append                  "append R ..."
                       2    'id                      'id
                       
  2    'check          /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'check-term              "check-term [-just /N ... | -has /N ... | -but /N ...]"
                       2    'dump                    'dump
                       3    'duplicate               "duplicate /N ..."
                       4    'exclude                 "exclude /N ... -from R"
                       
  3    'control        /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'equal                   'equal
                       2    'fix                     "fix R"
                       3    'fix-join                "fix-join R"
                       4    'if                      "if R ..."
                       5    'unless                  "unless R R"
                       6    'when                    "when R R"
                       
  4    'cox-accessor   /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'clock                   "clock /N -PROP E ..."
                       2    'clock-alter             "clock-alter /P -PROP E ..."
                       3    'clock-get               "clock-get E -PROP /N ..."
                       
  5    'cox-calc       /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'add                     "add /N E ..."
                       2    'dump-cox                "dump-cox E"
                       3    'fill                    "fill /P E"
                       4    'range                   "range /N -from E -to E"
                       5    'range-day               "range-day /N -from /P to /P"
                       6    'range-hour              "range-hour /N -from /P to /P"
                       7    'range-minute            "range-minute /N -from /P to /P"
                       8    'range-month             "range-month /N -from /P to /P"
                       9    'range-second            "range-second /N -from /P to /P"
                       10   'range-year              "range-year /N -from /P to /P"
                       11   'replace                 "replace /P E"
                       12   'replace-all             "replace-all -from E -to E"
                       13   'split                   "split /N E ..."
                       14   'subst                   "subst /N E ..."
                       15   'unary                   "unary /N E ..."
                       
  6    'cox-empty      /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'both                    "both R [-fill E]"
                       2    'maybe                   "maybe R [-fill E]"
                       
  7    'cox-filter     /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'contain                 "contain E"
                       2    'keep                    "keep E"
                       3    'omit                    "omit E"
                       4    'omit-all                'omit-all
                       
  8    'cox-gadget     /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'const                   "const R"
                       2    'interp                  "interp E"
                       3    'number                  "number /N -order /N ..."
                       4    'rank                    "rank /N -order /N ..."
                       5    'repeat                  "repeat N R"
                       
  9    'gadget         /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'contents                "contents /N"
                       2    'dependent-rank          "dependent-rank /P /P -rank /N"
                       3    'dump-tree               "dump-tree X"
                       4    'size                    "size /N"
                       
  10   'lattice        /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'compose                 "compose R"
                       2    'join                    "join R"
                       3    'meet                    "meet R"
                       4    'none                    "none R"
                       5    'none-meet               "none-meet R"
                       6    'some                    "some R"
                       7    'some-meet               "some-meet R"
                       8    'sub                     "sub R"
                       
  11   'meta           /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'koshu-angle-text        "koshu-angle-text /N [/N]"
                       2    'koshu-cop               "koshu-cop /N"
                       3    'koshu-cop-infix         "koshu-cop-infix /N [-height /N][-dir /N]"
                       4    'koshu-proxy             "koshu-proxy /N /N"
                       5    'koshu-rop               "koshu-rop /N /N"
                       6    'koshu-source            "koshu-source /N [-name /N][-type /N]"
                       7    'koshu-version           "koshu-version /N"
                       
  12   'nest           /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'chunk                   "chunk /T ... [-order /P ...]"
                       2    'copy                    "copy N R"
                       3    'down                    "down /N"
                       4    'for                     "for /N R"
                       5    'group                   "group /N R"
                       6    'group-by                "group-by /N R"
                       7    'hang                    "hang /N -on /P ..."
                       8    'join-up                 "join-up /P ..."
                       9    'nest                    "nest [~] /P ... -to /N"
                       10   'slice                   "slice /N [R]"
                       11   'slice-up                "slice-up R"
                       12   'unnest                  "unnest /P"
                       13   'up                      "up /N"
                       
  13   'peripheral     /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'assn                    "assn /P ... -to N"
                       2    'index-elem              "index-elem /N /N /P"
                       3    'member                  "member /N /N"
                       4    'rdf                     "rdf P /S /O"
                       5    'term-name               "term-name /N"
                       6    'today                   "today /N"
                       7    'unassn                  "unassn /P -only /P ..."
                       8    'uncollect               "uncollect /P -to /N ..."
                       
  14   'resource       /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'koshu-res-article       "koshu-res-article /N"
                       2    'koshu-res-rop           "koshu-res-rop /N /N"
                       3    'koshu-res-sink          "koshu-res-sink /N /N"
                       4    'koshu-res-sink-source   "koshu-res-sink-source /N /N"
                       5    'koshu-res-source        "koshu-res-source /N"
                       
  15   'source         /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'dee                     'dee
                       2    'dum                     'dum
                       3    'empty                   "empty /N ..."
                       4    'source                  "source P /N ..."
                       5    'source-term             "source-term P R"
                       
  16   'term           /n   /name                    /usage
                       ---- ------------------------ ---------------------------------------------------------
                       1    'backward                "backward /P ..."
                       2    'cut                     "cut /P ..."
                       3    'cut-term                "cut-term /R"
                       4    'forward                 "forward /P ..."
                       5    'move                    "move /P ... -to /N ..."
                       6    'pick                    "pick /P ..."
                       7    'pick-term               "pick-term /R"
                       8    'prefix                  "prefix /P /N ..."
                       9    'prefix-change           "prefix-change /P /Q"
                       10   'rename                  "rename /N /P ..."
                       11   'unprefix                "unprefix /P"
                       12   'wipe                    'wipe
                       

=== rel

**
**  SUMMARY
**      16 judges on ROP
**      16 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
