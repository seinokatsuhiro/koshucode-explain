** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p    : source P /x /y /z
xy   : empty /x /y
vwxy : empty /v /w /x /y

|== Q : p | pick /x /y
|== R : p | join xy
|== S : p | join vwxy
