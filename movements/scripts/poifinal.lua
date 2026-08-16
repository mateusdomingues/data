function onStepIn(cid, item, pos)

local storage1 = 7891
local storage2 = 7892
local storage3 = 7893
local storage4 = 7894
local storage5 = 7895

-- teleports config
local teleport1 ={x=278, y=33, z=11}
local teleport2 ={x=278, y=35, z=11}

    if item.actionid == 22222 then
        if getPlayerStorageValue(cid,storage1) == 1 and getPlayerStorageValue(cid,storage2) == 1 and getPlayerStorageValue(cid,storage3) == 1 and getPlayerStorageValue(cid,storage4) == 1 and getPlayerStorageValue(cid,storage5) == 1 then
            doTeleportThing(cid,teleport1)
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Congratulations! You did all seals and now is one step closer to the reward!')
        else
            doTeleportThing(cid,teleport2)
            doPlayerSendCancel(cid,"You need to complete all seals to pass.")
        end
    end
end