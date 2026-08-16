function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5487 then 
queststatus = getPlayerStorageValue(cid,5487) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Você achou um(a) Super Epic Mana Rune") 
item_uid = doPlayerAddItem(cid,2314,1) 
setPlayerStorageValue(cid,5487,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O baú está vazio.") 
end 
else 
return 0 
end 
return 1 
end
