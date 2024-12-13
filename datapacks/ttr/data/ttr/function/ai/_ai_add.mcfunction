scoreboard players set #ai_logic_success value 1

execute if score #ai_ID value matches 999.. run scoreboard players set #ai_ID value 0

execute unless entity @e[tag=ai,type=zombie] run scoreboard players set #ai_count value 0
execute unless entity @e[tag=ai,type=zombie] run scoreboard players set #ai_ID value 0
scoreboard players add #ai_ID value 1
scoreboard players add #ai_count value 1

#zombie (slow, no follow range, goes up stairs and swims, only issue is drowning and becoming drowned)
execute if score #ai_ID value matches 1..8 run function ttr:ai/node_ai/summon_character_1_8
execute if score #ai_ID value matches 9..16 run function ttr:ai/node_ai/summon_character_9_16
execute if score #ai_ID value matches 17..24 run function ttr:ai/node_ai/summon_character_17_24
execute if score #ai_ID value matches 25..32 run function ttr:ai/node_ai/summon_character_25_32
execute if score #ai_ID value matches 33..40 run function ttr:ai/node_ai/summon_character_33_40
execute if score #ai_ID value matches 41..48 run function ttr:ai/node_ai/summon_character_41_48
execute if score #ai_ID value matches 49..56 run function ttr:ai/node_ai/summon_character_49_56
execute if score #ai_ID value matches 57..64 run function ttr:ai/node_ai/summon_character_57_64

#max ai count is 64 (can be raised, but not recommended)
execute if score #ai_count value matches 65.. run scoreboard players set #ai_count value 64

scoreboard players operation @e[tag=giveID,limit=1] playerID = #ai_ID value
scoreboard players set @e[tag=giveID,limit=1] moveState 2
scoreboard players set @e[tag=giveID,limit=1] lifespan 5
scoreboard players set @e[tag=giveID,limit=1] invulTime 40
execute as @e[tag=giveID,limit=1] at @s run function ttr:ai/ai_setup

tag @e[tag=giveID] remove giveID

#balls function call
function ttr:game/reset_coin_objective