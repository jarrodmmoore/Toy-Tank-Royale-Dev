execute if entity @s[tag=!first_person] at @e[limit=1,tag=my_char] run function ttr:control/camera/cam_fixed
execute if entity @s[tag=first_person,tag=!overhead] at @e[limit=1,tag=my_char] run function ttr:control/camera/cam_first_person
execute if entity @s[tag=first_person,tag=overhead] at @e[limit=1,tag=my_char] run function ttr:control/camera/cam_overhead