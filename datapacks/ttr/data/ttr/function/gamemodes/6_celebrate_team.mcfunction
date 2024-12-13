scoreboard players add #celebration_time value 1

execute if score #celebration_time value matches 2 run scoreboard players set #team_winner value 0
execute if score #celebration_time value matches 2 if score #red_captures value > #blue_captures value run scoreboard players set #team_winner value 1
execute if score #celebration_time value matches 2 if score #red_captures value < #blue_captures value run scoreboard players set #team_winner value 2

execute if score #celebration_time value matches 2 run tellraw @a ["",{"text":"\n"},{"translate":"ttr.game_ended","bold":true,"color":"green"}]
execute if score #celebration_time value matches 2 if score #team_winner value matches 1 run tellraw @a [{"translate":"ttr.player_wins","color":"white","bold":false,"with":[{"translate":"ttr.red_team","color":"red"}]}]
execute if score #celebration_time value matches 2 if score #team_winner value matches 2 run tellraw @a [{"translate":"ttr.player_wins","color":"white","bold":false,"with":[{"translate":"ttr.blue_team","color":"blue"}]}]
execute if score #celebration_time value matches 2 run tellraw @a ["",{"text":" "}]

#fireworks
execute if score #celebration_time value matches 2 if score #team_winner value matches 1 as @e[type=zombie,tag=redTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16777215],has_trail:1b}]}}}}
execute if score #celebration_time value matches 22 if score #team_winner value matches 1 as @e[type=zombie,tag=redTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16252672],has_trail:1b}]}}}}
execute if score #celebration_time value matches 42 if score #team_winner value matches 1 as @e[type=zombie,tag=redTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;65288]}]}}}}
execute if score #celebration_time value matches 62 if score #team_winner value matches 1 as @e[type=zombie,tag=redTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16776960],fade_colors:[I;16775930],has_trail:1b,has_twinkle:1b}]}}}}

execute if score #celebration_time value matches 2 if score #team_winner value matches 2 as @e[type=zombie,tag=blueTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16777215],has_trail:1b}]}}}}
execute if score #celebration_time value matches 22 if score #team_winner value matches 2 as @e[type=zombie,tag=blueTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16252672],has_trail:1b}]}}}}
execute if score #celebration_time value matches 42 if score #team_winner value matches 2 as @e[type=zombie,tag=blueTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;65288]}]}}}}
execute if score #celebration_time value matches 62 if score #team_winner value matches 2 as @e[type=zombie,tag=blueTeam,tag=!player_ded,limit=1,sort=random] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16776960],fade_colors:[I;16775930],has_trail:1b,has_twinkle:1b}]}}}}

#no death please
execute if score #celebration_time value matches 2.. if score #team_winner value matches 1 run scoreboard players set @e[type=zombie,tag=redTeam,tag=!player_ded] invulTime 40
execute if score #celebration_time value matches 2.. if score #team_winner value matches 2 run scoreboard players set @e[type=zombie,tag=blueTeam,tag=!player_ded] invulTime 40

#no players? end right away
execute unless entity @e[type=zombie,tag=player_char,tag=!player_ded] run scoreboard players set #celebration_time value 140

#alright, now start over
execute if score #celebration_time value matches 140.. run function ttr:gamemodes/6_end