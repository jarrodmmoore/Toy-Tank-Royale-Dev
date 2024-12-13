scoreboard players set #math value 0
execute as @a[tag=inControl] run scoreboard players add #math value 1

execute if score #opt_playerlimit value matches 1.. if score #math value > #opt_playerlimit value run tag @s add failed

execute if entity @s[tag=!failed] run tag @s remove redTeam
execute if entity @s[tag=!failed] run tag @s add blueTeam
execute if entity @s[tag=!failed] run scoreboard players set @s teamID 2
execute if entity @s[tag=!failed] run function ttr:game/enter_game
execute if entity @s[tag=failed] run function ttr:game/cannot_enter_game

tag @s[tag=failed] remove failed