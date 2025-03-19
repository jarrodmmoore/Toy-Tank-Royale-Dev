execute if entity @s[scores={optSelect=3117}] as @e[type=marker,tag=randomize,sort=arbitrary] run function ttr:admin_menu/item_bans_enable_all
execute if entity @s[scores={optSelect=3118}] as @e[type=marker,tag=randomize,sort=arbitrary] run function ttr:admin_menu/item_bans_disable_all

scoreboard players set #toggle value 0

#individual
execute if entity @s[scores={optSelect=3101}] if entity @e[type=marker,tag=randomize,tag=itemBanC1,scores={randomize=8}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3101}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=8..9}] add itemBanC1
execute if entity @s[scores={optSelect=3101}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=1}] {CustomName:{text:"\ue024",strikethrough:true}}
execute if entity @s[scores={optSelect=3101}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=8..9}] remove itemBanC1
execute if entity @s[scores={optSelect=3101}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=1}] {CustomName:{text:"\ue024",strikethrough:false}}

execute if entity @s[scores={optSelect=3102}] if entity @e[type=marker,tag=randomize,tag=itemBanC1,scores={randomize=1}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3102}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=1..7}] add itemBanC1
execute if entity @s[scores={optSelect=3102}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=1..3}] add itemBanC2
execute if entity @s[scores={optSelect=3102}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=2}] {CustomName:{text:"\ue023",strikethrough:true}}
execute if entity @s[scores={optSelect=3102}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=1..7}] remove itemBanC1
execute if entity @s[scores={optSelect=3102}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=1..3}] remove itemBanC2
execute if entity @s[scores={optSelect=3102}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=2}] {CustomName:{text:"\ue023",strikethrough:false}}

execute if entity @s[scores={optSelect=3103}] if entity @e[type=marker,tag=randomize,tag=itemBanC2,scores={randomize=4}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3103}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=4..5}] add itemBanC2
execute if entity @s[scores={optSelect=3103}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=3}] {CustomName:{text:"\ue025",strikethrough:true}}
execute if entity @s[scores={optSelect=3103}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=4..5}] remove itemBanC2
execute if entity @s[scores={optSelect=3103}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=3}] {CustomName:{text:"\ue025",strikethrough:false}}

execute if entity @s[scores={optSelect=3104}] if entity @e[type=marker,tag=randomize,tag=itemBanH,scores={randomize=1}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3104}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=1}] add itemBanH
execute if entity @s[scores={optSelect=3104}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=4}] {CustomName:{text:"\ue026",strikethrough:true}}
execute if entity @s[scores={optSelect=3104}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=1}] remove itemBanH
execute if entity @s[scores={optSelect=3104}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=4}] {CustomName:{text:"\ue026",strikethrough:false}}



execute if entity @s[scores={optSelect=3105}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=18}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3105}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=18}] add itemBan1
execute if entity @s[scores={optSelect=3105}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=5}] {CustomName:{text:"\ue030",strikethrough:true}}
execute if entity @s[scores={optSelect=3105}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=18}] remove itemBan1
execute if entity @s[scores={optSelect=3105}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=5}] {CustomName:{text:"\ue030",strikethrough:false}}

execute if entity @s[scores={optSelect=3106}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=19}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3106}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=19}] add itemBan1
execute if entity @s[scores={optSelect=3106}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=6}] {CustomName:{text:"\ue029",strikethrough:true}}
execute if entity @s[scores={optSelect=3106}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=19}] remove itemBan1
execute if entity @s[scores={optSelect=3106}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=6}] {CustomName:{text:"\ue029",strikethrough:false}}

execute if entity @s[scores={optSelect=3107}] if entity @e[type=marker,tag=randomize,tag=itemBan2,scores={randomize=1}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3107}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=1..3}] add itemBan2
execute if entity @s[scores={optSelect=3107}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=7}] {CustomName:{text:"\ue027",strikethrough:true}}
execute if entity @s[scores={optSelect=3107}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=1..3}] remove itemBan2
execute if entity @s[scores={optSelect=3107}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=7}] {CustomName:{text:"\ue027",strikethrough:false}}

execute if entity @s[scores={optSelect=3108}] if entity @e[type=marker,tag=randomize,tag=itemBan2,scores={randomize=5}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3108}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=4..5}] add itemBan2
execute if entity @s[scores={optSelect=3108}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=8}] {CustomName:{text:"\ue028",strikethrough:true}}
execute if entity @s[scores={optSelect=3108}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=4..5}] remove itemBan2
execute if entity @s[scores={optSelect=3108}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=8}] {CustomName:{text:"\ue028",strikethrough:false}}



execute if entity @s[scores={optSelect=3109}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=1}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3109}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=1..3}] add itemBan1
execute if entity @s[scores={optSelect=3109}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=9}] {CustomName:{text:"\ue002",strikethrough:true}}
execute if entity @s[scores={optSelect=3109}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=1..3}] remove itemBan1
execute if entity @s[scores={optSelect=3109}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=9}] {CustomName:{text:"\ue002",strikethrough:false}}

execute if entity @s[scores={optSelect=3110}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=4}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3110}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=4..5}] add itemBan1
execute if entity @s[scores={optSelect=3110}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=10}] {CustomName:{text:"\ue003",strikethrough:true}}
execute if entity @s[scores={optSelect=3110}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=4..5}] remove itemBan1
execute if entity @s[scores={optSelect=3110}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=10}] {CustomName:{text:"\ue003",strikethrough:false}}

execute if entity @s[scores={optSelect=3111}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=6}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3111}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=6..8}] add itemBan1
execute if entity @s[scores={optSelect=3111}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=11}] {CustomName:{text:"\ue004",strikethrough:true}}
execute if entity @s[scores={optSelect=3111}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=6..8}] remove itemBan1
execute if entity @s[scores={optSelect=3111}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=11}] {CustomName:{text:"\ue004",strikethrough:false}}

execute if entity @s[scores={optSelect=3112}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=9}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3112}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=9..10}] add itemBan1
execute if entity @s[scores={optSelect=3112}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=12}] {CustomName:{text:"\ue001",strikethrough:true,color:"#77DDFF"}}
execute if entity @s[scores={optSelect=3112}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=9..10}] remove itemBan1
execute if entity @s[scores={optSelect=3112}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=12}] {CustomName:{text:"\ue001",strikethrough:false,color:"#77DDFF"}}



execute if entity @s[scores={optSelect=3113}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=11}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3113}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=11..14}] add itemBan1
execute if entity @s[scores={optSelect=3113}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=13}] {CustomName:{text:"\ue006",strikethrough:true}}
execute if entity @s[scores={optSelect=3113}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=11..14}] remove itemBan1
execute if entity @s[scores={optSelect=3113}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=13}] {CustomName:{text:"\ue006",strikethrough:false}}

execute if entity @s[scores={optSelect=3114}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=15}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3114}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=15}] add itemBan1
execute if entity @s[scores={optSelect=3114}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=14}] {CustomName:{text:"\ue007",strikethrough:true}}
execute if entity @s[scores={optSelect=3114}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=15}] remove itemBan1
execute if entity @s[scores={optSelect=3114}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=14}] {CustomName:{text:"\ue007",strikethrough:false}}

execute if entity @s[scores={optSelect=3115}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=16}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3115}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=16}] add itemBan1
execute if entity @s[scores={optSelect=3115}] if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=15}] {CustomName:{text:"\ue008",strikethrough:true}}
execute if entity @s[scores={optSelect=3115}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=16}] remove itemBan1
execute if entity @s[scores={optSelect=3115}] if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=15}] {CustomName:{text:"\ue008",strikethrough:false}}

execute if entity @s[scores={optSelect=3116}] if entity @e[type=marker,tag=randomize,tag=itemBan1,scores={randomize=17}] run scoreboard players set #toggle value 1
execute if entity @s[scores={optSelect=3116}] if score #toggle value matches 0 run tag @e[type=marker,tag=randomize,scores={randomize=17}] add itemBan1
execute if entity @s[scores={optSelect=3116}] unless score #force_turtles value matches 1 if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=16}] {CustomName:{text:"\ue009",strikethrough:true}}
execute if entity @s[scores={optSelect=3116}] if score #force_turtles value matches 1 if score #toggle value matches 0 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=16}] {CustomName:{text:"\ue034",strikethrough:true}}
execute if entity @s[scores={optSelect=3116}] if score #toggle value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=17}] remove itemBan1
execute if entity @s[scores={optSelect=3116}] unless score #force_turtles value matches 1 if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=16}] {CustomName:{text:"\ue009",strikethrough:false}}
execute if entity @s[scores={optSelect=3116}] if score #force_turtles value matches 1 if score #toggle value matches 1 run data merge entity @e[limit=1,type=marker,tag=randomize,scores={randomize=16}] {CustomName:{text:"\ue034",strikethrough:false}}





#ban coin slot 10 if both its children are banned
tag @e[type=marker,tag=randomize,scores={randomize=10}] remove itemBanC1
execute if entity @e[limit=1,type=marker,tag=randomize,tag=itemBanC2,scores={randomize=5}] if entity @e[limit=1,type=marker,tag=randomize,tag=itemBanC2,scores={randomize=1}] run tag @e[type=marker,tag=randomize,scores={randomize=10}] add itemBanC1

#ban item slot 20 if both its children are banned
tag @e[type=marker,tag=randomize,scores={randomize=20}] remove itemBan1
execute if entity @e[limit=1,type=marker,tag=randomize,tag=itemBan2,scores={randomize=5}] if entity @e[limit=1,type=marker,tag=randomize,tag=itemBan2,scores={randomize=1}] run tag @e[type=marker,tag=randomize,scores={randomize=20}] add itemBan1



execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open_item_bans