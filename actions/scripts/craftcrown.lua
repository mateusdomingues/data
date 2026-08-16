-- Mining V2.6
-- Please understand this is more of a bug fix release
-- Coded by Roman, some credits to twiz for giving an example of his V1.0
function onUse(cid, item, frompos, item2, topos)
Level = getPlayerLevel(cid)
ClubSkill = getPlayerSkillLevel(cid, SKILL_CLUB)
if item2.actionid == 403 and         -- set the action id of rocks
Level >= 40   -- set the level requirement to be able to mine
and
ClubSkill >= 70  -- set the club skill requirement to be able to mine
then 
rand = math.random(1,2000)
if rand < 20 then
doPlayerSendTextMessage(cid,22,"You crafted an crown helmet.")              
doAddItem(cid,2491,1)
elseif rand == 700 then
doPlayerSendTextMessage(cid,22,"You crafted an crown armor.")              
doAddItem(cid,2487,1)                
elseif rand == 950 then
doPlayerSendTextMessage(cid,22,"You crafted an crown legs.")
doAddItem(cid,2488,1)
elseif rand == 900 then
doPlayerSendTextMessage(cid,22,"You crafted an crown shield.")              
doAddItem(cid,2519,1)
elseif rand == 1000 then
doPlayerSendTextMessage(cid,22,"You crafted an fire sword.")              
doAddItem(cid,2392,1)
elseif rand == 1100 then
doPlayerSendTextMessage(cid,22,"You crafted an boots of haste.")              
doAddItem(cid,2195,1)
elseif rand >800 and rand <1000 then
doCreatureAddHealth(cid,-25)
doPlayerSendTextMessage(cid,22,"You lost hitpoints due to exhaustion of crafting.")
elseif rand >700 and rand <800 then
doCreatureAddHealth(cid,-200)
doPlayerSendTextMessage(cid,22,"You lost hitpoints due to exhaustion of crafting.")
elseif rand >2000 then
doPlayerSendTextMessage(cid,22,"Earthquake!")
doCreatureAddHealth(cid,-300)
elseif rand >= 105 and rand <150 then
end
doSendMagicEffect(topos,3)
doPlayerAddSkillTry(cid,1,1)
doPlayerSay(cid,"Argg!",1)
else
 doPlayerSendCancel(cid,"Para craftar crown voc� precisa de level 40 e de 70 de club.")
end
return 1
end