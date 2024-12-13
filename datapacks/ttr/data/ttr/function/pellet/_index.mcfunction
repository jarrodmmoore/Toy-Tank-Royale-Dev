scoreboard players operation #backupAttackerID value = @s playerID

tag @s add p_self

scoreboard players add @s[scores={bounceCooldown=1..}] bounceCooldown 1

#must have ID or else begone
execute unless entity @s[scores={playerID=1..}] run kill @s

#pellet types
execute if entity @s[tag=basic_pellet,tag=!pellet_ded] run function ttr:pellet/basic_pellet
execute if entity @s[tag=homing_pellet,tag=!pellet_ded] run function ttr:pellet/homing_pellet
execute if entity @s[tag=burst_pellet,tag=!pellet_ded] run function ttr:pellet/burst_pellet
execute if entity @s[tag=super_pellet,tag=!pellet_ded] run function ttr:pellet/super_pellet
execute if entity @s[tag=mine,tag=!remote_mine,tag=!pellet_ded] run function ttr:pellet/mine
execute if entity @s[tag=remote_mine,tag=!pellet_ded] run function ttr:pellet/remote_mine

tag @s remove p_self