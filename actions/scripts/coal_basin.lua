local COAL_BASIN_I = 1485
local COAL_BASIN_II = 1484

function onUse(cid, item, frompos, item2, topos)
if (item.itemid == COAL_BASIN_I) then
doTransformItem(item.uid, COAL_BASIN_II)
doDecayItem(item.uid)
end
return TRUE
end