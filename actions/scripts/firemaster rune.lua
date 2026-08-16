function onUse(cid, item, frompos, item2, topos) 
if item.uid == 3653 then 
queststatus = getPlayerStorageValue(cid,3653) 
if queststatus == -1 or queststatus == 0 then 
doPlayerSendTextMessage(cid,22,"Voc� achou um(a) Epic Firemaster Rune") 
item_uid = doAddItem(cid,2306,1) 
setPlayerStorageValue(cid,3653,1) 
 
else 
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.") 
end 
else 
return 0 
end 
return 1 
end
