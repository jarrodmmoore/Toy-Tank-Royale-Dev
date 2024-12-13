tag @s remove inControl
tag @s remove inGame
scoreboard players set @s cosmeticMenu 0
scoreboard players set @s bookCooldown 30

clear @s

team join nocollide @s
gamemode adventure
tp @s 8 47 8 180 0

#temporary values
scoreboard players set @s char_set_x 8
scoreboard players set @s char_set_y 31
scoreboard players set @s char_set_z 8
scoreboard players set @s faceDirection 1
scoreboard players set @s shootCooldown 120

#done tutorial
execute if entity @s[scores={tutorial=2000..}] run scoreboard players set @s tutorial 0

#no items
scoreboard players set @s hasItem2 0
scoreboard players set @s hasItem3 0
scoreboard players set @s hasItem4 0
scoreboard players set @s hasItem5 0
scoreboard players set @s hasItem6 0
scoreboard players set @s hasItem7 0
scoreboard players set @s hasItem8 0
scoreboard players set @s hasItem9 0
scoreboard players set @s vel_multiplier 170
scoreboard players set @s cooldown_mult 100
scoreboard players set @s infinite_bounce 0
tag @s remove extra_life

effect clear @s speed
effect clear @s haste
effect clear @s absorption
effect clear @s regeneration

scoreboard players reset @s coins
scoreboard players reset @s points

execute at @s run playsound minecraft:entity.iron_golem.death master @s ~ ~100000 ~ 1000000 1.9

tellraw @s ["",{"translate":"ttr.game.you_left_the_game","color":"#FF6688"}]
title @s subtitle [""]
title @s title [""]

#update sidebar display in the next few ticks
scoreboard players set #sidebar_update value 38

#recalculate team balance NOW! it's possible that multiple players may check team balance on the same tick.
function ttr:game/team_availability