scoreboard players operation #checkID value = @s playerID

execute if score #celebration_time value matches 1..20 as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #checkID value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16777215],has_trail:1b}]}}}}
execute if score #celebration_time value matches 21..40 as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #checkID value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16252672],has_trail:1b}]}}}}
execute if score #celebration_time value matches 41..60 as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #checkID value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;65288]}]}}}}
execute if score #celebration_time value matches 61.. as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #checkID value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16776960],fade_colors:[I;16775930],has_trail:1b,has_twinkle:1b}]}}}}

#no death please
execute as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #checkID value at @s run scoreboard players set @s invulTime 100