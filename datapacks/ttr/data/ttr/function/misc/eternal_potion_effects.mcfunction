effect give @a[tag=inControl] invisibility 100000 1 true
effect clear @a[tag=!inControl] invisibility

effect give @a resistance 100000 100 true
effect give @a night_vision 100000 100 true
effect clear @a[tag=!inControl] fire_resistance

effect clear @a[tag=!inControl] blindness
effect clear @a[tag=!inControl] slowness

effect clear @a[tag=inControl,scores={controlState=1..,haltMovement=..0}] blindness
effect clear @a[tag=inControl,scores={controlState=1..}] slowness

effect give @a weakness 100000 15 true

effect give @a minecraft:saturation 100000 100 true