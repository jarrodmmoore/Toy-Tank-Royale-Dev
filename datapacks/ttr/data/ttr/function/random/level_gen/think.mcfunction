#elimination mode? ignore dead players for arena size
execute if score #opt_permadeath value matches 1 unless score #opt_arenasize value matches 1 as @e[type=zombie,tag=player_char,tag=player_ded] run scoreboard players remove #player_count_levelgen value 1

#no players? ignore any offsets and shrink to 0
execute if score #player_count value matches ..0 run scoreboard players set #player_count_levelgen value 0

#can't shrink to less than 1 size if players exist
execute if score #player_count value matches 1.. if score #player_count_levelgen value matches ..0 run scoreboard players set #player_count_levelgen value 1

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
execute if score #opt_permadeath value matches 1 as @e[tag=player_char,type=zombie,tag=!player_ded] at @s run function ttr:random/level_gen/count_area_players
execute if score #opt_permadeath value matches 0 as @e[tag=player_char,type=zombie] at @s run function ttr:random/level_gen/count_area_players

#what can we do?
scoreboard players set #grow_viable value 1
scoreboard players set #transform_viable value 1
scoreboard players set #shrink_viable value 1

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

#less players than active areas? can't grow
execute if score #player_count_levelgen value < #active_areas value run scoreboard players set #grow_viable value 0
execute if score #active_areas value matches 9.. run scoreboard players set #grow_viable value 0

#more players than active areas? can't shrink
execute if score #player_count_levelgen value > #active_areas value run scoreboard players set #shrink_viable value 0
execute if score #active_areas value matches ..1 run scoreboard players set #shrink_viable value 0

#can't transform if there's only one square around
execute if score #active_areas value matches ..1 run scoreboard players set #transform_viable value 0

#don't transform if we really need to shrink down
scoreboard players operation #check_shrink value = #active_areas value
scoreboard players operation #check_shrink value -= #player_count_levelgen value
execute if score #check_shrink value matches 2.. run scoreboard players set #transform_viable value 0

#pick one option at random
tag @e[type=marker,tag=pick_viable] remove pick_viable
execute if score #grow_viable value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=1}] add pick_viable
execute if score #transform_viable value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=2}] add pick_viable
execute if score #shrink_viable value matches 1 run tag @e[type=marker,tag=randomize,scores={randomize=3}] add pick_viable
scoreboard players operation #pick_option value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=pick_viable] randomize

#do thing
scoreboard players set #arena_change_success value 0
execute if score #pick_option value matches 1 unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/try_grow
execute if score #pick_option value matches 2 unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/try_transform
execute if score #pick_option value matches 3 unless score #opt_teamlayout value matches 1.. run function ttr:random/level_gen/try_shrink

#do it again in a while
execute if score #active_areas value matches ..1 run scoreboard players set #level_gen_time value 800
execute if score #active_areas value matches 2 run scoreboard players set #level_gen_time value 750
execute if score #active_areas value matches 3 run scoreboard players set #level_gen_time value 700
execute if score #active_areas value matches 4 run scoreboard players set #level_gen_time value 650
execute if score #active_areas value matches 5 run scoreboard players set #level_gen_time value 600
execute if score #active_areas value matches 6 run scoreboard players set #level_gen_time value 550
execute if score #active_areas value matches 7 run scoreboard players set #level_gen_time value 500
execute if score #active_areas value matches 8 run scoreboard players set #level_gen_time value 450
execute if score #active_areas value matches 9.. run scoreboard players set #level_gen_time value 400

#modified tranform rate?
execute unless score #opt_transformrate value matches 2 run function ttr:random/level_gen/modified_transform_rate

#try again relatively soon if nothing happened
execute if score #arena_change_success value matches 0 if score #player_count value matches 1.. run scoreboard players add #arena_change_fails value 1
execute if score #arena_change_success value matches 0 run scoreboard players set #level_gen_time value 100
execute if score #arena_change_success value matches 0 if score #arena_change_fails value matches 6.. run scoreboard players set #level_gen_time value 20
execute if score #arena_change_success value matches 0 if score #arena_change_fails value matches 30.. run scoreboard players set #level_gen_time value 10

#reset fail count if transform was successful
execute if score #arena_change_success value matches 1 run scoreboard players set #arena_change_fails value 1

#quickly shrink down to 0 if no players exist
execute if score #player_count value matches 0 run scoreboard players set #level_gen_time value 80