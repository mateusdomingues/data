function onUse(cid, item, frompos, item2, topos) 
if item.uid == 3689 then 
queststatus = getPlayerStorageValue(cid,3689) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Dwarven Legs") 
item_uid = doAddItem(cid,2504,1) 
setPlayerStorageValue(cid,3689,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
