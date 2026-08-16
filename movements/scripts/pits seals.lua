function onStepIn(cid, item, pos)
if item.uid == 10001 then
if getPlayerStorageValue(cid,7891) == -1 then
setPlayerStorageValue(cid,7891,1)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorved some energy.')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorved energy from this throne.')
end
elseif item.uid == 10002 then
if getPlayerStorageValue(cid,7892) == -1 then
setPlayerStorageValue(cid,7892,1)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorved some energy.')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorved energy from this throne.')
end
elseif item.uid == 10003 then
if getPlayerStorageValue(cid,7893) == -1 then
setPlayerStorageValue(cid,7893,1)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorved some energy.')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorved energy from this throne.')
end
elseif item.uid == 10004 then
if getPlayerStorageValue(cid,7894) == -1 then
setPlayerStorageValue(cid,7894,1)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorved some energy.')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorved energy from this throne.')
end
elseif item.uid == 10005 then
if getPlayerStorageValue(cid,7895) == -1 then
setPlayerStorageValue(cid,7895,1)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorved some energy.')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorved energy from this throne.')
end
elseif item.uid == 47852 and item.itemid == 1221 and pos == {x=278, y=35, z=11} then
if getPlayerStorageValue(cid,7891) == -1 or getPlayerStorageValue(cid,7892) == -1 or getPlayerStorageValue(cid,7893) == -1 or getPlayerStorageValue(cid,7894) == -1 or getPlayerStorageValue(cid,7895) == -1 then
doTransformItem(item.uid,item.itemid+1)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Sorry, but you did not absorb enough energy!')
else
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You absorbed enough energy! You may pass.')
end
end
return 1
end