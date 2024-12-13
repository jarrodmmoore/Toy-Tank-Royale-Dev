#this is the minecart riding an armor stand that holds the player in place, i.e. our camera

#the armor stand is moved via teleportation and the visual interpolation carries over to the player
#this lets us (mostly) control the camera in a smooth and simple manner without teleporting the player rapidly
#(we want to avoid rapidly teleporting the player because it makes minecraft very angry)
#limitation: we have no control over what direction the player looks in

kill 00000005-0000-0000-0000-000000000004
kill 00000005-0000-0000-0000-000000000005

#this should probably be executed by a player, summons where the function is run
summon armor_stand ~ ~1 ~ {UUID:[I;5,0,0,4],Tags:["input","input_base","tp_up","setlife"],Invulnerable:1b,NoGravity:1b,Glowing:0b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:minecart",UUID:[I;5,0,0,5],Invulnerable:1b,Tags:["input","input_minecart","setlife"]}]}
execute as @e[tag=tp_up] at @s run tp @s ~ ~-.5 ~
scoreboard players set @e[tag=setlife,limit=2,sort=nearest] lifespan 20
scoreboard players operation @e[tag=setlife,limit=2,sort=nearest] playerID = @s playerID
tag @e[tag=setlife] remove setlife
tag @e[tag=tp_up,limit=1] remove tp_up