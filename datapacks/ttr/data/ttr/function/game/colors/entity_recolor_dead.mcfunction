scoreboard players operation @s color_1 = #color_1 value
scoreboard players operation @s color_2 = #color_2 value

#this catches a bug when auto-balancing human players
execute if entity @s[type=zombie,tag=blueTeam] if score #setTeam value matches 1 run tag @s remove blueTeam
execute if entity @s[type=zombie,tag=redTeam] if score #setTeam value matches 2 run tag @s remove redTeam
execute if entity @s[type=zombie] if score #setTeam value matches 1 run tag @s add redTeam
execute if entity @s[type=zombie] if score #setTeam value matches 2 run tag @s add blueTeam

#execute if entity @s[tag=char_model_head] run function ttr:control/char_model_flash_head
execute if entity @s[tag=player_model_head] run kill @s
#execute if entity @s[tag=player_model] run function ttr:control/char_model_flash_body