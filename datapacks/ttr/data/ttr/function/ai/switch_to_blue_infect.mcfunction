#join blue

scoreboard players set #ai_count_red value 0
scoreboard players set #ai_count_blue value 0
execute as @e[type=zombie,tag=ai,tag=redTeam] run scoreboard players add #ai_count_red value 1
execute as @e[type=zombie,tag=ai,tag=blueTeam] run scoreboard players add #ai_count_blue value 1

tag @s add blueTeam
tag @s remove redTeam
scoreboard players set @s teamID 2

#update colors
function ttr:game/colors/get_colors

#recalculate team balance NOW! it's possible that multiple AI may check team balance on the same tick.
function ttr:game/team_availability