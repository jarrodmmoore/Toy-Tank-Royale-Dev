#super pellet isn't lazy on its "lazy" ticks
#this is because they're faster and need to check collision more often

scoreboard players set #damage_source value 4

tp @s ^ ^ ^.45
execute at @s run function ttr:pellet/particles
particle flame ^ ^1.5 ^-1.1 0 0 0 0 1
execute positioned ~ ~.5 ~ unless entity @e[distance=..1,tag=p_can_hit,tag=!p_self] run scoreboard players add @s lifetime 1
execute unless entity @s[scores={lifetime=1..}] if entity @s[scores={playerID=1..}] positioned ~ ~.5 ~ run function ttr:pellet/check_for_enemy_point_blank

execute store result score @s char_x run data get entity @s Pos[0] 1000
execute store result score @s char_z run data get entity @s Pos[2] 1000

#get change in pos
scoreboard players operation @s mvmt_dx = @s char_x
scoreboard players operation @s mvmt_dx -= @s dummy_x
scoreboard players operation @s mvmt_dz = @s char_z
scoreboard players operation @s mvmt_dz -= @s dummy_z

#DEBUG
#execute unless entity @s[scores={mvmt_dx=0}] run tellraw @a ["",{"text":"mvmt_dx="},{"score":{"name":"@s","objective":"mvmt_dx"}}]
#execute unless entity @s[scores={mvmt_dz=0}] run tellraw @a ["",{"text":"mvmt_dz="},{"score":{"name":"@s","objective":"mvmt_dz"}}]

execute unless entity @s[tag=bouncy] at @s unless block ^ ^1 ^ #ttr:pellet_okay run function ttr:pellet/hit_wall_3
execute unless entity @s[tag=bouncy] at @s unless block ^ ^1 ^-.3 #ttr:pellet_okay run function ttr:pellet/hit_wall_3
execute if entity @s[tag=bouncy] at @s unless block ^ ^1 ^ #ttr:pellet_okay run function ttr:pellet/hit_wall_4

#start looking to hit people after being alive for a bit
scoreboard players set #damage_source value 4
execute if entity @s[scores={lifetime=1..}] run function ttr:pellet/hit_detect_1

#sync it up again
scoreboard players operation @s dummy_x = @s char_x
scoreboard players operation @s dummy_z = @s char_z