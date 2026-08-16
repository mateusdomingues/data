function onUse(cid, item, frompos, item2, topos)
rw = getItemRWInfo(item.uid)
if rw and 1 then
if rw and 2 then
doShowTextWindow(cid, 2597)
else
doShowTextWindow(cid, 2597)
end
else
if item.itemid == 2597 then
doShowTextWindow(cid, 2597)
end
end
return 1
end


