# summon temp_web
# At: Location

setblock ~ ~ ~ cobweb
summon area_effect_cloud ~ ~ ~ {Duration:80,Tags:["temp_web"]}
playsound entity.spider.step block @a ~ ~ ~ 0.8
