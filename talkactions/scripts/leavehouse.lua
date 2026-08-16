function onSay(cid, words, param)
	if getTileHouseInfo(getCreaturePosition(cid)) ~= FALSE then
		if getHouseOwner(getTileHouseInfo(getCreaturePosition(cid))) == getPlayerGUID(cid) then
			setHouseOwner(getTileHouseInfo(getCreaturePosition(cid)), 0)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have successfully left your house.")
		else
			doPlayerSendCancel(cid, "You are not the owner of this house.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
		end
	else
		doPlayerSendCancel(cid, "You are not inside a house.")
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
	end
	return TRUE
end
