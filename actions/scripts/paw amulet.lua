function onUse(cid, item, frompos, item2, topos) 
if item.uid == 2543 then 
queststatus = getPlayerStorageValue(cid,2543) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Paw Amulet") 
item_uid = doAddItem(cid,2218,1) 
setPlayerStorageValue(cid,2543,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
