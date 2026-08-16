function onUse(cid, item, frompos, item2, topos) 
 
local outfit = getCreatureOutfit(item2.uid) 
 
if item.itemid == 7409 then 
doSetCreatureOutfit(cid, outfit, 3600000 ) 
doCreatureSay(cid, "Cloned!",TALKTYPE_ORANGE_1)
doSendMagicEffect(getCreaturePosition(cid),2) 
end 
end
