function onUse(cid, item, frompos, item2, topos)
rw = getItemRWInfo(item.uid)
if rw and 1 then
if rw and 2 then
doShowTextDialog(cid, 2597, '                                                                                                                                                                                                                                                           ')
else
doShowTextDialog(cid, 2597, 'text')
end
else
if item.itemid == 2597 then
doShowTextDialog(cid, 2597, 'text')
end
end
return 1
end
