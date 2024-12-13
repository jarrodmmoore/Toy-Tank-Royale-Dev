scoreboard players operation #victimID value = @s playerID

scoreboard players remove @s hitpoints 1

execute if entity @s[scores={hitpoints=1..}] run scoreboard players set @s haltMovement 15
execute if entity @s[scores={hitpoints=1..}] run scoreboard players add @s shootCooldown 15
execute if entity @s[scores={hitpoints=1..}] run tag @s add tookDamage
#execute if entity @s[scores={hitpoints=1..}] run function ttr:game/hit_feed

execute if entity @s[scores={hitpoints=..0}] run function ttr:game/player_die_for_real