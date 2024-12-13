#ded
execute unless entity @e[limit=1,tag=my_char,tag=player_ded,type=zombie] run tag @e[limit=1,tag=my_char,tag=!player_ded,type=zombie] add player_ded

#get respawn time in seconds
scoreboard players set #20 value 20
scoreboard players operation #math value = @s respawnTime
scoreboard players operation #math value /= #20 value
scoreboard players operation @s respawnTimeSec = #math value

#respawn messages
execute if entity @s[scores={respawnTime=1..}] run scoreboard players set @s[scores={actionbarState=..14}] actionbarState 15
execute if entity @s[scores={respawnTime=..0}] run scoreboard players set @s[scores={actionbarState=..15}] actionbarState 16
scoreboard players set @s[scores={actionbarState=15..16}] actionbarTime 3

#allow respawn after time's up
scoreboard players remove @s[scores={respawnTime=1..}] respawnTime 1
execute if score #opt_permadeath value matches 0 if entity @s[tag=!force_respawn,scores={carrotInput2=1..,respawnTime=..0}] run function ttr:game/respawn
execute if entity @s[tag=force_respawn] run function ttr:game/respawn

#done tutorial
execute if entity @s[scores={tutorial=2000..}] run scoreboard players set @s tutorial 0
#don't miss tutorial due to death please
scoreboard players set @s[scores={tutorial=2..}] tutorial 1

#ghostly particles for permadeath spectator
execute if score #opt_permadeath value matches 1 at @e[limit=1,tag=my_char,type=zombie] run particle cloud ~ ~.3 ~ .2 .2 .2 0 1 force @s
execute if score #opt_permadeath value matches 1 as @e[limit=1,tag=my_char,type=zombie] at @s if block ~ ~ ~ barrier run tp @s @e[limit=1,tag=player_char,tag=!player_ded,type=zombie]

#not respawning? kick out of game (unless permadeath is a thing)
scoreboard players add @s[scores={respawnTime=..0}] afkTime 1
execute if score #opt_permadeath value matches 1 run scoreboard players set @s afkTime 0
execute if entity @s[scores={afkTime=900..}] run function ttr:game/abandon_game