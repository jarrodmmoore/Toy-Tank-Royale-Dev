#no shrink tag (prevents a bug where the arena can immediately shrink to 0 if arena size is -2 or lower)
scoreboard players set #no_ds_shrink value 0

#no other players? shrink down to a 1 size arena
tag @s add c_self
execute if score #ai_count value matches ..0 unless entity @a[tag=inControl,tag=!c_self] unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/default_setup
execute if score #ai_count value matches 1.. unless entity @a[tag=inControl] unless entity @e[tag=ai,tag=!c_self] unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/default_setup
tag @s remove c_self

#player count UPDATE
scoreboard players set #player_count value 0
execute as @a[tag=inControl] run scoreboard players add #player_count value 1
scoreboard players operation #player_count value += #ai_count value
scoreboard players set #player_count_alive value 0
execute as @a[tag=inControl,scores={deathTime=..0}] run scoreboard players add #player_count_alive value 1

#player count, but for level gen
scoreboard players operation #player_count_levelgen value = #player_count value
execute if score #opt_arenasize value matches 0 run scoreboard players operation #player_count_levelgen value += #opt_arenasize_mod value
execute if score #opt_arenasize value matches 1 run scoreboard players operation #player_count_levelgen value = #opt_arenasize_mod value

#count how many players in each area
scoreboard players set #area_1 value 0
scoreboard players set #area_2 value 0
scoreboard players set #area_3 value 0
scoreboard players set #area_4 value 0
scoreboard players set #area_5 value 0
scoreboard players set #area_6 value 0
scoreboard players set #area_7 value 0
scoreboard players set #area_8 value 0
scoreboard players set #area_9 value 0
execute as @e[tag=player_char,tag=!player_ded] at @s run function ttr:random/level_gen/count_area_players

#count active squares
scoreboard players set #active_areas value 0
execute if score #area_1_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_2_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_3_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_4_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_5_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_6_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_7_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_8_active value matches 1 run scoreboard players add #active_areas value 1
execute if score #area_9_active value matches 1 run scoreboard players add #active_areas value 1

#grow arena if needed
execute if score #player_count_levelgen value > #active_areas value if score #active_areas value matches ..8 unless score #no_grow value matches 1 unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/try_grow
scoreboard players set #no_grow value 0

#shrink down if needed
scoreboard players operation #check_shrink value = #active_areas value
scoreboard players operation #check_shrink value -= #player_count_levelgen value
execute if score #check_shrink value matches 2.. if score #active_areas value matches 2.. unless score #no_ds_shrink value matches 1 unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/try_shrink