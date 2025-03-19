#player runs this function upon joining the world
#great opportunity to get all values n stuff set up


#go to place
tp @s 8 47 8 180 0
spawnpoint @s 8 47 8


#scoreboard players reset @s
#...nah, too bold
#and i don't wanna keep re-generating the player's ID


#sync up with global join score
scoreboard players operation @s join = #join_global value

#reset game values
scoreboard players set @s shootCooldown 100
scoreboard players set @s burstStreak 0
scoreboard players set @s tutorial 1
scoreboard players reset @s coins
scoreboard players reset @s points
scoreboard players set @s shutUp 0
scoreboard players set @s infinite_bounce 0
scoreboard players set @s vel_multiplier 170
tag @s remove inGame
scoreboard players reset @s optSelect
scoreboard players reset @s playerNode
scoreboard players reset @s mixTankColors
scoreboard players set @s cosmeticMenu 0

#need a model
scoreboard players add @s tankBodyModel 0
scoreboard players add @s tankHeadModel 0
execute if score #force_turtles value matches 1 run scoreboard players set @s tankBodyModel 1
execute if score #force_turtles value matches 1 run scoreboard players set @s tankHeadModel 1

#default tp location
scoreboard players set @s char_set_x 8
scoreboard players set @s char_set_y 31
scoreboard players set @s char_set_z 8
#hopefully this never gets used. the game is supposed to send your tank to a random spawnpoint

#reset actionbar display to default
scoreboard players set @s actionbarState 1
scoreboard players set @s actionbarTime 0
tag @s remove inControl
scoreboard players set @s inputCooldown 0

#hello
tellraw @s ["",{text:" "}]
execute unless score #force_turtles value matches 1 run tellraw @s ["",{text:"Welcome to Toy Tank Royale!",color:"#55FF77",bold:true}]
execute if score #force_turtles value matches 1 run tellraw @s ["",{text:"Welcome to Toy Turtle Royale!",color:"#55FF77",bold:true}]
tellraw @s ["",{text:"Read your guidebook to see your objective as well as available commands. "}]
execute unless entity @a[tag=inControl] run tellraw @s ["",{text:"Type ",color:"gray"},{text:"/trigger gameOptions",color:"aqua"},{text:" to change game settings.",color:"gray"}]
tellraw @s ["",{text:" "}]

#various housekeeping things...
stopsound @s
team join nocollide @s
xp set @s 0 levels
xp set @s 0 points
effect clear @s
gamemode adventure @s[tag=!admin]
clear @s[tag=!admin]
title @s times 0 65 10
title @s actionbar [""]
title @s subtitle [""]
title @s title [""]

#join the spectator team unhelpfully titled "nocollide"
team join nocollide @s

#first person camera by default (unless we've already joined before)
execute unless entity @s[scores={playerID=1000..}] run tag @s add first_person
execute unless entity @s[scores={playerID=1000..}] run scoreboard players enable @s thirdPerson
execute unless entity @s[scores={playerID=1000..}] run scoreboard players reset @s firstPerson
execute unless entity @s[scores={playerID=1000..}] run scoreboard players enable @s overHead

#get player ID if we don't have one yet
execute unless entity @s[scores={playerID=1000..}] run function ttr:join/player_get_id

#do some special stuff if we're the first player to join
tag @s add i_am_i
execute unless entity @a[tag=!i_am_i] run function ttr:join/solo_join
tag @s remove i_am_i