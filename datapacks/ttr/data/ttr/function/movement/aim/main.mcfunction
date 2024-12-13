#aim??
execute if entity @s[tag=!first_person] at @s rotated as @s positioned ~ ~1 ~ positioned ^ ^ ^5 run function ttr:movement/aim/raycast/check
execute if entity @s[tag=first_person] at @s rotated as @s positioned ~ ~1 ~ positioned ^ ^ ^8 rotated ~ 0 run function ttr:movement/aim/raycast/found_location

tp @e[limit=1,sort=nearest,tag=my_model_2] ~ ~-1.2 ~ facing entity @e[limit=1,sort=nearest,type=marker,tag=lookyhere] eyes

scoreboard players set #recursions value 8
execute rotated as @e[limit=1,sort=nearest,tag=my_model_2,type=armor_stand] rotated ~ 0 positioned ~ ~.5 ~ run function ttr:movement/aim/show_aim

kill @e[limit=1,sort=nearest,type=marker,tag=lookyhere]