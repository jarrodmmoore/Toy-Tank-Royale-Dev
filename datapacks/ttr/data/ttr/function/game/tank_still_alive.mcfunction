scoreboard players set @s invulTime 60
particle totem_of_undying ~ ~.8 ~ 0.2 0.2 0.2 .3 20 force @a
playsound minecraft:item.totem.use master @a ~ ~10 ~ 4 1

tag @e[limit=1,tag=pl_self,tag=livin] remove livin
execute if entity @s[tag=ai] run tag @s remove livin