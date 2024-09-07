# Make sure all players are in the pvp team.
execute if score global clocks matches 0 run team join pvp @a[team=!debug]

# Do fun stuff.
execute if score global clocks matches 0 run advancement grant @a only shard_fun:survival/root
execute if score global clocks matches 0 run function shard_fun:add_fun
execute if score global clocks matches 0 run execute if entity @a[scores={deaths=1..}] run function shard_fun:remove_fun
execute if score global clocks matches 0 run function shard_fun:update_fun_level
execute if score global clocks matches 0 run function shard_fun:update_soul_tools

# Modify wandering traders to sell soul_tools.
execute if score global clocks matches 0 run execute as @e[type=minecraft:wandering_trader,limit=1,tag=!trade_soulAxe] run function shard_fun:wandering_trader/soul_axe
execute if score global clocks matches 0 run execute as @e[type=minecraft:wandering_trader,limit=1,tag=!trade_soulHoe] run function shard_fun:wandering_trader/soul_hoe
execute if score global clocks matches 0 run execute as @e[type=minecraft:wandering_trader,limit=1,tag=!trade_soulPickaxe] run function shard_fun:wandering_trader/soul_pickaxe
execute if score global clocks matches 0 run execute as @e[type=minecraft:wandering_trader,limit=1,tag=!trade_soulShovel] run function shard_fun:wandering_trader/soul_shovel

# Migrate old Soul Tools to the new format.
execute if score global clocks matches 0 run function shard_fun:migration

# Debug
execute if score global clocks matches 0 run tell @a[team=debug] shard_fun
