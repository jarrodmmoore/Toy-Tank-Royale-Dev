#aim??
execute if entity @s[tag=!first_person] at @s rotated as @s positioned ~ ~1 ~ positioned ^ ^ ^5 run function ttr:control/node/13/movement/aim/raycast/check
execute if entity @s[tag=first_person] at @s rotated as @s positioned ~ ~1 ~ positioned ^ ^ ^8 rotated ~ 0 run function ttr:control/node/13/movement/aim/raycast/found_location

tp 0000000d-0000-0000-0000-000000000003 ~ ~-1.2 ~ facing entity 000001a4-0000-0000-0000-000000000045 eyes

scoreboard players set #recursions value 8
execute rotated as 0000000d-0000-0000-0000-000000000003 rotated ~ 0 positioned ~ ~.5 ~ run function ttr:control/node/13/movement/aim/show_aim

kill 000001a4-0000-0000-0000-000000000045