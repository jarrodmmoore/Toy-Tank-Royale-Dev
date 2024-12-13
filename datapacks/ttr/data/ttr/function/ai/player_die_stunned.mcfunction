#scoreboard players operation #victimID value = @s playerID

scoreboard players set @s haltMovement 20
scoreboard players add @s shootCooldown 20
tag @s add stunned

#function ttr:game/hit_feed