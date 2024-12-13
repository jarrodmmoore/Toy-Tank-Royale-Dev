#join red

tag @s remove blueTeam
tag @s add redTeam
scoreboard players set @s teamID 1

#update colors
tellraw @a[scores={shutUp=..0}] ["",{"translate":"ttr.game.moved_to_red_team","color":"red","with":[{"selector":"@s"}]}]
tellraw @s[scores={shutUp=1..}] ["",{"translate":"ttr.game.moved_to_red_team","color":"red","with":[{"selector":"@s"}]}]
function ttr:game/colors/get_colors

#recalculate team balance NOW! it's possible that multiple players may check team balance on the same tick.
function ttr:game/team_availability