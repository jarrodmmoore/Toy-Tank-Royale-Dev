#i hope this doesn't end up being disjointed

execute positioned ~-6 ~-3 ~-1 positioned ~-.5 ~ ~-.5 if entity @s[dx=13,dy=8,dz=3] run scoreboard players set #checkLOS value 0
execute if entity @s[tag=redTeam] positioned ~-6 ~-3 ~-1 positioned ~-.5 ~ ~-.5 if entity @e[type=zombie,tag=redTeam,dx=13,dy=8,dz=3] run scoreboard players set #checkLOS value 0
execute if entity @s[tag=blueTeam] positioned ~-6 ~-3 ~-1 positioned ~-.5 ~ ~-.5 if entity @e[type=zombie,tag=blueTeam,dx=13,dy=8,dz=3] run scoreboard players set #checkLOS value 0

execute positioned ~-1 ~-3 ~-6 positioned ~-.5 ~ ~-.5 if entity @s[dx=3,dy=8,dz=13] run scoreboard players set #checkLOS value 0
execute if entity @s[tag=redTeam] positioned ~-1 ~-3 ~-6 positioned ~-.5 ~ ~-.5 if entity @e[type=zombie,tag=redTeam,dx=3,dy=8,dz=13] run scoreboard players set #checkLOS value 0
execute if entity @s[tag=blueTeam] positioned ~-1 ~-3 ~-6 positioned ~-.5 ~ ~-.5 if entity @e[type=zombie,tag=blueTeam,dx=3,dy=8,dz=13] run scoreboard players set #checkLOS value 0

#debug
#execute if score #checkLOS value matches 0 run say not safe
#execute if score #checkLOS value matches 1.. run say safe