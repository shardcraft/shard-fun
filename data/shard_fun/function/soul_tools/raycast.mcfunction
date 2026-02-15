# Raycast step — check the block at the current position.
# Priority: pickaxe > axe > shovel > hoe (highest priority checked last so it overwrites)

execute if block ~ ~ ~ #minecraft:mineable/hoe run scoreboard players set @s soulTarget 4
execute if block ~ ~ ~ #minecraft:mineable/shovel run scoreboard players set @s soulTarget 3
execute if block ~ ~ ~ #minecraft:mineable/axe run scoreboard players set @s soulTarget 2
execute if block ~ ~ ~ #minecraft:mineable/pickaxe run scoreboard players set @s soulTarget 1

# If we hit a non-passthrough block that isn't in any mineable tag, stop the ray.
execute if score @s soulTarget matches 0 unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava run scoreboard players set @s soulRay 0

# Continue raycast if no target found and distance remains
scoreboard players remove @s soulRay 1
execute if score @s soulTarget matches 0 if score @s soulRay matches 1.. positioned ^ ^ ^0.5 run function shard_fun:soul_tools/raycast
