execute if entity @s[tag=!first_person] at 00000014-0000-0000-0000-000000000001 run function ttr:control/node/20/camera/cam_fixed
execute if entity @s[tag=first_person,tag=!overhead] at 00000014-0000-0000-0000-000000000001 run function ttr:control/node/20/camera/cam_first_person
execute if entity @s[tag=first_person,tag=overhead] at 00000014-0000-0000-0000-000000000001 run function ttr:control/node/20/camera/cam_overhead