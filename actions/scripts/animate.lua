function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5491 then 
queststatus = getPlayerStorageValue(cid,5491) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Você achou um(a) Animate Dead Rune") 
item_uid = doPlayerAddItem(cid,2316,1) 
setPlayerStorageValue(cid,5491,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O baú está vazio.") 
end 
else 
return 0 
end 
return 1 
end
