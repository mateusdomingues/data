local remove = "no" -- Coloque "no" caso queria que o item seja infinito. 
local pos = {x=800, y=408, z=7} -- posição do templo 
 
function onUse(cid, item, frompos, item2, topos) 
if item2.uid == cid then 
doTeleportThing(cid, pos) 
doSendMagicEffect(getPlayerPosition(cid), 10) 
if remove == "no" then 
doRemoveItem(item.uid, 1) 
end 
else 
doPlayerSendCancel(cid, "Use on yourself") 
end 
end



