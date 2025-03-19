bossbar set tank_bbar players
scoreboard players set #time_remaining value 0

scoreboard players add #celebration_time value 1

execute if score #celebration_time value matches 1 run tellraw @a ["",{text:"\n"},{translate:"ttr.game_ended",bold:true,color:"green"}]
execute if score #celebration_time value matches 1 run execute as @a[tag=inControl] unless score @s deathTime matches 1.. run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
execute if score #celebration_time value matches 1 run execute as @e[tag=ai,tag=!player_ded] run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
execute if score #celebration_time value matches 1 run tellraw @a ["",{text:" "}]

#fireworks
execute if score #celebration_time value matches 1 as @e[type=zombie,tag=player_char,tag=!player_ded] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16777215],has_trail:1b}]}}}}
execute if score #celebration_time value matches 21 as @e[type=zombie,tag=player_char,tag=!player_ded] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16252672],has_trail:1b}]}}}}
execute if score #celebration_time value matches 41 as @e[type=zombie,tag=player_char,tag=!player_ded] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;65288]}]}}}}
execute if score #celebration_time value matches 61 as @e[type=zombie,tag=player_char,tag=!player_ded] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16776960],fade_colors:[I;16775930],has_trail:1b,has_twinkle:1b}]}}}}

#no death please
scoreboard players set @e[tag=player_char,tag=!player_ded,type=zombie] invulTime 20

#no players? end right away
execute unless entity @e[type=zombie,tag=player_char,tag=!player_ded] run scoreboard players set #celebration_time value 140

#alright, now start over
execute if score #celebration_time value matches 140.. run function ttr:gamemodes/4_end