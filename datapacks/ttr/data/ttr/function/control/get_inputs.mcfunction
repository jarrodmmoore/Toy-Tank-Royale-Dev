#shoutout to Godlander

#store all inputs of executing player on themselves

#xin/dxin
#execute store result score @s xin run data get entity @s Motion[0] 100000

#zin/dzin
#execute store result score @s zin run data get entity @s Motion[2] 100000

#ride
execute store success score @s ride run data get entity @s RootVehicle

#^ LOL JUST KIDDING
#there's no more player motion on entity rides in Minecraft 1.21.2.
#epic prank



#shoutout to Gibbsly and RockNRed who figured out how to fix this mess
#(this is a super weird modified version of what they suggested. i engineered this to match my old functionality above)

scoreboard players set @s xin 0
scoreboard players set @s zin 0

#axes
scoreboard players set #fwd_back value 0
scoreboard players set #left_right value 0
execute if predicate ttr:w run scoreboard players add #fwd_back value 1
execute if predicate ttr:s run scoreboard players remove #fwd_back value 1
execute if predicate ttr:d run scoreboard players add #left_right value 1
execute if predicate ttr:a run scoreboard players remove #left_right value 1
#pushing W and S at the same time cancels out vertical axis, same idea for horizontal

#get input direction (treating this like a joystick) (0 is neutral)
scoreboard players set #test value 0
#cardinal
execute if score #fwd_back value matches 1.. run scoreboard players set #test value 1
execute if score #left_right value matches 1.. run scoreboard players set #test value 3
execute if score #fwd_back value matches ..-1 run scoreboard players set #test value 5
execute if score #left_right value matches ..-1 run scoreboard players set #test value 7
#diagonal
execute if score #fwd_back value matches 1.. if score #left_right value matches 1.. run scoreboard players set #test value 2
execute if score #fwd_back value matches ..-1 if score #left_right value matches 1.. run scoreboard players set #test value 4
execute if score #fwd_back value matches ..-1 if score #left_right value matches ..-1 run scoreboard players set #test value 6
execute if score #fwd_back value matches 1.. if score #left_right value matches ..-1 run scoreboard players set #test value 8

#quit early if no input
execute if score #test value matches 0 run return 0
#=====

summon marker ~ ~ ~ {UUID:[I;6,6,6,0]}
#aka 00000006-0000-0006-0000-000600000000

#xin / zin used to max out at 1748, so that's what we're going to try and emulate
execute if score #test value matches 1 rotated ~180 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 2 rotated ~225 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 3 rotated ~270 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 4 rotated ~315 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 5 rotated ~ 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 6 rotated ~45 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 7 rotated ~90 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748
execute if score #test value matches 8 rotated ~135 0 run tp 00000006-0000-0006-0000-000600000000 ^ ^ ^0.01748

#compare marker coordinates to ourself
execute store result score @s xin run data get entity @s Pos[0] 100000
execute store result score @s zin run data get entity @s Pos[2] 100000
execute store result score #test value run data get entity 00000006-0000-0006-0000-000600000000 Pos[0] 100000
execute store result score #test2 value run data get entity 00000006-0000-0006-0000-000600000000 Pos[2] 100000
scoreboard players operation @s xin -= #test value
scoreboard players operation @s zin -= #test2 value

#xin, zin are handled. done.

#done
kill 00000006-0000-0006-0000-000600000000