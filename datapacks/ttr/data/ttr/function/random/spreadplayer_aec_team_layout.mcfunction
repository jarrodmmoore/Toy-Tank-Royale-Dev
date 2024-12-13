#what team are we on?
scoreboard players set #go_to_square value 0
execute if entity @s[tag=redTeam] run scoreboard players operation #go_to_square value = #red_spawn_square value
execute if entity @s[tag=blueTeam] run scoreboard players operation #go_to_square value = #blue_spawn_square value

#spawn in the correct square!
execute if score #go_to_square value matches 1 positioned -15 30 -15 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 2 positioned 8 30 -15 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 3 positioned 31 30 -15 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 4 positioned -15 30 8 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 5 positioned 8 30 8 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 6 positioned 31 30 8 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 7 positioned -15 30 31 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 8 positioned 8 30 31 run function ttr:random/spreadplayer_aec_team_layout_go
execute if score #go_to_square value matches 9 positioned 31 30 31 run function ttr:random/spreadplayer_aec_team_layout_go

#no team? just use normal spawnpoint randomization, then
execute if entity @s[tag=!redTeam,tag=!blueTeam] run function ttr:random/spreadplayer_aec