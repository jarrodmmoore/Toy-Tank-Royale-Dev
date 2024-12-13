#calculate total hitpoints of all tanks
scoreboard players set #total_hitpoints value 0
execute as @a[tag=inControl,scores={deathTime=..0}] run scoreboard players operation #total_hitpoints value += @s hitpoints
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,tag=!player_ded] run scoreboard players operation #total_hitpoints value += @s hitpoints

#calculate max possible hitpoints of all tanks
scoreboard players operation #max_hitpoints value = #player_count_alive value
scoreboard players operation #max_hitpoints value *= #opt_hitpoints value

#get % health of all combined living players
scoreboard players set #100 value 100
scoreboard players operation #total_hitpoints value *= #100 value
scoreboard players operation #total_hitpoints value /= #max_hitpoints value

#more likely to spawn medkits when combined % is low
scoreboard players operation #item_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..20}] randomize
#execute if score #total_hitpoints value matches 100.. if score #item_roll value matches 1 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 90..99 if score #item_roll value matches 1 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 80..89 if score #item_roll value matches 1..2 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 70..79 if score #item_roll value matches 1..3 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 60..69 if score #item_roll value matches 1..4 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 50..59 if score #item_roll value matches 1..5 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 40..49 if score #item_roll value matches 1..6 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 30..39 if score #item_roll value matches 1..7 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 20..29 if score #item_roll value matches 1..8 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches 10..19 if score #item_roll value matches 1..9 run function ttr:random/powerups/spawn_medkit
execute if score #total_hitpoints value matches ..9 if score #item_roll value matches 1..10 run function ttr:random/powerups/spawn_medkit