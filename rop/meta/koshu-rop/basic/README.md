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

|-- ROP  /name "clock"
|-- ROP  /name "clock-get"
|-- ROP  /name "clock-alter"
|-- ROP  /name "add"
|-- ROP  /name "subst"

|-- ROP  /name "alt"
|-- ROP  /name "fill"
|-- ROP  /name "replace"
|-- ROP  /name "replace-all"
|-- ROP  /name "split"

|-- ROP  /name "unary"
|-- ROP  /name "dump-cox"
|-- ROP  /name "both"
|-- ROP  /name "compose-maybe"
|-- ROP  /name "maybe"

|-- ROP  /name "contain"
|-- ROP  /name "keep"
|-- ROP  /name "omit"
|-- ROP  /name "omit-all"
|-- ROP  /name "const"

|-- ROP  /name "geo-datum-jp"
|-- ROP  /name "geo-degree"
|-- ROP  /name "interp"
|-- ROP  /name "number"
|-- ROP  /name "rank"
*** 25

|-- ROP  /name "repeat"
|-- ROP  /name "range"
|-- ROP  /name "range-year"
|-- ROP  /name "range-month"
|-- ROP  /name "range-day"

|-- ROP  /name "range-hour"
|-- ROP  /name "range-minute"
|-- ROP  /name "range-second"
|-- ROP  /name "koshu-angle-text"
|-- ROP  /name "koshu-cop"

|-- ROP  /name "koshu-cop-infix"
|-- ROP  /name "koshu-source"
|-- ROP  /name "koshu-rop"
|-- ROP  /name "koshu-proxy"
|-- ROP  /name "koshu-version"

|-- ROP  /name "koshu-res-article"
|-- ROP  /name "koshu-res-rop"
|-- ROP  /name "koshu-res-sink"
|-- ROP  /name "koshu-res-source"
|-- ROP  /name "koshu-res-sink-source"

|-- ROP  /name "check-term"
|-- ROP  /name "dump"
|-- ROP  /name "duplicate"
|-- ROP  /name "exclude"
|-- ROP  /name "now"
*** 50

|-- ROP  /name "rdf"
|-- ROP  /name "term-name"
|-- ROP  /name "tie"
|-- ROP  /name "today"
|-- ROP  /name "untie"

|-- ROP  /name "elem"
|-- ROP  /name "elem-begin"
|-- ROP  /name "elem-end"
|-- ROP  /name "ix-elem"
|-- ROP  /name "iz-elem"

|-- ROP  /name "member"
|-- ROP  /name "uncollect"
|-- ROP  /name "unroll"
|-- ROP  /name "equal"
|-- ROP  /name "fix"

|-- ROP  /name "fix-join"
|-- ROP  /name "if"
|-- ROP  /name "unless"
|-- ROP  /name "when"
|-- ROP  /name "contents"

|-- ROP  /name "dump-tree"
|-- ROP  /name "eqlize"
|-- ROP  /name "partial-order-depth"
|-- ROP  /name "partial-order-height"
|-- ROP  /name "visit-distance"
*** 75

|-- ROP  /name "size"
|-- ROP  /name "subtext"
|-- ROP  /name "bw"
|-- ROP  /name "backward"
|-- ROP  /name "fw"

|-- ROP  /name "forward"
|-- ROP  /name "lexical"
|-- ROP  /name "order"
|-- ROP  /name "cut"
|-- ROP  /name "cut-term"

|-- ROP  /name "pick"
|-- ROP  /name "pick-term"
|-- ROP  /name "rename"
|-- ROP  /name "move"
|-- ROP  /name "prefix"

|-- ROP  /name "prefix-change"
|-- ROP  /name "unprefix"
|-- ROP  /name "wipe"
|-- ROP  /name "compose"
|-- ROP  /name "join"

|-- ROP  /name "meet"
|-- ROP  /name "none"
|-- ROP  /name "none-meet"
|-- ROP  /name "some"
|-- ROP  /name "some-meet"
*** 100

|-- ROP  /name "sub"
|-- ROP  /name "dee"
|-- ROP  /name "dum"
|-- ROP  /name "empty"
|-- ROP  /name "source"

|-- ROP  /name "source-term"
|-- ROP  /name "append"
|-- ROP  /name "id"
|-- ROP  /name "chunk"
|-- ROP  /name "copy"

|-- ROP  /name "down"
|-- ROP  /name "for"
|-- ROP  /name "group"
|-- ROP  /name "join-up"
|-- ROP  /name "nest"

|-- ROP  /name "opp-group"
|-- ROP  /name "hier"
|-- ROP  /name "sg"
|-- ROP  /name "self-group"
|-- ROP  /name "slice"

|-- ROP  /name "slice-up"
|-- ROP  /name "ungroup"
|-- ROP  /name "up"

*** 123 judges

**
**  SUMMARY
**     123 judges on ROP
**     123 judges in total
**
```



## [koshu-rop-basic-table.k](koshu-rop-basic-table.k)

```
-*- koshu -*-

|== ROP
  : koshu-rop /name -group /group -usage /usage
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

|-- ROP  /n 1  /group "builtin"  /rop {= /n /name /usage [ 1 | "append" | "append R R" ] [ 2 | "id" | "id" ] =}
|-- ROP  /n 2  /group "check"  /rop {= /n /name /usage [ 1 | "check-term" |
    "check-term [-just /N ... | -has /N ... | -but /N ...]" ] [ 2 | "dump" | "dump" ] [ 3 | "duplicate" |
    "duplicate /N ..." ] [ 4 | "exclude" | "exclude /N ... -from R" ] =}
|-- ROP  /n 3  /group "control"  /rop {= /n /name /usage [ 1 | "equal" | "equal" ] [ 2 | "fix" | "fix R" ] [ 3 |
    "fix-join" | "fix-join R" ] [ 4 | "if" | "if T A B" ] [ 5 | "unless" | "unless T B" ] [ 6 | "when" | "when T A" ] =}
|-- ROP  /n 4  /group "cox-accessor"  /rop {= /n /name /usage [ 1 | "clock" | "clock /N -PROP E ..." ] [ 2 |
    "clock-alter" | "clock-alter /P -PROP E ..." ] [ 3 | "clock-get" | "clock-get E -PROP /N ..." ] =}
|-- ROP  /n 5  /group "cox-calc"  /rop {= /n /name /usage [ 1 | "add" | "add /N E ..." ] [ 2 | "alt" | "alt /N E ..." ]
    [ 3 | "dump-cox" | "dump-cox E" ] [ 4 | "fill" | "fill /P ... -with E" ] [ 5 | "range" | "range /N -from E -to E" ]
    [ 6 | "range-day" | "range-day /N -from /P to /P" ] [ 7 | "range-hour" | "range-hour /N -from /P to /P" ] [ 8 |
    "range-minute" | "range-minute /N -from /P to /P" ] [ 9 | "range-month" | "range-month /N -from /P to /P" ] [ 10 |
    "range-second" | "range-second /N -from /P to /P" ] [ 11 | "range-year" | "range-year /N -from /P to /P" ] [ 12 |
    "replace" | "replace /P ... -by F" ] [ 13 | "replace-all" | "replace-all -from E -to E" ] [ 14 | "split" |
    "split /N E ..." ] [ 15 | "subst" | "alt /N E ..." ] [ 16 | "unary" | "unary /N E ..." ] =}

|-- ROP  /n 6  /group "cox-empty"  /rop {= /n /name /usage [ 1 | "both" | "both R [-share /P ... -fill E]" ] [ 2 |
    "compose-maybe" | "compose-maybe R [-share /P ... -fill E]" ] [ 3 | "maybe" | "maybe R [-share /P ... -fill E]" ] =}
|-- ROP  /n 7  /group "cox-filter"  /rop {= /n /name /usage [ 1 | "contain" | "contain E" ] [ 2 | "keep" | "keep E" ] [
    3 | "omit" | "omit E" ] [ 4 | "omit-all" | "omit-all" ] =}
|-- ROP  /n 8  /group "cox-gadget"  /rop {= /n /name /usage [ 1 | "const" | "const R" ] [ 2 | "geo-datum-jp" |
    "geo-datum-jp E E E -to /N /N" ] [ 3 | "geo-degree" | "geo-degree /N /P /P /P" ] [ 4 | "interp" | "interp E" ] [ 5 |
    "number" | "number /N -order /P ..." ] [ 6 | "rank" | "rank /N -order /P ..." ] [ 7 | "repeat" | "repeat I R" ] =}
|-- ROP  /n 9  /group "elem"  /rop {= /n /name /usage [ 1 | "elem" | "elem /P -to /N" ] [ 2 | "elem-begin" |
    "elem-begin /P -to /N ..." ] [ 3 | "elem-end" | "elem-end /P -to /N ..." ] [ 4 | "ix-elem" | "ix-elem /P -to /N /N"
    ] [ 5 | "iz-elem" | "iz-elem /P -to /N /N" ] [ 6 | "member" | "member /N /N" ] [ 7 | "uncollect" |
    "uncollect /P -to /N ..." ] [ 8 | "unroll" | "unroll /N /N -from /P ..." ] =}
|-- ROP  /n 10  /group "gadget"  /rop {= /n /name /usage [ 1 | "contents" | "contents /N" ] [ 2 | "dump-tree" |
    "dump-tree X" ] [ 3 | "eqlize" | "eqlize" ] [ 4 | "partial-order-depth" | "partial-order-depth /P /P -to /N /N" ] [
    5 | "partial-order-height" | "partial-order-height /P /P -to /N /N" ] [ 6 | "size" | "size /N" ] [ 7 | "subtext" |
    "subtext /N E" ] [ 8 | "visit-distance" | "visit-distance R -step /P ... -to /N -distance /N" ] =}

|-- ROP  /n 11  /group "lattice"  /rop {= /n /name /usage [ 1 | "compose" | "compose R [-share /P ...]" ] [ 2 | "join" |
    "join R [-share /P ...]" ] [ 3 | "meet" | "meet R [-share /P ...]" ] [ 4 | "none" | "none R" ] [ 5 | "none-meet" |
    "none-meet R [-share /P ...]" ] [ 6 | "some" | "some R" ] [ 7 | "some-meet" | "some-meet R [-share /P ...]" ] [ 8 |
    "sub" | "sub R [-share /P ...]" ] =}
|-- ROP  /n 12  /group "meta"  /rop {= /n /name /usage [ 1 | "koshu-angle-text" | "koshu-angle-text /N [/N]" ] [ 2 |
    "koshu-cop" | "koshu-cop /N" ] [ 3 | "koshu-cop-infix" | "koshu-cop-infix /N [-height /N][-dir /N]" ] [ 4 |
    "koshu-proxy" | "koshu-proxy /N /N" ] [ 5 | "koshu-rop" | "koshu-rop /N" ] [ 6 | "koshu-source" |
    "koshu-source /N [-name /N][-type /N]" ] [ 7 | "koshu-version" | "koshu-version /N" ] =}
|-- ROP  /n 13  /group "nest"  /rop {= /n /name /usage [ 1 | "chunk" | "chunk /T ... [-order /P ...]" ] [ 2 | "copy" |
    "copy N R" ] [ 3 | "down" | "down /N" ] [ 4 | "for" | "for /N R" ] [ 5 | "group" | "group R -to /N [-share /P ...]"
    ] [ 6 | "hier" | "self-group /P ... -to /N" ] [ 7 | "join-up" | "join-up /P ..." ] [ 8 | "nest" |
    "nest [~] /P ... -to /N" ] [ 9 | "opp-group" | "opp-group R -to /N [-share /P ...]" ] [ 10 | "self-group" |
    "self-group /P ... -to /N" ] [ 11 | "sg" | "self-group /P ... -to /N" ] [ 12 | "slice" | "slice /N [R]" ] [ 13 |
    "slice-up" | "slice-up R" ] [ 14 | "ungroup" | "ungroup /P" ] [ 15 | "up" | "up /N" ] =}
|-- ROP  /n 14  /group "order"  /rop {= /n /name /usage [ 1 | "backward" | "backward /P ..." ] [ 2 | "bw" |
    "backward /P ..." ] [ 3 | "forward" | "forward /P ..." ] [ 4 | "fw" | "forward /P ..." ] [ 5 | "lexical" | "lexical"
    ] [ 6 | "order" | "order /P ..." ] =}
|-- ROP  /n 15  /group "peripheral"  /rop {= /n /name /usage [ 1 | "now" | "now /N" ] [ 2 | "rdf" | "rdf P /S /O" ] [ 3
    | "term-name" | "term-name /N" ] [ 4 | "tie" | "tie /P ... -to N" ] [ 5 | "today" | "today /N" ] [ 6 | "untie" |
    "untie /P -only /P ..." ] =}

|-- ROP  /n 16  /group "resource"  /rop {= /n /name /usage [ 1 | "koshu-res-article" | "koshu-res-article /N" ] [ 2 |
    "koshu-res-rop" | "koshu-res-rop /N /N" ] [ 3 | "koshu-res-sink" | "koshu-res-sink /N /N" ] [ 4 |
    "koshu-res-sink-source" | "koshu-res-sink-source /N /N" ] [ 5 | "koshu-res-source" | "koshu-res-source /N" ] =}
|-- ROP  /n 17  /group "source"  /rop {= /n /name /usage [ 1 | "dee" | "dee" ] [ 2 | "dum" | "dum" ] [ 3 | "empty" |
    "empty /N ..." ] [ 4 | "source" | "source P /N ..." ] [ 5 | "source-term" | "source-term P R" ] =}
|-- ROP  /n 18  /group "term"  /rop {= /n /name /usage [ 1 | "cut" | "cut /P ..." ] [ 2 | "cut-term" | "cut-term /R" ] [
    3 | "move" | "move /P ... -to /N ..." ] [ 4 | "pick" | "pick /P ..." ] [ 5 | "pick-term" | "pick-term /R" ] [ 6 |
    "prefix" | "prefix /N -to /P ..." ] [ 7 | "prefix-change" | "prefix-change /P /Q" ] [ 8 | "rename" |
    "rename /N /P ..." ] [ 9 | "unprefix" | "unprefix /P" ] [ 10 | "wipe" | "wipe" ] =}

*** 18 judges

=== note

TABLE : ROP

  /n   /group           /rop
  ---- ---------------- ----------------------------------------------------------------------------------------
  1    "builtin"        /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "append"                  "append R R"
                        2    "id"                      "id"
                        
  2    "check"          /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "check-term"              "check-term [-just /N ... | -has /N ... | -but /N ...]"
                        2    "dump"                    "dump"
                        3    "duplicate"               "duplicate /N ..."
                        4    "exclude"                 "exclude /N ... -from R"
                        
  3    "control"        /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "equal"                   "equal"
                        2    "fix"                     "fix R"
                        3    "fix-join"                "fix-join R"
                        4    "if"                      "if T A B"
                        5    "unless"                  "unless T B"
                        6    "when"                    "when T A"
                        
  4    "cox-accessor"   /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "clock"                   "clock /N -PROP E ..."
                        2    "clock-alter"             "clock-alter /P -PROP E ..."
                        3    "clock-get"               "clock-get E -PROP /N ..."
                        
  5    "cox-calc"       /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "add"                     "add /N E ..."
                        2    "alt"                     "alt /N E ..."
                        3    "dump-cox"                "dump-cox E"
                        4    "fill"                    "fill /P ... -with E"
                        5    "range"                   "range /N -from E -to E"
                        6    "range-day"               "range-day /N -from /P to /P"
                        7    "range-hour"              "range-hour /N -from /P to /P"
                        8    "range-minute"            "range-minute /N -from /P to /P"
                        9    "range-month"             "range-month /N -from /P to /P"
                        10   "range-second"            "range-second /N -from /P to /P"
                        11   "range-year"              "range-year /N -from /P to /P"
                        12   "replace"                 "replace /P ... -by F"
                        13   "replace-all"             "replace-all -from E -to E"
                        14   "split"                   "split /N E ..."
                        15   "subst"                   "alt /N E ..."
                        16   "unary"                   "unary /N E ..."
                        
  6    "cox-empty"      /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "both"                    "both R [-share /P ... -fill E]"
                        2    "compose-maybe"           "compose-maybe R [-share /P ... -fill E]"
                        3    "maybe"                   "maybe R [-share /P ... -fill E]"
                        
  7    "cox-filter"     /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "contain"                 "contain E"
                        2    "keep"                    "keep E"
                        3    "omit"                    "omit E"
                        4    "omit-all"                "omit-all"
                        
  8    "cox-gadget"     /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "const"                   "const R"
                        2    "geo-datum-jp"            "geo-datum-jp E E E -to /N /N"
                        3    "geo-degree"              "geo-degree /N /P /P /P"
                        4    "interp"                  "interp E"
                        5    "number"                  "number /N -order /P ..."
                        6    "rank"                    "rank /N -order /P ..."
                        7    "repeat"                  "repeat I R"
                        
  9    "elem"           /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "elem"                    "elem /P -to /N"
                        2    "elem-begin"              "elem-begin /P -to /N ..."
                        3    "elem-end"                "elem-end /P -to /N ..."
                        4    "ix-elem"                 "ix-elem /P -to /N /N"
                        5    "iz-elem"                 "iz-elem /P -to /N /N"
                        6    "member"                  "member /N /N"
                        7    "uncollect"               "uncollect /P -to /N ..."
                        8    "unroll"                  "unroll /N /N -from /P ..."
                        
  10   "gadget"         /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "contents"                "contents /N"
                        2    "dump-tree"               "dump-tree X"
                        3    "eqlize"                  "eqlize"
                        4    "partial-order-depth"     "partial-order-depth /P /P -to /N /N"
                        5    "partial-order-height"    "partial-order-height /P /P -to /N /N"
                        6    "size"                    "size /N"
                        7    "subtext"                 "subtext /N E"
                        8    "visit-distance"          "visit-distance R -step /P ... -to /N -distance /N"
                        
  11   "lattice"        /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "compose"                 "compose R [-share /P ...]"
                        2    "join"                    "join R [-share /P ...]"
                        3    "meet"                    "meet R [-share /P ...]"
                        4    "none"                    "none R"
                        5    "none-meet"               "none-meet R [-share /P ...]"
                        6    "some"                    "some R"
                        7    "some-meet"               "some-meet R [-share /P ...]"
                        8    "sub"                     "sub R [-share /P ...]"
                        
  12   "meta"           /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "koshu-angle-text"        "koshu-angle-text /N [/N]"
                        2    "koshu-cop"               "koshu-cop /N"
                        3    "koshu-cop-infix"         "koshu-cop-infix /N [-height /N][-dir /N]"
                        4    "koshu-proxy"             "koshu-proxy /N /N"
                        5    "koshu-rop"               "koshu-rop /N"
                        6    "koshu-source"            "koshu-source /N [-name /N][-type /N]"
                        7    "koshu-version"           "koshu-version /N"
                        
  13   "nest"           /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "chunk"                   "chunk /T ... [-order /P ...]"
                        2    "copy"                    "copy N R"
                        3    "down"                    "down /N"
                        4    "for"                     "for /N R"
                        5    "group"                   "group R -to /N [-share /P ...]"
                        6    "hier"                    "self-group /P ... -to /N"
                        7    "join-up"                 "join-up /P ..."
                        8    "nest"                    "nest [~] /P ... -to /N"
                        9    "opp-group"               "opp-group R -to /N [-share /P ...]"
                        10   "self-group"              "self-group /P ... -to /N"
                        11   "sg"                      "self-group /P ... -to /N"
                        12   "slice"                   "slice /N [R]"
                        13   "slice-up"                "slice-up R"
                        14   "ungroup"                 "ungroup /P"
                        15   "up"                      "up /N"
                        
  14   "order"          /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "backward"                "backward /P ..."
                        2    "bw"                      "backward /P ..."
                        3    "forward"                 "forward /P ..."
                        4    "fw"                      "forward /P ..."
                        5    "lexical"                 "lexical"
                        6    "order"                   "order /P ..."
                        
  15   "peripheral"     /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "now"                     "now /N"
                        2    "rdf"                     "rdf P /S /O"
                        3    "term-name"               "term-name /N"
                        4    "tie"                     "tie /P ... -to N"
                        5    "today"                   "today /N"
                        6    "untie"                   "untie /P -only /P ..."
                        
  16   "resource"       /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "koshu-res-article"       "koshu-res-article /N"
                        2    "koshu-res-rop"           "koshu-res-rop /N /N"
                        3    "koshu-res-sink"          "koshu-res-sink /N /N"
                        4    "koshu-res-sink-source"   "koshu-res-sink-source /N /N"
                        5    "koshu-res-source"        "koshu-res-source /N"
                        
  17   "source"         /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "dee"                     "dee"
                        2    "dum"                     "dum"
                        3    "empty"                   "empty /N ..."
                        4    "source"                  "source P /N ..."
                        5    "source-term"             "source-term P R"
                        
  18   "term"           /n   /name                     /usage
                        ---- ------------------------- ---------------------------------------------------------
                        1    "cut"                     "cut /P ..."
                        2    "cut-term"                "cut-term /R"
                        3    "move"                    "move /P ... -to /N ..."
                        4    "pick"                    "pick /P ..."
                        5    "pick-term"               "pick-term /R"
                        6    "prefix"                  "prefix /N -to /P ..."
                        7    "prefix-change"           "prefix-change /P /Q"
                        8    "rename"                  "rename /N /P ..."
                        9    "unprefix"                "unprefix /P"
                        10   "wipe"                    "wipe"
                        

=== rel

**
**  SUMMARY
**      18 judges on ROP
**      18 judges in total
**
```



## command

This document is produced by the command:

```
koshu-inout.sh -r -g koshu
```
