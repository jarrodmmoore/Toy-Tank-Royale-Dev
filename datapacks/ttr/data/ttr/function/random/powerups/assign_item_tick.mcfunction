scoreboard players add #give_itemTick value 1
execute if score #give_itemTick value matches 5.. run scoreboard players set #give_itemTick value 1

scoreboard players operation @s itemTick = #give_itemTick value

#what does this do?
#it assigns each new tank to check for item pickups every 4 ticks (at 5Hz)
#we want to stagger this out so TPS stays more or less consistent

#this is done for performance. having EVERY tank check for collision with EVERY item on the field 20x per second is needlessly expensive (@e[distance=..1] isn't great)