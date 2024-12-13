scoreboard players set #is_pellet value 0

#execute as @e[limit=1,sort=nearest,tag=p_can_hit,tag=!p_self,tag=!i_m_safe,tag=!player_ded] if entity @s[tag=pellet] run scoreboard players set #is_pellet value 1
#execute as @e[distance=..1,tag=p_can_hit,tag=!p_self] if score @s playerID = #pelly_id value run tag @s add i_m_safe
#execute if score #is_pellet value matches 0 run tp @s @e[limit=1,sort=nearest,tag=p_can_hit,tag=!p_self,tag=!i_m_safe,tag=!player_ded]
##execute if score #is_pellet value matches 0 run tp @s[tag=!super_pellet] @e[limit=1,sort=nearest,tag=p_can_hit,tag=!p_self,tag=!i_m_safe,tag=!player_ded]
##i think this line of code is inefficient? idk, better keep it saved just to be safe. point blank hit detect code has caused me so much trouble... i'm scared to touch it
##tag @e[limit=1,sort=nearest,tag=i_m_safe] remove i_m_safe
#tag @e[tag=i_m_safe] remove i_m_safe

#teleport to target for a nice burst
execute as @e[distance=..1,tag=p_can_hit,type=zombie] if score @s playerID = #pelly_id value run tag @s add i_m_safe
execute if score #is_pellet value matches 0 run tp @s @e[limit=1,sort=nearest,tag=p_can_hit,tag=!p_self,tag=!i_m_safe,tag=!player_ded,type=zombie]
tag @e[tag=i_m_safe,type=zombie] remove i_m_safe

execute at @s positioned ~ ~-.5 ~ run function ttr:pellet/hit_detect_2
#execute at @s positioned ~ ~-.5 ~ run function ttr:pellet/hit_detect_1