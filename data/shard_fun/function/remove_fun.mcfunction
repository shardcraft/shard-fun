# Tag non-op player with non-pvp deaths.
tag @a[scores={deaths=1..,pvpDeaths=0},gamemode=!creative,gamemode=!spectator] add dead

# Lower the player's fun by one tier on death.
scoreboard players set @a[tag=dead,scores={funLevel=1}] fun 0
scoreboard players set @a[tag=dead,scores={funLevel=2}] fun 0
scoreboard players set @a[tag=dead,scores={funLevel=3}] fun 13548
scoreboard players set @a[tag=dead,scores={funLevel=4}] fun 50323
scoreboard players set @a[tag=dead,scores={funLevel=5}] fun 121935

# Remove the death tag from the now alive player.
scoreboard players set @a deaths 0
scoreboard players set @a pvpDeaths 0
tag @a[tag=dead] remove dead
