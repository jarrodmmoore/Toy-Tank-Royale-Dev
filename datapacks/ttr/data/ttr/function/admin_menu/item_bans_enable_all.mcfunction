tag @s remove itemBan1
tag @s remove itemBan2
tag @s remove itemBanC1
tag @s remove itemBanC2
tag @s remove itemBanH

execute if entity @s[scores={randomize=1}] run data merge entity @s {CustomName:{text:"\ue024",strikethrough:false}}
execute if entity @s[scores={randomize=2}] run data merge entity @s {CustomName:{text:"\ue023",strikethrough:false}}
execute if entity @s[scores={randomize=3}] run data merge entity @s {CustomName:{text:"\ue025",strikethrough:false}}
execute if entity @s[scores={randomize=4}] run data merge entity @s {CustomName:{text:"\ue026",strikethrough:false}}

execute if entity @s[scores={randomize=5}] run data merge entity @s {CustomName:{text:"\ue030",strikethrough:false}}
execute if entity @s[scores={randomize=6}] run data merge entity @s {CustomName:{text:"\ue029",strikethrough:false}}
execute if entity @s[scores={randomize=7}] run data merge entity @s {CustomName:{text:"\ue027",strikethrough:false}}
execute if entity @s[scores={randomize=8}] run data merge entity @s {CustomName:{text:"\ue028",strikethrough:false}}

execute if entity @s[scores={randomize=9}] run data merge entity @s {CustomName:{text:"\ue002",strikethrough:false}}
execute if entity @s[scores={randomize=10}] run data merge entity @s {CustomName:{text:"\ue003",strikethrough:false}}
execute if entity @s[scores={randomize=11}] run data merge entity @s {CustomName:{text:"\ue004",strikethrough:false}}
execute if entity @s[scores={randomize=12}] run data merge entity @s {CustomName:{text:"\ue001",strikethrough:false,color:"#77DDFF"}}

execute if entity @s[scores={randomize=13}] run data merge entity @s {CustomName:{text:"\ue006",strikethrough:false}}
execute if entity @s[scores={randomize=14}] run data merge entity @s {CustomName:{text:"\ue007",strikethrough:false}}
execute if entity @s[scores={randomize=15}] run data merge entity @s {CustomName:{text:"\ue008",strikethrough:false}}
execute if entity @s[scores={randomize=16}] run data merge entity @s {CustomName:{text:"\ue009",strikethrough:false}}
execute if score #force_turtles value matches 1 if entity @s[scores={randomize=16}] run data merge entity @s {CustomName:{text:"\ue034",strikethrough:false}}