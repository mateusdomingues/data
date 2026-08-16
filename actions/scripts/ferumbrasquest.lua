function onUse(cid, item, frompos, item2, topos)

	if item.uid == 8894 then
 	queststatus = getPlayerStorageValue(cid,8894)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a dragon scale helmet.")
 	doAddItem(cid,2506,1)
 	setPlayerStorageValue(cid,8894,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 