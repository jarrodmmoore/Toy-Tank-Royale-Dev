scoreboard players operation #player_id value = @s playerID
execute as @e[type=armor_stand,tag=remote_mine] if score @s playerID = #player_id value run tag @s add im_yours

execute unless entity @e[limit=1,tag=im_yours,type=armor_stand] run function ttr:shoot/deploy_mine_remote
execute if entity @e[limit=1,tag=im_yours,type=armor_stand] run function ttr:shoot/detonate_remote_mine

tag @e[tag=im_yours,type=armor_stand] remove im_yours