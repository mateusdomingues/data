function onUse(cid, item, frompos, item2, topos)
wallr = getPlayerAccess(cid)
if wallr == 0 then
doSummonCreature("Dwarf Geomancer", {x=165, y=113, z=5})
else
doPlayerSendCancel(cid,"Sorry, not possible.")
return 1
end
end