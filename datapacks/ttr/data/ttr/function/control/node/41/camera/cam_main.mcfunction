execute if entity @s[tag=!first_person] at 00000029-0000-0000-0000-000000000001 run function ttr:control/node/41/camera/cam_fixed
execute if entity @s[tag=first_person,tag=!overhead] at 00000029-0000-0000-0000-000000000001 run function ttr:control/node/41/camera/cam_first_person
execute if entity @s[tag=first_person,tag=overhead] at 00000029-0000-0000-0000-000000000001 run function ttr:control/node/41/camera/cam_overhead