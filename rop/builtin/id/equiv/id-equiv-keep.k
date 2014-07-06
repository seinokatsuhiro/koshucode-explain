** -*- koshu -*-

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 12  /z 60
|-- P  /x 2  /y 14  /z 60

p : source P /x /y /z

|== Q : p
|== R : p | keep <1>
|== S : p | omit <0>
