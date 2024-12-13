execute as @e[tag=remote_mine,tag=im_yours,type=armor_stand] at @s run function ttr:pellet/mine_explode
scoreboard players set @s shootCooldown 20

#now handled elsewhere to avoid a small exploit
#scoreboard players remove @s[scores={hasItem7=1..}] hasItem7 1