#get relative position inside block
scoreboard players set #1000 value 1000
execute store result score #x_pos value run data get entity @s Pos[0] 1000
execute store result score #x_pos2 value run data get entity @s Pos[0] 1
scoreboard players operation #x_pos2 value *= #1000 value
scoreboard players operation #x_pos value -= #x_pos2 value
execute store result score #z_pos value run data get entity @s Pos[2] 1000
execute store result score #z_pos2 value run data get entity @s Pos[2] 1
scoreboard players operation #z_pos2 value *= #1000 value
scoreboard players operation #z_pos value -= #z_pos2 value

#distance needed to cross block axis threshold
execute if entity @s[scores={mvmt_dx=..-1}] run scoreboard players operation #new_x value = #1000 value
execute if entity @s[scores={mvmt_dx=..-1}] run scoreboard players operation #new_x value -= #x_pos value
execute if entity @s[scores={mvmt_dx=..-1}] run scoreboard players operation #x_pos value = #new_x value
execute if entity @s[scores={mvmt_dz=..-1}] run scoreboard players operation #new_z value = #1000 value
execute if entity @s[scores={mvmt_dz=..-1}] run scoreboard players operation #new_z value -= #z_pos value
execute if entity @s[scores={mvmt_dz=..-1}] run scoreboard players operation #z_pos value = #new_z value

#distance traveled per tick
scoreboard players set #-1 value -1
scoreboard players operation #dx value = @s mvmt_dx
execute if score #dx value matches ..-1 run scoreboard players operation #dx value *= #-1 value
scoreboard players operation #dz value = @s mvmt_dz
execute if score #dz value matches ..-1 run scoreboard players operation #dz value *= #-1 value

#protect against div by zero
execute if score #x_pos value matches 0 run scoreboard players set #x_pos value 300000000
execute if score #z_pos value matches 0 run scoreboard players set #z_pos value 300000000

#higher value here gets the win
scoreboard players operation #dx value *= #1000 value
scoreboard players operation #dx value /= #x_pos value
scoreboard players operation #dz value *= #1000 value
scoreboard players operation #dz value /= #z_pos value

#debug
#tellraw @a ["",{"text":"dx="},{"score":{"name":"#dx","objective":"value"}}]
#tellraw @a ["",{"text":"dz="},{"score":{"name":"#dz","objective":"value"}}]

#breakable blocks
execute if block ~ ~1 ~ #ttr:breakable at @s unless entity @s[tag=bouncy] run function ttr:pellet/generic_burst
execute if block ~ ~1 ~ #ttr:breakable if block ~ ~2 ~ barrier run setblock ~ ~1 ~ barrier destroy
execute if block ~ ~1 ~ #ttr:breakable run setblock ~ ~1 ~ air destroy

#reflection on first hit
execute unless entity @s[scores={bounceCooldown=1..}] if score #dx value > #dz value run function ttr:pellet/reflect/try_x
execute unless entity @s[scores={bounceCooldown=1..}] unless score #dx value > #dz value run function ttr:pellet/reflect/try_z

execute unless entity @s[scores={bounceCooldown=1..}] run scoreboard players set @s bounceCooldown 1

tag @s[tag=bouncy] remove bouncy

#otherwise DIE
execute if entity @s[scores={bounceCooldown=3..}] at @s run function ttr:pellet/generic_burst