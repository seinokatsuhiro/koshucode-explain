-*- koshu -*-

|== ROP
  : koshu-rop /name -group /group -usage /usage
  | nest ~ /group -to /rop
  | for /rop ( number-by /name )
  | number-by /group
  --table --forward /n /group

number-by : number /n  -from 1  -order @'all
