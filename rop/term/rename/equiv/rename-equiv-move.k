** -*- koshu -*-
**
**  RELMAP OPERATOR : rename
**

|-- P  /x 1  /y 10  /z 50
|-- P  /x 1  /y 20  /z 60
|-- P  /x 2  /y 30  /z 60

xyz : source P /x /y /z

|== Q : xyz | rename /a /x /b /y
|== R : xyz | move /x /y -to /a /b
