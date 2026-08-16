function onUse(cid, item, frompos, item2, topos) 
if item.uid == 8756 then 
queststatus = getPlayerStorageValue(cid,8756) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Crystal Wand") 
item_uid = doAddItem(cid,2184,1) 
setPlayerStorageValue(cid,8756,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
