
#scoreboard setup
  scoreboard objectives add Skyblock-Setting dummy
  scoreboard objectives add Skyblock-Create dummy
  scoreboard objectives add Skyblock-ID dummy

#Default Setting
  scoreboard players set Version Skyblock-Setting 1
  scoreboard players set Island-Size Skyblock-Setting 1
  scoreboard players set Spawn-Size Skyblock-Setting 3
  #summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["spawn","skyblock"],CustomName:"{\"text\":\"Spawn\"}"}
  

#setting the spawn in create
  execute store result score spawn-x Skyblock-Create run data get entity @e[tag=spawn,limit=1] Pos[0]
  execute store result score spawn-z Skyblock-Create run data get entity @e[tag=spawn,limit=1] Pos[2]

#Debug
  scoreboard objectives setdisplay sidebar Skyblock-Setting