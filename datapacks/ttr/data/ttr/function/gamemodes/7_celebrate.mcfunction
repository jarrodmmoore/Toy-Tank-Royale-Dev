scoreboard players add #celebration_time value 1

#find high scores
execute if score #celebration_time value matches 1 run function ttr:gamemodes/7_celebrate_high_scores

execute if score #celebration_time value matches 1 run tellraw @a ["",{text:"\n"},{translate:"ttr.game_ended",bold:true,color:"green"}]

#longest time survived person is considered the winner
execute if score #celebration_time value matches 1 as @a[tag=inControl,scores={infectTimeTick=1..}] if score @s infectTimeTick >= #bestAliveTime value run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s",color:"blue"}]}]
execute if score #celebration_time value matches 1 if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,scores={infectTimeTick=1..}] if score @s infectTimeTick >= #bestAliveTime value run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]

execute if score #celebration_time value matches 1 run tellraw @a ["",{text:" "}]

execute if score #celebration_time value matches 1 if score #bestAliveTime value matches 1.. run tellraw @a ["",{text:"☆ ",color:"blue"},{translate:"ttr.infection.longest_time_survived"}]
execute if score #celebration_time value matches 1 as @a[tag=inControl,scores={infectTimeTick=1..}] if score @s infectTimeTick >= #bestAliveTime value if score @s infectTimeSec matches ..9 run tellraw @a ["",{text:"  "},{selector:"@s",color:"blue"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectTimeMin"}},{text:"m"},{text:" 0"},{score:{name:"@s",objective:"infectTimeSec"}},{text:"s"}]
execute if score #celebration_time value matches 1 as @a[tag=inControl,scores={infectTimeTick=1..}] if score @s infectTimeTick >= #bestAliveTime value if score @s infectTimeSec matches 10.. run tellraw @a ["",{text:"  "},{selector:"@s",color:"blue"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectTimeMin"}},{text:"m"},{text:" "},{score:{name:"@s",objective:"infectTimeSec"}},{text:"s"}]
execute if score #celebration_time value matches 1 if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,scores={infectTimeTick=1..}] if score @s infectTimeTick >= #bestAliveTime value if score @s infectTimeSec matches ..9 run tellraw @a ["",{text:"  "},{selector:"@s",color:"blue"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectTimeMin"}},{text:"m"},{text:" 0"},{score:{name:"@s",objective:"infectTimeSec"}},{text:"s"}]
execute if score #celebration_time value matches 1 if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,scores={infectTimeTick=1..}] if score @s infectTimeTick >= #bestAliveTime value if score @s infectTimeSec matches 10.. run tellraw @a ["",{text:"  "},{selector:"@s",color:"blue"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectTimeMin"}},{text:"m"},{text:" "},{score:{name:"@s",objective:"infectTimeSec"}},{text:"s"}]

execute if score #celebration_time value matches 1 if score #bestAlive value matches 1.. run tellraw @a ["",{text:"☆ ",color:"blue"},{translate:"ttr.infection.most_points_alive"}]
execute if score #celebration_time value matches 1 as @a[tag=inControl,scores={infectPointsBlue=1..}] if score @s infectPointsBlue >= #bestAlive value run tellraw @a ["",{text:"  "},{selector:"@s",color:"blue"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectPointsBlue"}}]
execute if score #celebration_time value matches 1 if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,scores={infectPointsBlue=1..}] if score @s infectPointsBlue >= #bestAlive value run tellraw @a ["",{text:"  "},{selector:"@s",color:"blue"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectPointsBlue"}}]

execute if score #celebration_time value matches 1 if score #bestInfected value matches 1.. run tellraw @a ["",{text:"☆ ",color:"red"},{translate:"ttr.infection.most_points_infected"}]
execute if score #celebration_time value matches 1 as @a[tag=inControl,scores={infectPointsRed=1..}] if score @s infectPointsRed >= #bestInfected value run tellraw @a ["",{text:"  "},{selector:"@s",color:"red"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectPointsRed"}}]
execute if score #celebration_time value matches 1 if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,scores={infectPointsRed=1..}] if score @s infectPointsRed >= #bestInfected value run tellraw @a ["",{text:"  "},{selector:"@s",color:"red"},{text:" >> ",color:"white"},{score:{name:"@s",objective:"infectPointsRed"}}]

#execute if score #celebration_time value matches 1 run execute as @a[tag=inControl] unless score @s deathTime matches 1.. run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
#execute if score #celebration_time value matches 1 run execute as @e[tag=ai,tag=!player_ded] run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
execute if score #celebration_time value matches 1 run tellraw @a ["",{text:" "}]

#fireworks
execute if score #celebration_time value matches 1 as @e[type=zombie,tag=player_char,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16777215],has_trail:1b}]}}}}
execute if score #celebration_time value matches 21 as @e[type=zombie,tag=player_char,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16252672],has_trail:1b}]}}}}
execute if score #celebration_time value matches 41 as @e[type=zombie,tag=player_char,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;65288]}]}}}}
execute if score #celebration_time value matches 61 as @e[type=zombie,tag=player_char,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16776960],fade_colors:[I;16775930],has_trail:1b,has_twinkle:1b}]}}}}

#no players? end right away
execute unless entity @e[type=zombie,tag=player_char,tag=!player_ded] run scoreboard players set #celebration_time value 140

#alright, now start over
execute if score #celebration_time value matches 140.. run function ttr:gamemodes/7_end