function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5489 then 
queststatus = getPlayerStorageValue(cid,5489) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Você achou um(a) Max Power Rune") 
item_uid = doPlayerAddItem(cid,2275,1) 
setPlayerStorageValue(cid,5489,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O baú está vazio.") 
end 
else 
return 0 
end 
return 1 
end
