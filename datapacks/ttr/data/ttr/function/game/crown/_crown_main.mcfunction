#make sure values exist
scoreboard players add #coins_highest value 0
scoreboard players add #royal_ID value 0

#need a player with more than 10 coins!
scoreboard players set #crown_state value 1
execute unless entity @e[tag=player_char,scores={universalCoins=11..}] run scoreboard players set #crown_state value 0
execute if score #player_count value matches ..1 run scoreboard players set #crown_state value 0

#hide
execute if score #crown_state value matches 0 unless entity @s[x=8,y=8,z=8,distance=..1] run tp @s 8 20 8 0 0
execute if score #crown_state value matches 0 run scoreboard players set #coins_highest value -1

#do the thing!
execute if score #crown_state value matches 1.. run function ttr:game/crown/active