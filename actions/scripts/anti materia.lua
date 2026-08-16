function onUse(cid, item, frompos, item2, topos) 
if item.uid == 5497 then 
queststatus = getPlayerStorageValue(cid,5497) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Anti-Materia Rune") 
item_uid = doAddItem(cid,2305,1) 
setPlayerStorageValue(cid,5497,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
