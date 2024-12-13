scoreboard players remove @s[scores={fastPickup=1..}] fastPickup 1

#similar to pellets, we only want to perform a distance check to items in the same square as us (for performance? probably)
execute if entity @s[tag=pa1] if entity @e[limit=1,tag=pa1_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa2] if entity @e[limit=1,tag=pa2_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa3] if entity @e[limit=1,tag=pa3_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa4] if entity @e[limit=1,tag=pa4_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa5] if entity @e[limit=1,tag=pa5_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa6] if entity @e[limit=1,tag=pa6_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa7] if entity @e[limit=1,tag=pa7_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa8] if entity @e[limit=1,tag=pa8_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest
execute if entity @s[tag=pa9] if entity @e[limit=1,tag=pa9_item_chest,distance=..1,type=armor_stand] run function ttr:random/powerups/open_chest