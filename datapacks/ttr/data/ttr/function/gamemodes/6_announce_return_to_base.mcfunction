#announce to chat
execute if entity @s[tag=red_flag] run tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.ctf.flag_returned",color:"white",bold:false,with:[{translate:"ttr.ctf.red",color:"red"},{translate:"ttr.ctf.red",color:"red"}]}]
execute if entity @s[tag=blue_flag] run tellraw @a[scores={shutUp=..0}] ["",{translate:"ttr.ctf.flag_returned",color:"white",bold:false,with:[{translate:"ttr.ctf.blue",color:"blue"},{translate:"ttr.ctf.blue",color:"blue"}]}]

#particles and sound
particle falling_dust{block_state:"minecraft:magenta_wool"} ~ ~1 ~ 0.3 0.3 0.3 1 20 force @a
execute if entity @s[tag=red_flag] as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000 1
execute if entity @s[tag=blue_flag] as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000 .6

#lazy way to respawn the flag
#kill @s
scoreboard players set @s lifespan 0