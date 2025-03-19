#behold! my patented actionbar index function

#each higher value of actionbarState takes priority over the lower ones
#so we can be smart about what we show the player in a complicated game
#as you'd expect: more important messages have higher priority


#1 = default display for in-game players
#show hitpoints if we've enabled multiple hitpoints
execute if score #opt_hitpoints value matches 2.. if entity @s[tag=inControl,tag=inGame,scores={actionbarState=1}] run title @s actionbar ["",{text:"❤",color:"white"},{text:" "},{score:{name:"@s",objective:"hitpoints"},color:"white"},{text:"/",color:"gray"},{score:{name:"#opt_hitpoints",objective:"value"},color:"gray"}]
execute if score #opt_hitpoints value matches ..1 if entity @s[tag=inControl,tag=inGame,scores={actionbarState=1}] run title @s actionbar [""]

#1 = default -- for spectators
execute if entity @s[tag=!inControl,scores={actionbarState=1,cosmeticMenu=..99}] run title @s actionbar [""]
execute unless score #force_turtles value matches 1 if entity @s[tag=!inControl,scores={actionbarState=1,cosmeticMenu=100..}] run title @s actionbar ["",{translate:"ttr.hotbar.choose_tank_colors",color:"light_purple",bold:false}]
execute if score #force_turtles value matches 1 if entity @s[tag=!inControl,scores={actionbarState=1,cosmeticMenu=100..}] run title @s actionbar ["",{translate:"ttr.hotbar.choose_turtle_colors",color:"light_purple",bold:false}]


#2 = burst streak
execute if entity @s[scores={actionbarState=2}] run title @s actionbar ["",{translate:"ttr.game.burst_streak",color:"white",with:[{score:{name:"@s",objective:"burstStreak"},color:"green"}]}]


#4 to 7 = tutorial messages
execute unless score #force_turtles value matches 1 if entity @s[scores={actionbarState=4}] run title @s actionbar ["",{translate:"ttr.game.use_wasd_to_move",color:"white",with:[{keybind:"key.forward",color:"yellow"},{keybind:"key.left",color:"yellow"},{keybind:"key.back",color:"yellow"},{keybind:"key.right",color:"yellow"}]}]
execute if score #force_turtles value matches 1 if entity @s[scores={actionbarState=4}] run title @s actionbar ["",{translate:"ttr.game.use_wasd_to_move.turtle",color:"white",with:[{keybind:"key.forward",color:"yellow"},{keybind:"key.left",color:"yellow"},{keybind:"key.back",color:"yellow"},{keybind:"key.right",color:"yellow"}]}]
execute unless score #force_turtles value matches 1 if entity @s[scores={actionbarState=5}] run title @s actionbar ["",{translate:"ttr.game.move_crosshair_to_aim_tank",color:"white"}]
execute if score #force_turtles value matches 1 if entity @s[scores={actionbarState=5}] run title @s actionbar ["",{translate:"ttr.game.move_crosshair_to_aim_tank.turtle",color:"white"}]
execute if entity @s[scores={actionbarState=6}] run title @s actionbar ["",{translate:"ttr.game.select_pellet_and_rmb_to_shoot",color:"white",with:[{text:"\uE001",color:"white"},{keybind:"key.use",color:"yellow"}]}]
execute if entity @s[scores={actionbarState=7}] run title @s actionbar ["",{translate:"ttr.game.press_lshift_to_leave_game",color:"white",with:[{keybind:"key.sneak",color:"yellow"}]}]


#9 = unlimited pellet bounces message
execute if entity @s[scores={actionbarState=9}] run title @s actionbar ["",{translate:"ttr.game.unlimited_pellet_bounces",color:"white"},{text:" "},{text:"[",color:"blue",bold:true},{score:{name:"@s",objective:"infBounceTime"},color:"blue",bold:true},{text:"s]",color:"blue",bold:true}]


#10 = look at your tank, silly
execute if score #global sec_timer matches ..10 if entity @s[scores={tutorial=..0,actionbarState=10}] run title @s actionbar ["",{translate:"ttr.game.free_cam",color:"green"}]
execute if score #global sec_timer matches 11.. if entity @s[scores={tutorial=..0,actionbarState=10}] run title @s actionbar ["",{translate:"ttr.game.free_cam",color:"dark_green"}]
#barely anyone will see these messages because third-person is no longer the default camera
execute unless score #force_turtles value matches 1 if score #global sec_timer matches ..10 if entity @s[scores={tutorial=1..,actionbarState=10}] run title @s actionbar ["",{translate:"ttr.game.must_look_near_tank_to_move",color:"yellow"}]
execute unless score #force_turtles value matches 1 if score #global sec_timer matches 11.. if entity @s[scores={tutorial=1..,actionbarState=10}] run title @s actionbar ["",{translate:"ttr.game.must_look_near_tank_to_move",color:"white"}]
execute if score #force_turtles value matches 1 if score #global sec_timer matches ..10 if entity @s[scores={tutorial=1..,actionbarState=10}] run title @s actionbar ["",{translate:"ttr.game.must_look_near_tank_to_move.turtle",color:"yellow"}]
execute if score #force_turtles value matches 1 if score #global sec_timer matches 11.. if entity @s[scores={tutorial=1..,actionbarState=10}] run title @s actionbar ["",{translate:"ttr.game.must_look_near_tank_to_move.turtle",color:"white"}]
#i'd like to apologize to humanity for making third-person cam the default back in v1.0.0. biggest one-line-of-code mistake EVER.
#most players could not get to grips with it... at all


#15 = dead. show respawn time if applicable
execute if score #opt_permadeath value matches 0 if entity @s[scores={actionbarState=15}] run title @s actionbar ["",{translate:"ttr.game.respawn_in_x",color:"red",with:[{score:{name:"@s",objective:"respawnTimeSec"},color:"red"}]}]
execute if score #opt_permadeath value matches 1 if entity @s[scores={actionbarState=15}] run title @s actionbar ["",{translate:"ttr.game.you_are_dead",color:"red"}]
execute if entity @s[scores={actionbarState=16}] run title @s actionbar ["",{translate:"ttr.game.press_rmb_to_respawn",color:"white",with:[{keybind:"key.use",color:"yellow"}]}]


#go back to default state after actionbarTime expires
scoreboard players remove @s[scores={actionbarTime=1..}] actionbarTime 1
execute if entity @s[scores={actionbarTime=..0,actionbarState=1..}] run scoreboard players set @s actionbarState 1