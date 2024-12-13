scoreboard players set @s invulTime 30
particle smoke ~ ~.8 ~ 0.2 0.2 0.2 .01 5 force @a
particle enchanted_hit ~ ~.8 ~ 0.2 0.2 0.2 .3 15 force @a
playsound minecraft:block.anvil.land master @a ~ ~5 ~ 2 1.4

execute unless entity @s[tag=ai] run tag @e[limit=1,tag=pl_self,tag=stunned] remove stunned
execute if entity @s[tag=ai] run tag @s remove stunned