#death cancels input here
execute if entity @s[scores={deathTime=1..}] run scoreboard players reset @s carrotInput

#one at a time now
execute if score #hotbar_check value matches 0 run function ttr:game/hotbar/check_hotbar_0
execute if score #hotbar_check value matches 1 run function ttr:game/hotbar/check_hotbar_1
execute if score #hotbar_check value matches 2 run function ttr:game/hotbar/check_hotbar_2
execute if score #hotbar_check value matches 3 run function ttr:game/hotbar/check_hotbar_3
execute if score #hotbar_check value matches 4 run function ttr:game/hotbar/check_hotbar_4
execute if score #hotbar_check value matches 5 run function ttr:game/hotbar/check_hotbar_5
execute if score #hotbar_check value matches 6 run function ttr:game/hotbar/check_hotbar_6
execute if score #hotbar_check value matches 7 run function ttr:game/hotbar/check_hotbar_7
execute if score #hotbar_check value matches 8 run function ttr:game/hotbar/check_hotbar_8