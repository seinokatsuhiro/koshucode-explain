** -*- koshu -*-

|== ROP -table -fore /n /group
    : koshu-rop -group /group
                -name  /name
                -usage /usage
    | nest ~ /group -to /rop
    | for /rop ( number-by /name )
    | number-by /group

number-by : number /n  -from 1  -order @'all
