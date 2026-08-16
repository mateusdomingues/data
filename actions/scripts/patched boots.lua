function onUse(cid, item, frompos, item2, topos) 
if item.uid == 4587 then 
queststatus = getPlayerStorageValue(cid,4587) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Patched Boots") 
item_uid = doAddItem(cid,2641,1) 
setPlayerStorageValue(cid,4587,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
