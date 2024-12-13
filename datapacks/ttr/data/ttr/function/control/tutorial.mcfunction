#gay baby jail
scoreboard players add @s tutorial 1

#pause tutorial if we're looking the wrong way
execute if entity @s[scores={actionbarState=10}] run scoreboard players remove @s tutorial 1

#tutorial messages
execute if entity @s[scores={tutorial=1..799}] run scoreboard players set @s[scores={actionbarState=..4}] actionbarTime 10
execute if entity @s[scores={tutorial=1..799}] run scoreboard players set @s[scores={actionbarState=..4}] actionbarState 4
execute if entity @s[scores={tutorial=800..1599}] run scoreboard players set @s[scores={actionbarState=..5}] actionbarTime 10
execute if entity @s[scores={tutorial=800..1599}] run scoreboard players set @s[scores={actionbarState=..5}] actionbarState 5
execute if entity @s[scores={tutorial=1600..2000}] run scoreboard players set @s[scores={actionbarState=..6}] actionbarTime 10
execute if entity @s[scores={tutorial=1600..2000}] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState 6
execute if entity @s[scores={tutorial=2001..2160}] run scoreboard players set @s[scores={actionbarState=..7}] actionbarTime 10
execute if entity @s[scores={tutorial=2001..2160}] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7

#tutorial goes a lot faster if you do things
execute if entity @s[scores={tutorial=50..789,inputDir=1..}] run scoreboard players add @s tutorial 20
execute if entity @s[tag=!first_person,scores={tutorial=850..1589}] unless entity @s[scores={rot_pitch2=-10000..10000,rot_yaw2=-10000..10000}] run scoreboard players add @s tutorial 10
execute if entity @s[tag=first_person,scores={tutorial=850..1589}] run scoreboard players add @s tutorial 6
execute if entity @s[scores={tutorial=1650..1989,shootCooldown=1..}] run scoreboard players add @s tutorial 20

#donendy done dun
execute if entity @s[scores={tutorial=2161..}] run scoreboard players set @s tutorial 0

#i need slep