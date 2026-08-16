--action by Nitrous for OT 8.1--

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5399 then
if item.itemid == 5399 then

nplayer1pos = {x=284, y=282, z=8}

doTeleportThing(cid,nplayer1pos)

doSendMagicEffect(nplayer1pos,10)

doSendMagicEffect(topos,6)

doSendMagicEffect(frompos,6)

end
end
return 1
end