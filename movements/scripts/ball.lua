function onStepIn(cid, item, pos)

dir = getPlayerLookDir(cid)


if dir == 0 then
doRemoveItem(item.uid,1)
pos.y = pos.y-1
doCreateItem(2109,1,pos)

elseif dir == 1 then
doRemoveItem(item.uid,1)
pos.x = pos.x+1
doCreateItem(2109,1,pos)

elseif dir == 2 then
doRemoveItem(item.uid,1)
pos.y = pos.y+1
doCreateItem(2109,1,pos)

elseif dir == 3 then
doRemoveItem(item.uid,1)
pos.x = pos.x-1
doCreateItem(2109,1,pos)


end
end