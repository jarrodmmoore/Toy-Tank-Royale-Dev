execute as @a[scores={playerID=1..}] if score @s playerID = #attackerID value run tag @s add attacker
execute as @a[scores={playerID=1..}] if score @s playerID = #victimID value run tag @s add victim
execute if score #ai_count value matches 1.. as @e[tag=ai] if score @s playerID = #attackerID value run tag @s add attacker
execute if score #ai_count value matches 1.. as @e[tag=ai] if score @s playerID = #victimID value run tag @s add victim

#don't spam chat with 8+ players please
execute if score #player_count value matches 8.. run tag @a[tag=!attacker,tag=!victim,scores={shutUp=0}] add deafen
tag @a[tag=!attacker,tag=!victim,scores={shutUp=1..}] add deafen

execute unless score #damage_source value matches 1..11 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE001 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 1 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE001 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 2 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE002 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 3 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE003 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 4 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE004 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 5 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE005 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 6 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE006 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 7 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE007 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 8 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE008 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 9 unless score #force_turtles value matches 1 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE009 "},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 9 if score #force_turtles value matches 1 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE034 "},{selector:"@e[tag=victim]"}]
#instead of adding new assets for triple/burst pellets, let's just tint the standard one
execute if score #damage_source value matches 10 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE001 ",color:"#FFFF77"},{selector:"@e[tag=victim]"}]
execute if score #damage_source value matches 11 run tellraw @a[tag=!deafen] ["",{text:" "},{selector:"@e[tag=attacker]"},{text:" \uE001 ",color:"#77DDFF"},{selector:"@e[tag=victim]"}]

execute as @e[tag=attacker,tag=!victim] at @s run function ttr:game/got_ko
#function ttr:game/got_ko_teammate

#ai remembers who shot it last
execute if score #ai_count value matches 1.. as @e[tag=ai,tag=victim,tag=!attacker] run scoreboard players operation @s aiLastKiller = #attackerID value

#ai killed the player that shot it last, forgive them
execute if score #ai_count value matches 1.. as @e[tag=ai,tag=attacker] if score #victimID value = @s aiLastKiller run scoreboard players set @s aiLastKiller 0

#get point for kill in certain gamemodes
execute if score #opt_gamemode value matches 3 if score #ai_count value matches 1.. run scoreboard players add @e[tag=ai,tag=attacker,tag=!victim] aiPoints 1
execute if score #opt_gamemode value matches 3 run scoreboard players add @a[tag=attacker,tag=!victim] points 1

#lose point for SD
execute if score #opt_gamemode value matches 3 if score #ai_count value matches 1.. run scoreboard players remove @e[tag=ai,tag=attacker,tag=victim,scores={aiPoints=1..}] aiPoints 1
execute if score #opt_gamemode value matches 3 run scoreboard players remove @a[tag=attacker,tag=victim,scores={points=1..}] points 1

tag @e[tag=attacker] remove attacker
tag @e[tag=victim] remove victim

tag @a[tag=deafen] remove deafen