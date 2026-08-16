function onUse(cid, item, frompos, item2, topos)

status1 = getPlayerStorageValue(cid,10001)
status2 = getPlayerStorageValue(cid,10002)
status3 = getPlayerStorageValue(cid,10003)
status4 = getPlayerStorageValue(cid,10004)
status5 = getPlayerStorageValue(cid,10005)

    if item.uid == 22222 then
        if status1 == 1 and status2 == 1 and status3 == 1 and status4 == 1 and status5 == 1 then
            doTransformItem(item.uid, item.itemid + 1)
            doTeleportThing(cid, toPosition, TRUE)
        else
            doPlayerSendTextMessage(cid,24,'You need to complete all Seals.')
        end
    end
end