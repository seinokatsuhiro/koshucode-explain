-*- koshu -*-

|== ROP
  : koshu-rop -group /group
              -name  /name
              -usage /usage
  | nest ~ /group -to /rop
  | for /rop ( number-by /name )
  | number-by /group
  --table --fore /n /group

number-by : number /n  -from 1  -order @'all
