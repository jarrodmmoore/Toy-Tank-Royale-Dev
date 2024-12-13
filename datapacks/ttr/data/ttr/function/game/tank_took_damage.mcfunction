scoreboard players set @s invulTime 30
particle crit ~ ~.8 ~ 0.2 0.2 0.2 .6 20 force @a
particle large_smoke ~ ~.8 ~ 0.2 0.2 0.2 .01 2 force @a
playsound minecraft:entity.iron_golem.hurt master @a ~ ~5 ~ 2 1.3
playsound minecraft:item.shield.break master @a ~ ~5 ~ 2 .4

execute unless entity @s[tag=ai] run tag @e[limit=1,tag=pl_self,tag=tookDamage] remove tookDamage
execute if entity @s[tag=ai] run tag @s remove tookDamage