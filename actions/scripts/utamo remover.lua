function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5490 then 
queststatus = getPlayerStorageValue(cid,5490) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Você achou um(a) Utamo Remover Rune") 
item_uid = doPlayerAddItem(cid,2294,1) 
setPlayerStorageValue(cid,5490,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O baú está vazio.") 
end 
else 
return 0 
end 
return 1 
end
