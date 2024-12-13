scoreboard players set #royal_ID value 0
scoreboard players set #last_royal value 0
#tag @e[tag=keepCrownHolder] remove keepCrownHolder

tag @s[tag=priorityTarget] remove priorityTarget
effect clear @s minecraft:glowing

#hide underground if no arena exists
execute if score #active_areas value matches ..0 run tp @s 8 20 8 0 0

#move item to field if the arena is nonzero size
execute if score #active_areas value matches 1.. run function ttr:game/crown/move_crown_to_field