** -*- koshu -*-

|-- P  /x 1  /y 40
|-- P  /x 1  /y 50
|-- P  /x 2  /y 60

p : source P /x /y
q : source Q /x /y

|== P  : p | down /r
|== P2 : p | join dum | down /r

|== Q  : q | down /r
|== Q2 : q | join dum | down /r
