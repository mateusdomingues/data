-- Mining V2.6
-- Please understand this is more of a bug fix release
-- Coded by Roman, some credits to twiz for giving an example of his V1.0
function onUse(cid, item, frompos, item2, topos)
Level = getPlayerLevel(cid)
ClubSkill = getPlayerSkillLevel(cid, SKILL_CLUB)
if item2.actionid == 400 and         -- set the action id of rocks
Level >= 3   -- set the level requirement to be able to mine
and
ClubSkill >= 10  -- set the club skill requirement to be able to mine
then 
rand = math.random(1,2000)
if rand < 20 then
doPlayerSendTextMessage(cid,22,"You crafted an leather helmet.")              
doAddItem(cid,2461,1)
elseif rand == 800 then
doPlayerSendTextMessage(cid,22,"You crafted an leather armor.")              
doAddItem(cid,2467,1)                
elseif rand > 700 then
doPlayerSendTextMessage(cid,22,"You crafted an leather legs.")
doAddItem(cid,2649,1)
elseif rand == 900 then
doPlayerSendTextMessage(cid,22,"You crafted an wooden shield.")              
doAddItem(cid,2512,1)
elseif rand == 750 then
doPlayerSendTextMessage(cid,22,"You crafted an leather boots.")              
doAddItem(cid,2643,1)
elseif rand >900 and rand <1000 then
doCreatureAddHealth(cid,-20)
doPlayerSendTextMessage(cid,22,"You lost hitpoints due to exhaustion of crafting.")
elseif rand >600 and rand <950 then
doCreatureAddHealth(cid,-100)
doPlayerSendTextMessage(cid,22,"You lost hitpoints due to exhaustion of crafting.")
elseif rand >2000 then
doPlayerSendTextMessage(cid,22,"Earthquake!")
doCreatureAddHealth(cid,-100)
elseif rand >= 105 and rand <150 then
end
doSendMagicEffect(topos,3)
doPlayerAddSkillTry(cid,1,1)
doPlayerSay(cid,"Argg!",1)
else
 doPlayerSendCancel(cid,"Para craftar leather voc� precisa de level 3 e de 10 de club.")
end
return 1
end