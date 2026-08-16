------ Script por: Myself ------
---------  xTibia.com    ---------

function onStepIn(cid, item, pos)
if isPlayer(cid) == TRUE then
if (item.actionid == 12001) then
doPlayerSendTextMessage(cid,22,"You are the newest resident of Sphere.")
doPlayerSetTown(cid,1)

elseif (item.actionid == 12002) then
doPlayerSendTextMessage(cid,22,"You are the newest resident of Daramah.")
doPlayerSetTown(cid,2)

elseif (item.actionid == 12003) then
doPlayerSendTextMessage(cid,22,"You are the newest resident of Port Hope.")
doPlayerSetTown(cid,3)

end
end
end