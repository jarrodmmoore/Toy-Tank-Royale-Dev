scoreboard players reset @s playerNode

tag @s add need_node

#try and get a player node
scoreboard players set #global recursions 64
execute if entity @s[tag=need_node] run function ttr:game/player_node/try_get_node

#tellraw @a ["",{text:"[DEV] Tank base color is "},{score:{name:"@s",objective:"color_1"}}]
#tellraw @a ["",{text:"[DEV] Tank head color is "},{score:{name:"@s",objective:"color_2"}}]

execute if entity @s[tag=need_node] run function ttr:game/abandon_game
execute if entity @s[tag=need_node] run tellraw @s ["",{text:"[ ! ] Sorry, there are no player nodes left! (There can only be 64 human-controlled tanks at once)",color:"red"}]

tag @s remove need_node