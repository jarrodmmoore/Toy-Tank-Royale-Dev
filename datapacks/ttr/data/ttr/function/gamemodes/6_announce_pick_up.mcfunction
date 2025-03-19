#get player ID
execute if entity @s[tag=red_flag] run scoreboard players operation @s playerID = @e[type=zombie,tag=player_char,tag=!player_ded,tag=!redTeam,limit=1,sort=nearest] playerID
execute if entity @s[tag=blue_flag] run scoreboard players operation @s playerID = @e[type=zombie,tag=player_char,tag=!player_ded,tag=!blueTeam,limit=1,sort=nearest] playerID
scoreboard players operation #checkFlagID value = @s playerID

#announce who picked it up
execute if entity @s[tag=red_flag] as @a[tag=inControl] if score @s playerID = #checkFlagID value run tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.ctf.picked_up_flag",color:"white",bold:false,with:[{selector:"@s"},{translate:"ttr.ctf.red",color:"red"}]}]
execute if entity @s[tag=red_flag] if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkFlagID value run tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.ctf.picked_up_flag",color:"white",bold:false,with:[{selector:"@s"},{translate:"ttr.ctf.red",color:"red"}]}]

execute if entity @s[tag=blue_flag] as @a[tag=inControl] if score @s playerID = #checkFlagID value run tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.ctf.picked_up_flag",color:"white",bold:false,with:[{selector:"@s"},{translate:"ttr.ctf.blue",color:"blue"}]}]
execute if entity @s[tag=blue_flag] if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkFlagID value run tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.ctf.picked_up_flag",color:"white",bold:false,with:[{selector:"@s"},{translate:"ttr.ctf.blue",color:"blue"}]}]

#AI books it right away
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkFlagID value run scoreboard players set @s aiSquareTime 20
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkFlagID value run scoreboard players set @s aiSquareTime3 0

#sound effect
execute if entity @s[tag=red_flag] as @a at @s run playsound minecraft:entity.player.attack.sweep master @s ~ 100000 ~ 100000 1
execute if entity @s[tag=blue_flag] as @a at @s run playsound minecraft:entity.player.attack.sweep master @s ~ 100000 ~ 100000 .6

#mark flag as being carried
tag @s add carryFlag