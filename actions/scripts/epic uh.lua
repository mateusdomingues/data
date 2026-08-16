function onUse(cid, item, frompos, item2, topos) 
if item.uid == 6549 then 
queststatus = getPlayerStorageValue(cid,6549) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Epic UH") 
item_uid = doAddItem(cid,2296,1) 
setPlayerStorageValue(cid,6549,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
