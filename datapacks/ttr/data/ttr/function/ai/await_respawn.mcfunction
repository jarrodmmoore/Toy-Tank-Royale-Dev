#ded
execute unless entity @s[tag=player_ded] run tag @s add player_ded

#allow respawn after time's up
scoreboard players remove @s[scores={respawnTime=1..}] respawnTime 1
execute if entity @s[scores={respawnTime=..0}] if score #opt_permadeath value matches 0 run function ttr:ai/mutate_positive
execute if entity @s[scores={respawnTime=..0}] if score #opt_permadeath value matches 0 run function ttr:ai/reset_ai