#dual functionality:
#can be run by player
#OR can be run by tank (the zombie tagged as "player_char")

#default values
scoreboard players set @s[type=player] char_set_x 8
scoreboard players set @s[type=player] char_set_z 8

scoreboard players set #recursions value 20
execute if score #opt_teamlayout value matches ..0 run function ttr:random/spreadplayer_aec
execute if score #opt_teamlayout value matches 1.. run function ttr:random/spreadplayer_aec_team_layout

scoreboard players operation @s[type=player] char_set_x = #char_set_x value
scoreboard players operation @s[type=player] char_set_z = #char_set_z value