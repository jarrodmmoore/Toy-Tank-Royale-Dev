execute if entity @s[type=!player] run scoreboard players operation @s playerNode = #ownerCartNode value
execute if score #ownerCartTeam value matches 1 run tag @s add redTeam
execute if score #ownerCartTeam value matches 2 run tag @s add blueTeam

execute if score @s playerNode matches 1..8 run function ttr:control/summon_character_1_8
execute if score @s playerNode matches 9..16 run function ttr:control/summon_character_9_16
execute if score @s playerNode matches 17..24 run function ttr:control/summon_character_17_24
execute if score @s playerNode matches 25..32 run function ttr:control/summon_character_25_32
execute if score @s playerNode matches 33..40 run function ttr:control/summon_character_33_40
execute if score @s playerNode matches 41..48 run function ttr:control/summon_character_41_48
execute if score @s playerNode matches 49..56 run function ttr:control/summon_character_49_56
execute if score @s playerNode matches 57..64 run function ttr:control/summon_character_57_64

#armor stand (pretty ehh, can't climb stairs and has strange air motion)
#summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["player_char","giveID","has_arm"]}

#lazy & gross overuse of @e here. this is only run once so it's not a huge deal...
scoreboard players operation @e[tag=giveID,limit=1] playerID = #ownerCartID value
scoreboard players set @e[tag=giveID,limit=1] moveState 2
scoreboard players set @e[tag=giveID,limit=1] lifespan 5
scoreboard players set @e[tag=giveID,limit=1] invulTime 40
scoreboard players operation @e[tag=giveID,limit=1] color_1 = #ownerCartC1 value
scoreboard players operation @e[tag=giveID,limit=1] color_2 = #ownerCartC2 value
scoreboard players operation @e[tag=giveID,limit=1] tankBodyModel = #ocBodyModel value
scoreboard players operation @e[tag=giveID,limit=1] tankHeadModel = #ocHeadModel value
execute as @e[tag=giveID,limit=1] run function ttr:random/powerups/assign_item_tick
team join nocollide @e[tag=giveID,limit=1]

tag @e[tag=giveID] remove giveID