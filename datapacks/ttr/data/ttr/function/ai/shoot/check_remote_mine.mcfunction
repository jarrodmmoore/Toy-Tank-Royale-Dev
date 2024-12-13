#cleanup
tag @e[type=armor_stand,tag=my_remote_mine] remove my_remote_mine

#find our mine(s)?
scoreboard players operation #checkRMineID value = @s playerID
execute as @e[type=armor_stand,tag=remote_mine] if score @s playerID = #checkRMineID value run tag @s add my_remote_mine

#try to blow other players up
scoreboard players set #findTarget value 0
execute as @e[type=armor_stand,tag=my_remote_mine] at @s positioned ~-7 ~-1 ~-1 as @e[tag=player_char,type=zombie,dx=14,dy=4,dz=2] unless score @s playerID = #checkRMineID value run scoreboard players add #findTarget value 1
execute as @e[type=armor_stand,tag=my_remote_mine] at @s positioned ~-1 ~-1 ~-7 as @e[tag=player_char,type=zombie,dx=2,dy=4,dz=14] unless score @s playerID = #checkRMineID value run scoreboard players add #findTarget value 1

#don't blow yourself up, idiot
execute as @e[type=armor_stand,tag=my_remote_mine] at @s positioned ~-8 ~-1 ~-2 as @e[tag=player_char,type=zombie,dx=16,dy=4,dz=4] if score @s playerID = #checkRMineID value run scoreboard players set #findTarget value -1
execute as @e[type=armor_stand,tag=my_remote_mine] at @s positioned ~-2 ~-1 ~-8 as @e[tag=player_char,type=zombie,dx=4,dy=4,dz=16] if score @s playerID = #checkRMineID value run scoreboard players set #findTarget value -1

#no mine? feel free to place wherever
execute unless entity @e[type=armor_stand,tag=my_remote_mine] run scoreboard players set #findTarget value 1

#think fast!!
execute if score #findTarget value matches ..0 run scoreboard players set @s[scores={aiSkill=3..4}] aiThinkCooldown 10
execute if score #findTarget value matches ..0 run scoreboard players set @s[scores={aiSkill=5..}] aiThinkCooldown 3