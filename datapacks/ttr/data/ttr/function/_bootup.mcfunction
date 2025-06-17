#bossbars
bossbar add tank_bbar ["",{text:"tankbbar"}]

#scoreboard objectives
scoreboard objectives add carrotInput minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add carrotInput2 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add controlState dummy
scoreboard objectives add controlAnimate dummy
scoreboard objectives add inputCooldown dummy
scoreboard objectives add join minecraft.custom:minecraft.leave_game
scoreboard objectives add playerID dummy
scoreboard objectives add teamID dummy
scoreboard objectives add targetID dummy
scoreboard objectives add dummyID dummy
scoreboard objectives add actionbarState dummy
scoreboard objectives add playerNode dummy
scoreboard objectives add hitpoints dummy

scoreboard objectives add cosmeticMenu minecraft.dropped:minecraft.yellow_dye
scoreboard objectives add cosmeticMenu2 minecraft.dropped:minecraft.green_dye
scoreboard objectives add cosmeticSet1 dummy
scoreboard objectives add cosmeticSet2 dummy

scoreboard objectives add input dummy
scoreboard objectives add charTimeout dummy

scoreboard objectives add lifespan dummy

scoreboard objectives add mvmt_dx dummy
scoreboard objectives add mvmt_dy dummy
scoreboard objectives add mvmt_dz dummy
scoreboard objectives add dummy_x dummy
scoreboard objectives add dummy_y dummy
scoreboard objectives add dummy_z dummy
scoreboard objectives add active_x dummy
scoreboard objectives add active_y dummy
scoreboard objectives add active_z dummy
scoreboard objectives add char_x dummy
scoreboard objectives add char_y dummy
scoreboard objectives add char_z dummy
scoreboard objectives add char_set_x dummy
scoreboard objectives add char_set_y dummy
scoreboard objectives add char_set_z dummy
scoreboard objectives add faceDirection dummy
scoreboard objectives add lastDirection dummy
scoreboard objectives add bodyRememberX dummy
scoreboard objectives add bodyRememberZ dummy
scoreboard objectives add char_set_face dummy

scoreboard objectives add x_vel dummy
scoreboard objectives add z_vel dummy
scoreboard objectives add vel_multiplier dummy
scoreboard objectives add x_vel_desired dummy
scoreboard objectives add z_vel_desired dummy
scoreboard objectives add x_vel_current dummy
scoreboard objectives add z_vel_current dummy

scoreboard objectives add coord_xx dummy
scoreboard objectives add coord_zz dummy

scoreboard objectives add infinite_bounce dummy
scoreboard objectives add infBounceTime dummy

scoreboard objectives add sec_timer dummy

scoreboard objectives add color_solid dummy
scoreboard objectives add color_1 dummy
scoreboard objectives add color_2 dummy
scoreboard objectives add recursions dummy

scoreboard objectives add moveState dummy
scoreboard objectives add controlAnimate dummy

scoreboard objectives add jump_force dummy
scoreboard objectives add rot_yaw dummy
scoreboard objectives add rot_pitch dummy
scoreboard objectives add rot_yaw2 dummy
scoreboard objectives add rot_pitch2 dummy
scoreboard objectives add left_right dummy
scoreboard objectives add inputDir dummy
scoreboard objectives add up_down dummy
scoreboard objectives add deathTime dummy
scoreboard objectives add haltMovement dummy
scoreboard objectives add hitGround dummy

scoreboard objectives add actionbarState dummy
scoreboard objectives add actionbarTime dummy

scoreboard objectives add dCorrect dummy
scoreboard objectives add oTimer dummy
scoreboard objectives add glowy dummy

scoreboard objectives add xin dummy
scoreboard objectives add zin dummy
scoreboard objectives add ride dummy

scoreboard objectives add math dummy
scoreboard objectives add math2 dummy
scoreboard objectives add value dummy

scoreboard objectives add coins dummy
scoreboard objectives modify coins displayname ["",{translate:"ttr.display.coins",color:"white",bold:true}]
scoreboard objectives add points dummy
scoreboard objectives modify points displayname ["",{translate:"ttr.display.points",color:"white",bold:true}]
scoreboard objectives add alive dummy
scoreboard objectives modify alive displayname ["",{translate:"ttr.display.alive",color:"white",bold:true}]
scoreboard objectives add teamDisplay dummy
scoreboard objectives add addCoins dummy

scoreboard objectives add shootCooldown dummy
scoreboard objectives add shootPercent dummy
scoreboard objectives add shootCooldnPeak dummy
scoreboard objectives add cooldown_mult dummy

scoreboard objectives add cooldown_mult dummy

scoreboard objectives add hasItem2 dummy
scoreboard objectives add hasItem3 dummy
scoreboard objectives add hasItem4 dummy
scoreboard objectives add hasItem5 dummy
scoreboard objectives add hasItem6 dummy
scoreboard objectives add hasItem7 dummy
scoreboard objectives add hasItem8 dummy
scoreboard objectives add hasItem9 dummy

scoreboard objectives add sonicBlastRing dummy
scoreboard objectives add tankDash dummy
scoreboard objectives add dashDirection dummy

scoreboard objectives add bounceCooldown dummy
scoreboard objectives add color_cycle dummy
scoreboard objectives add mixTankColors trigger
scoreboard objectives add shutUp trigger
scoreboard objectives add firstPerson trigger
scoreboard objectives add thirdPerson trigger
scoreboard objectives add overHead trigger
scoreboard objectives add gameOptions trigger
scoreboard objectives add optSelect trigger
scoreboard objectives remove adminMenu

scoreboard objectives add invulTime dummy
scoreboard objectives add modelFlash dummy

scoreboard objectives add lifetime dummy

scoreboard objectives add respawnTime dummy
scoreboard objectives add respawnTimeSec dummy

scoreboard objectives add forceLevelValue dummy

scoreboard objectives add itemLifetime dummy
scoreboard objectives add itemID dummy

scoreboard objectives add tutorial dummy
scoreboard objectives add afkTime dummy

scoreboard objectives add burstStreak dummy

scoreboard objectives add bookCooldown dummy

scoreboard objectives add botNavProgress dummy

scoreboard objectives add aiSkill dummy
scoreboard objectives add aiAggression dummy
scoreboard objectives add aiGreed dummy
scoreboard objectives add aiChaotic dummy
scoreboard objectives add aiVengeful dummy
scoreboard objectives add lastKillerID dummy
scoreboard objectives add aiCoins dummy
scoreboard objectives add aiPoints dummy
scoreboard objectives add aiDummyCoins dummy
scoreboard objectives add aiDummyPoints dummy
scoreboard objectives add universalCoins dummy

scoreboard objectives add aiLogic dummy
scoreboard objectives add aiMoveTime dummy
scoreboard objectives add aiLookID dummy
scoreboard objectives add aiLookTimeout dummy
scoreboard objectives add aiTargetLookTime dummy
scoreboard objectives add aiItemLookTime dummy
scoreboard objectives add aiItemLook dummy
scoreboard objectives add aiReactTime dummy
scoreboard objectives add aiLastKiller dummy
scoreboard objectives add aiTarget_x dummy
scoreboard objectives add aiTarget_z dummy
scoreboard objectives add aiTargetDir dummy
scoreboard objectives add aiTargetDir2 dummy
scoreboard objectives add aiNavTimeout dummy
scoreboard objectives add aiCarryFlag dummy

scoreboard objectives add aiSquareTime dummy
scoreboard objectives add aiSquareTime2 dummy
scoreboard objectives add aiSquareTime3 dummy
scoreboard objectives add aiPrevSquare dummy

scoreboard objectives add aiRandomOffsetT dummy
scoreboard objectives add aiRandomOffsetX dummy
scoreboard objectives add aiRandomOffsetZ dummy

scoreboard objectives add checkLOStime dummy
scoreboard objectives add aiDelayAim dummy
scoreboard objectives add aiShootImpulse dummy
scoreboard objectives add aiThinkCooldown dummy

scoreboard objectives add inputDirPrev dummy
scoreboard objectives add aiAvoidMineTime dummy

scoreboard objectives add motion_x dummy
scoreboard objectives add motion_z dummy

scoreboard objectives add char_xx dummy
scoreboard objectives add char_dxx dummy
scoreboard objectives add char_zz dummy
scoreboard objectives add char_dzz dummy

scoreboard objectives add sp_nav_location dummy

scoreboard objectives add infectPointsRed dummy
scoreboard objectives add infectPointsBlue dummy
scoreboard objectives add infectTimeMin dummy
scoreboard objectives add infectTimeSec dummy
scoreboard objectives add infectTimeTick dummy
scoreboard objectives add infectTimeTick2 dummy

scoreboard objectives add itemTick dummy
scoreboard objectives add fastPickup dummy

scoreboard objectives add tankBodyModel dummy
scoreboard objectives add tankHeadModel dummy

#teams
team add nocollide
team modify nocollide color gold
team modify nocollide collisionRule never
team modify nocollide seeFriendlyInvisibles false
team modify nocollide prefix ["",{text:"\uE010 ",color:"white"}]

team add color_green
team modify color_green color dark_green
team modify color_green collisionRule never
team modify color_green seeFriendlyInvisibles false
team add color_red
team modify color_red color red
team modify color_red collisionRule never
team modify color_red seeFriendlyInvisibles false
team add color_blue
team modify color_blue color blue
team modify color_blue collisionRule never
team modify color_blue seeFriendlyInvisibles false
team add color_yellow
team modify color_yellow color yellow
team modify color_yellow collisionRule never
team modify color_yellow seeFriendlyInvisibles false
team add color_white
team modify color_white color white
team modify color_white collisionRule never
team modify color_white seeFriendlyInvisibles false
team add color_pink
team modify color_pink color light_purple
team modify color_pink collisionRule never
team modify color_pink seeFriendlyInvisibles false
team add color_cyan
team modify color_cyan color aqua
team modify color_cyan collisionRule never
team modify color_cyan seeFriendlyInvisibles false
team add color_gray
team modify color_gray color gray
team modify color_gray collisionRule never
team modify color_gray seeFriendlyInvisibles false

team add sidebar_red
team modify sidebar_red color red
team add sidebar_blue
team modify sidebar_blue color blue

#gamerules
gamerule spawnChunkRadius 10
gamerule disablePlayerMovementCheck true
gamerule locatorBar false

#some constants
scoreboard players set #1748 value 1748
scoreboard players set #1000 value 1000
scoreboard players set #2 value 2

#no scores exist? set up defaults immediately
execute unless score #opt_playerlimit value matches 0.. run function ttr:admin_menu/restore_defaults
execute unless score #global dummyID matches 1000.. run function ttr:misc/restore_scoreboard

#hard-coded config stuff
function ttr:config

#nobody should have this trigger enabled if they can't access options menu
scoreboard players reset * optSelect