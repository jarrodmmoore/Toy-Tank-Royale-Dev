scoreboard players add #celebration_time value 1

execute if score #celebration_time value matches 2 run tellraw @a ["",{text:"\n"},{translate:"ttr.game_ended",bold:true,color:"green"}]
execute if score #celebration_time value matches 2 run execute as @a[tag=inControl] if score @s coins >= #opt_coinlimit value run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
execute if score #celebration_time value matches 2 run execute as @e[tag=ai] if score @s aiCoins >= #opt_coinlimit value run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
execute if score #celebration_time value matches 2 run tellraw @a ["",{text:" "}]

#fireworks
execute if score #celebration_time value matches 2 as @e[type=zombie,tag=ai,tag=!player_ded] if score @s aiCoins >= #opt_coinlimit value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16777215],has_trail:1b}]}}}}
execute if score #celebration_time value matches 2 as @a[tag=inControl,scores={deathTime=..0}] if score @s coins >= #opt_coinlimit value run function ttr:gamemodes/player_victory_fireworks
execute if score #celebration_time value matches 22 as @e[type=zombie,tag=ai,tag=!player_ded] if score @s aiCoins >= #opt_coinlimit value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16252672],has_trail:1b}]}}}}
execute if score #celebration_time value matches 22 as @a[tag=inControl,scores={deathTime=..0}] if score @s coins >= #opt_coinlimit value run function ttr:gamemodes/player_victory_fireworks
execute if score #celebration_time value matches 42 as @e[type=zombie,tag=ai,tag=!player_ded] if score @s aiCoins >= #opt_coinlimit value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;65288]}]}}}}
execute if score #celebration_time value matches 42 as @a[tag=inControl,scores={deathTime=..0}] if score @s coins >= #opt_coinlimit value run function ttr:gamemodes/player_victory_fireworks
execute if score #celebration_time value matches 62 as @e[type=zombie,tag=ai,tag=!player_ded] if score @s aiCoins >= #opt_coinlimit value at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16776960],fade_colors:[I;16775930],has_trail:1b,has_twinkle:1b}]}}}}
execute if score #celebration_time value matches 62 as @a[tag=inControl,scores={deathTime=..0}] if score @s coins >= #opt_coinlimit value run function ttr:gamemodes/player_victory_fireworks

#no death please
execute if score #ai_count value matches 1.. as @e[type=zombie,tag=ai,tag=!player_ded] if score @s aiCoins >= #opt_coinlimit value at @s run scoreboard players set @s invulTime 20

#no players? end right away
execute unless entity @e[type=zombie,tag=player_char,tag=!player_ded] run scoreboard players set #celebration_time value 140

#alright, now start over
execute if score #celebration_time value matches 140.. run function ttr:gamemodes/5_end