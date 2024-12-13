scoreboard players set @a actionbarState 20
scoreboard players set @a actionbarTime 30
title @a actionbar ["",{"translate":"ttr.misc.player_modified_settings","with":[{"selector":"@s"}],"color":"green"}]
execute as @a[distance=1..] at @s run playsound block.amethyst_block.hit master @s ~ 100000 ~ 1 1 .75