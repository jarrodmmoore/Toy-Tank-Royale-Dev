#join red

scoreboard players set #ai_count_red value 0
scoreboard players set #ai_count_blue value 0
execute as @e[type=zombie,tag=ai,tag=redTeam] run scoreboard players add #ai_count_red value 1
execute as @e[type=zombie,tag=ai,tag=blueTeam] run scoreboard players add #ai_count_blue value 1

tag @s remove blueTeam
tag @s add redTeam
scoreboard players set @s teamID 1

#update colors
tellraw @a[scores={shutUp=..0}] ["",{"translate":"ttr.game.moved_to_red_team_infected","color":"red","with":[{"selector":"@s"}]}]
function ttr:game/colors/get_colors

execute as @a at @s run playsound minecraft:entity.zombie.infect master @s ~ 100000 ~ 100000 1

#recalculate team balance NOW! it's possible that multiple AI may check team balance on the same tick.
function ttr:game/team_availability