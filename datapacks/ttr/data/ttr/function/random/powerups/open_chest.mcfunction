tag @e[limit=1,sort=nearest,tag=item_chest,distance=..2,type=armor_stand] add get_this_chest

scoreboard players operation #got_item value = @e[limit=1,sort=nearest,tag=get_this_chest,type=armor_stand] itemID

#don't consume medkits if at full health
execute if score #got_item value matches 14 unless entity @s[tag=ai] run scoreboard players operation @s hitpoints = @a[limit=1,tag=pl_self] hitpoints
execute if score #got_item value matches 14 if score @s hitpoints >= #opt_hitpoints value run tag @e[tag=get_this_chest,type=armor_stand] remove get_this_chest
execute if score #got_item value matches 14 if score @s hitpoints >= #opt_hitpoints value run scoreboard players set #got_item value -99

#particles
execute if score #got_item value matches -1..1 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle instant_effect ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 2 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:pink_wool"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 3 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:yellow_wool"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 4 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:red_wool"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 5 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:white_wool"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 6 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:lava"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 7 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:ender_chest"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 8 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:blue_wool"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 9 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle block{block_state:"minecraft:green_wool"} ~ ~1 ~ 0.1 0.1 0.1 1 5 force @a[distance=..60]
execute if score #got_item value matches 14 at @e[limit=1,sort=nearest,tag=get_this_chest] run particle heart ~ ~1.5 ~ 0 0 0 1 1 force @a[distance=..60]

#sound
execute if score #got_item value matches -1 at @e[limit=1,sort=nearest,tag=get_this_chest] run playsound minecraft:block.note_block.chime master @a ~ ~10 ~ 2 1.5
execute if score #got_item value matches 0 at @e[limit=1,sort=nearest,tag=get_this_chest] run playsound minecraft:block.note_block.chime master @a ~ ~10 ~ 2 2
execute if score #got_item value matches 1 at @e[limit=1,sort=nearest,tag=get_this_chest] run playsound minecraft:block.note_block.chime master @a ~ ~10 ~ 2 1.65
execute if score #got_item value matches 2..9 at @e[limit=1,sort=nearest,tag=get_this_chest] run playsound minecraft:block.wood.break master @a ~ ~10 ~ 2 1
execute if score #got_item value matches 10..14 at @e[limit=1,sort=nearest,tag=get_this_chest] run playsound minecraft:block.beacon.activate master @a ~ ~10 ~ 2 2

#get the item
execute as @a[limit=1,tag=pl_self] at @s run function ttr:random/powerups/player_gain_item
execute if entity @s[tag=ai] at @s run function ttr:random/powerups/ai_gain_item

#coins exist? faster pickup checking for 1sec
execute if score #opt_allow_coins value matches 1.. run scoreboard players set @s fastPickup 20

#kill chest
kill @e[tag=get_this_chest,type=armor_stand]