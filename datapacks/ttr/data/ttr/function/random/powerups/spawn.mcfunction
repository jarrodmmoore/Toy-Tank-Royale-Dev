#chance to spawn medkits if playing with hitpoints
execute if score #medkit_cooldown value matches 1.. run scoreboard players remove #medkit_cooldown value 1
execute if score #opt_hitpoints value matches 2.. if entity @e[type=marker,tag=randomize,tag=!itemBanH,scores={randomize=1}] if score #medkit_cooldown value matches ..0 run function ttr:random/powerups/spawn_medkit_think


#pick something!
scoreboard players set #item_roll value 0
scoreboard players set #item_roll_b value 0
scoreboard players operation #item_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=!itemBan1,scores={randomize=1..20}] randomize
scoreboard players operation #item_roll_b value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=!itemBan2,scores={randomize=1..5}] randomize

#debug
#scoreboard players set #item_roll value 19

#no items
execute if score #opt_itemspawn value matches 0 run scoreboard players set #item_roll value -999

execute if score #item_roll value matches 1..3 run function ttr:random/powerups/spawn_homing
execute if score #item_roll value matches 4..5 run function ttr:random/powerups/spawn_burst
execute if score #item_roll value matches 6..8 run function ttr:random/powerups/spawn_super
execute if score #item_roll value matches 9..10 run function ttr:random/powerups/spawn_triple
execute if score #item_roll value matches 11..14 run function ttr:random/powerups/spawn_mine
execute if score #item_roll value matches 15 run function ttr:random/powerups/spawn_remote_mine
execute if score #item_roll value matches 16 run function ttr:random/powerups/spawn_sonic_blast
execute if score #item_roll value matches 17 run function ttr:random/powerups/spawn_tank_dash
execute if score #item_roll value matches 18 run function ttr:random/powerups/spawn_swiftness
execute if score #item_roll value matches 19 run function ttr:random/powerups/spawn_haste
execute if score #item_roll value matches 20 if score #item_roll_b value matches 1..3 run function ttr:random/powerups/spawn_absorption
execute if score #item_roll value matches 20 if score #item_roll_b value matches 4..5 run function ttr:random/powerups/spawn_infinite_bounce

kill @e[tag=item_spawnpoint,type=marker]

#set timer again
scoreboard players operation #player_count_valid value = #player_count value
execute if score #opt_permadeath value matches 1 as @e[type=zombie,tag=player_char,tag=player_ded] run scoreboard players remove #player_count_valid value 1
execute if score #player_count_valid value matches ..1 run scoreboard players set #powerup_time value 250
execute if score #player_count_valid value matches 2 run scoreboard players set #powerup_time value 170
execute if score #player_count_valid value matches 3 run scoreboard players set #powerup_time value 139
execute if score #player_count_valid value matches 4 run scoreboard players set #powerup_time value 122
execute if score #player_count_valid value matches 5 run scoreboard players set #powerup_time value 105
execute if score #player_count_valid value matches 6 run scoreboard players set #powerup_time value 88
execute if score #player_count_valid value matches 7 run scoreboard players set #powerup_time value 71
execute if score #player_count_valid value matches 8 run scoreboard players set #powerup_time value 55
execute if score #player_count_valid value matches 9 run scoreboard players set #powerup_time value 37
execute if score #player_count_valid value matches 10..12 run scoreboard players set #powerup_time value 20
execute if score #player_count_valid value matches 13..16 run scoreboard players set #powerup_time value 16
execute if score #player_count_valid value matches 17.. run scoreboard players set #powerup_time value 14

#item timer modifier
execute if score #opt_itemspawn value matches 1 run scoreboard players set #number value 150
execute if score #opt_itemspawn value matches 3 run scoreboard players set #number value 65

execute unless score #opt_itemspawn value matches 0 unless score #opt_itemspawn value matches 2 run scoreboard players operation #powerup_time value *= #number value

scoreboard players set #number value 100
execute unless score #opt_itemspawn value matches 0 unless score #opt_itemspawn value matches 2 run scoreboard players operation #powerup_time value /= #number value