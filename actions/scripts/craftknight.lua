-- Mining V2.6
-- Please understand this is more of a bug fix release
-- Coded by Roman, some credits to twiz for giving an example of his V1.0
function onUse(cid, item, frompos, item2, topos)
Level = getPlayerLevel(cid)
ClubSkill = getPlayerSkillLevel(cid, SKILL_CLUB)
if item2.actionid == 402 and         -- set the action id of rocks
Level >= 25   -- set the level requirement to be able to mine
and
ClubSkill >= 40  -- set the club skill requirement to be able to mine
then 
rand = math.random(1,2000)
if rand < 20 then
doPlayerSendTextMessage(cid,22,"You crafted an warrior helmet.")              
doAddItem(cid,2475,1)
elseif rand == 700 then
doPlayerSendTextMessage(cid,22,"You crafted an knight armor.")              
doAddItem(cid,2476,1)                
elseif rand == 800 then
doPlayerSendTextMessage(cid,22,"You crafted an knight legs.")
doAddItem(cid,2477,1)
elseif rand == 900 then
doPlayerSendTextMessage(cid,22,"You crafted an guardian shield.")              
doAddItem(cid,2515,1)
elseif rand == 1000 then
doPlayerSendTextMessage(cid,22,"You crafted an knight axe.")              
doAddItem(cid,2430,1)
elseif rand >800 and rand <1000 then
doCreatureAddHealth(cid,-25)
doPlayerSendTextMessage(cid,22,"You lost hitpoints due to exhaustion of crafting.")
elseif rand >700 and rand <800 then
doCreatureAddHealth(cid,-100)
doPlayerSendTextMessage(cid,22,"You lost hitpoints due to exhaustion of crafting.")
elseif rand >2000 then
doPlayerSendTextMessage(cid,22,"Earthquake!")
doCreatureAddHealth(cid,-200)
elseif rand >= 105 and rand <150 then
end
doSendMagicEffect(topos,3)
doPlayerAddSkillTry(cid,1,1)
doPlayerSay(cid,"Argg!",1)
else
 doPlayerSendCancel(cid,"Para craftar knight voc� precisa de level 25 e de 40 de club.")
end
return 1
end