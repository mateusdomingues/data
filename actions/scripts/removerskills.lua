function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5488 then 
queststatus = getPlayerStorageValue(cid,5488) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Remover Skills Rune") 
item_uid = doAddItem(cid,2270,1) 
setPlayerStorageValue(cid,5488,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
