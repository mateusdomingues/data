function onUse(cid, item, frompos, item2, topos)

	if item.uid == 8896 then
 	queststatus = getPlayerStorageValue(cid,8896)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found an ancienterror chaku.")
 	doPlayerAddItem(cid,7421,1)
 	setPlayerStorageValue(cid,8896,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 