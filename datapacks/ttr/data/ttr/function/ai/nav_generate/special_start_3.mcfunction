#priority 4 is enemy players
scoreboard players set #sp_priority value 4
execute as @e[tag=player_char,tag=!player_ded,type=zombie] at @s run function ttr:ai/nav_generate/special_mark_priority

#priority 3 is weapon items
scoreboard players set #sp_priority value 3
execute as @e[tag=weapon,type=armor_stand] at @s run function ttr:ai/nav_generate/special_mark_priority

#priority 1 is powerup items
scoreboard players set #sp_priority value 1
execute as @e[tag=powerup,type=armor_stand] at @s run function ttr:ai/nav_generate/special_mark_priority



#updating special nav? clear the field, first
function ttr:ai/nav_generate/special_clear_nav_layer


#start?
execute if score #area_1_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=1}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_1_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=1}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_1_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=1}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_2_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=2}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_2_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=2}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_2_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=2}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_3_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=3}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_3_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=3}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_3_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=3}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_4_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=4}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_4_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=4}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_4_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=4}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_5_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=5}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_5_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=5}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_5_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=5}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_6_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=6}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_6_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=6}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_6_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=6}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_7_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=7}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_7_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=7}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_7_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=7}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_8_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=8}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_8_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=8}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_8_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=8}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal

execute if score #area_9_sp_nav value matches 1 as @e[limit=1,tag=powerup,type=armor_stand,sort=random,scores={sp_nav_location=9}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_9_sp_nav value matches 3 as @e[limit=1,tag=weapon,type=armor_stand,sort=random,scores={sp_nav_location=9}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal
execute if score #area_9_sp_nav value matches 4 as @e[limit=1,tag=player_char,tag=!player_ded,type=zombie,sort=random,scores={sp_nav_location=9}] at @s positioned ~ 23 ~ run function ttr:ai/nav_generate/block/goal