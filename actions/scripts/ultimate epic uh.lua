function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5492 then 
queststatus = getPlayerStorageValue(cid,5492) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Você achou um(a) Ultimate Epic UH") 
item_uid = doPlayerAddItem(cid,2300,1) 
setPlayerStorageValue(cid,5492,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O baú está vazio.") 
end 
else 
return 0 
end 
return 1 
end
