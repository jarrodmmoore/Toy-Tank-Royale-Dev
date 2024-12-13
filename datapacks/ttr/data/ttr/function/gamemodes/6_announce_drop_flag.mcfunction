#drop it like it's hot
tp @s ~ 30 ~
scoreboard players set @s playerID -1
tag @s remove carryFlag

#announce to chat
execute if entity @s[tag=red_flag] run tellraw @a[scores={shutUp=..0}] ["",{"translate":"ttr.ctf.dropped_flag","color":"white","bold":false,"with":[{"translate":"ttr.ctf.red","color":"red"}]}]
execute if entity @s[tag=blue_flag] run tellraw @a[scores={shutUp=..0}] ["",{"translate":"ttr.ctf.dropped_flag","color":"white","bold":false,"with":[{"translate":"ttr.ctf.blue","color":"blue"}]}]

#sound effect
execute if entity @s[tag=red_flag] as @a at @s run playsound minecraft:entity.skeleton.hurt master @s ~ 100000 ~ 100000 1
execute if entity @s[tag=blue_flag] as @a at @s run playsound minecraft:entity.skeleton.hurt master @s ~ 100000 ~ 100000 .6