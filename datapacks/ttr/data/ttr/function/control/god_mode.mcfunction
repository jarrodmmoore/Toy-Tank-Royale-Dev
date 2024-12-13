scoreboard players set @s vel_multiplier 333
scoreboard players set @s cooldown_mult 0
tag @s[tag=!extra_life] add extra_life

scoreboard players set @s infinite_bounce 200
scoreboard players remove @s[scores={coins=11..}] coins 1

#https://www.youtube.com/watch?v=dyIilW_eBjc
tag @s add yes_kill
execute as @e[tag=player_char] if score @s playerID = @a[limit=1,tag=yes_kill] playerID run scoreboard players set @s invulTime 20
tag @s remove yes_kill

execute unless entity @s[scores={hasItem2=10..,hasItem3=10..,hasItem4=10..,hasItem5=10..,hasItem6=10..,hasItem7=10..,hasItem8=10..,hasItem9=10..}] run function ttr:__give_all_items