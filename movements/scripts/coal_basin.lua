local COAL_BASIN_I = 1485
local COAL_BASIN_II = 1484

function onStepIn(cid, item, pos)
if isPlayer(cid) == 1 then
playerPos = getCreaturePosition(cid)
tilepos1 = {x=playerPos.x+1, y=playerPos.y, z=playerPos.z, stackpos=1}
tilepos2 = {x=playerPos.x-1, y=playerPos.y, z=playerPos.z, stackpos=1}
tilepos3 = {x=playerPos.x, y=playerPos.y+1, z=playerPos.z, stackpos=1}
tilepos4 = {x=playerPos.x, y=playerPos.y-1, z=playerPos.z, stackpos=1}
flame1 = getThingfromPos(tilepos1)
flame2 = getThingfromPos(tilepos2)
flame3 = getThingfromPos(tilepos3)
flame4 = getThingfromPos(tilepos4)
if (flame1.itemid == COAL_BASIN_I) and (flame2.itemid == COAL_BASIN_I) then
doTransformItem(flame1.uid, COAL_BASIN_II)
doTransformItem(flame2.uid, COAL_BASIN_II)
doDecayItem(flame1.uid)
doDecayItem(flame2.uid)
elseif (flame3.itemid == COAL_BASIN_I) and (flame4.itemid == COAL_BASIN_I) then
doTransformItem(flame3.uid, COAL_BASIN_II)
doTransformItem(flame4.uid, COAL_BASIN_II)
doDecayItem(flame3.uid)
doDecayItem(flame4.uid)
end
end
return FALSE
end