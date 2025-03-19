#join blue

tag @s add blueTeam
tag @s remove redTeam
scoreboard players set @s teamID 2

#update colors
tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.game.moved_to_blue_team",color:"blue",with:[{selector:"@s"}]}]
tellraw @s[scores={shutUp=1..}] ["",{translate:"ttr.game.moved_to_blue_team",color:"blue",with:[{selector:"@s"}]}]
function ttr:game/colors/get_colors

#recalculate team balance NOW! it's possible that multiple players may check team balance on the same tick.
function ttr:game/team_availability