function onUse(cid, item, frompos, item2, topos)

	if item.uid == 5809 then
 	queststatus = getPlayerStorageValue(cid,5809)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a soul stone.")
 	doAddItem(cid,5809,1)
 	setPlayerStorageValue(cid,5809,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 