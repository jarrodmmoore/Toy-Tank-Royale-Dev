execute if score #got_item value matches -1 run scoreboard players add @s aiCoins 50
execute if score #got_item value matches 0 run scoreboard players add @s aiCoins 1
execute if score #got_item value matches 1 run scoreboard players add @s aiCoins 5
execute if score #got_item value matches 2 run scoreboard players add @s hasItem2 5
execute if score #got_item value matches 3 run scoreboard players add @s hasItem3 5
execute if score #got_item value matches 4 run scoreboard players add @s hasItem4 4
execute if score #got_item value matches 5 run scoreboard players add @s hasItem5 5
execute if score #got_item value matches 6 run scoreboard players add @s hasItem6 4
execute if score #got_item value matches 7 run scoreboard players add @s hasItem7 1
execute if score #got_item value matches 8 run scoreboard players add @s hasItem8 2
execute if score #got_item value matches 9 run scoreboard players add @s hasItem9 3
execute if score #got_item value matches 10 run scoreboard players add @s vel_multiplier 30
execute if score #got_item value matches 11 run scoreboard players remove @s cooldown_mult 25
execute if score #got_item value matches 12 run tag @s add extra_life
execute if score #got_item value matches 13 run scoreboard players set @s infinite_bounce 800
execute if score #got_item value matches 14 run scoreboard players add @s hitpoints 1

execute if entity @s[scores={hasItem2=11..}] run scoreboard players set @s hasItem2 10
execute if entity @s[scores={hasItem3=11..}] run scoreboard players set @s hasItem3 10
execute if entity @s[scores={hasItem4=11..}] run scoreboard players set @s hasItem4 10
execute if entity @s[scores={hasItem5=11..}] run scoreboard players set @s hasItem5 10
execute if entity @s[scores={hasItem6=11..}] run scoreboard players set @s hasItem6 10
execute if entity @s[scores={hasItem7=11..}] run scoreboard players set @s hasItem7 10
execute if entity @s[scores={hasItem8=11..}] run scoreboard players set @s hasItem8 10
execute if entity @s[scores={hasItem9=11..}] run scoreboard players set @s hasItem9 10

execute if score #got_item value matches -90.. run function ttr:ai/movement/think_about_seeking_more_items

execute if entity @s[scores={vel_multiplier=201..}] run scoreboard players set @s vel_multiplier 200
execute if entity @s[scores={cooldown_mult=..74}] run scoreboard players set @s cooldown_mult 75
execute if score @s hitpoints > #opt_hitpoints value run scoreboard players operation @s hitpoints = #opt_hitpoints value