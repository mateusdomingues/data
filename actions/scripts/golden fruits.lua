function onUse(cid, item, frompos, item2, topos) 
if item.uid == 2648 then 
queststatus = getPlayerStorageValue(cid,2648) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Golden Fruits") 
item_uid = doAddItem(cid,2137,1) 
setPlayerStorageValue(cid,2648,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
