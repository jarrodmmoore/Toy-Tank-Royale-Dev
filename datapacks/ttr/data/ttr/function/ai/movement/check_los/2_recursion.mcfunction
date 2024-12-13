scoreboard players remove #recursions value 1

execute if entity @s[distance=..1] run scoreboard players set #checkLOS value 1

#debug
#particle falling_dust{block_state:"minecraft:redstone_block"} ~ ~1.5 ~ 0 0 0 1 1 force @a

execute if score #checkLOS value matches 0 if score #recursions value matches 1.. positioned ^ ^ ^.95 if block ~ ~ ~ #ttr:ai_sees_through run function ttr:ai/movement/check_los/2_recursion