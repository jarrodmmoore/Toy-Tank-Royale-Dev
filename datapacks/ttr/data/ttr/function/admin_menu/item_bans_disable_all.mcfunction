tag @s add itemBan1
tag @s add itemBan2
tag @s add itemBanC1
tag @s add itemBanC2
tag @s add itemBanH

execute if entity @s[scores={randomize=1}] run data merge entity @s {CustomName:{text:"\ue024",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=2}] run data merge entity @s {CustomName:{text:"\ue023",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=3}] run data merge entity @s {CustomName:{text:"\ue025",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=4}] run data merge entity @s {CustomName:{text:"\ue026",strikethrough:true,color:"white"}}

execute if entity @s[scores={randomize=5}] run data merge entity @s {CustomName:{text:"\ue030",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=6}] run data merge entity @s {CustomName:{text:"\ue029",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=7}] run data merge entity @s {CustomName:{text:"\ue027",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=8}] run data merge entity @s {CustomName:{text:"\ue028",strikethrough:true,color:"white"}}

execute if entity @s[scores={randomize=9}] run data merge entity @s {CustomName:{text:"\ue002",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=10}] run data merge entity @s {CustomName:{text:"\ue003",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=11}] run data merge entity @s {CustomName:{text:"\ue004",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=12}] run data merge entity @s {CustomName:{text:"\ue001",strikethrough:true,color:"#77DDFF"}}

execute if entity @s[scores={randomize=13}] run data merge entity @s {CustomName:{text:"\ue006",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=14}] run data merge entity @s {CustomName:{text:"\ue007",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=15}] run data merge entity @s {CustomName:{text:"\ue008",strikethrough:true,color:"white"}}
execute if entity @s[scores={randomize=16}] run data merge entity @s {CustomName:{text:"\ue009",strikethrough:true,color:"white"}}
execute if score #force_turtles value matches 1 if entity @s[scores={randomize=16}] run data merge entity @s {CustomName:{text:"\ue034",strikethrough:true,color:"white"}}