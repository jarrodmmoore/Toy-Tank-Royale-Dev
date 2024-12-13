scoreboard players set #50 value 50
scoreboard players set #100 value 100

#decay time is player count divided by 2
execute as @e[tag=player_char,type=zombie] run scoreboard players add #crownPointTime2 value 1
scoreboard players operation #crownPointTime2 value *= #50 value
scoreboard players operation #crownPointTime2 value /= #100 value

#minimum of 1 sec
execute unless score #crownPointTime2 value matches 1.. run scoreboard players set #crownPointTime2 value 1