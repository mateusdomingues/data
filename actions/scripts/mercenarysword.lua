function onUse(cid, item, frompos, item2, topos)

	if item.uid == 8666 then
 	queststatus = getPlayerStorageValue(cid,8540)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a mercenary's sword.")
 	doAddItem(cid,7386,1)
 	setPlayerStorageValue(cid,8540,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 