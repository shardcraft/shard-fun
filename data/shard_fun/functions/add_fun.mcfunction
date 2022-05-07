# Add fun when player fulfills <condition>.
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={walk=430..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={crouch=130..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={sprint=560..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={swim=220..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={dive=197..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={boat=800..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={strider=800..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={horse=968..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={aviate=3000..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={craft=1..}] fun 4
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={smelt=1..}] fun 1
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,scores={brew=1..}] fun 2

# Remove the amount of <condition> when fun is granted.
scoreboard players remove @a[scores={walk=430..}] walk 430
scoreboard players remove @a[scores={crouch=130..}] crouch 130
scoreboard players remove @a[scores={sprint=560..}] sprint 560
scoreboard players remove @a[scores={swim=220..}] swim 220
scoreboard players remove @a[scores={dive=197..}] dive 197
scoreboard players remove @a[scores={boat=800..}] boat 800
scoreboard players remove @a[scores={strider=800..}] strider 800
scoreboard players remove @a[scores={horse=968..}] horse 980
scoreboard players remove @a[scores={aviate=3000..}] aviate 3000
scoreboard players remove @a[scores={craft=1..}] craft 1
scoreboard players remove @a[scores={smelt=1..}] smelt 1
scoreboard players remove @a[scores={brew=1..}] brew 1
