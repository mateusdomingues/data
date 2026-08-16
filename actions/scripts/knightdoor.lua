-- Knight Training Room --
-- Criado por Sukx --
function onUse(cid, item, frompos, item2, topos)

reqvoc = getPlayerVocation(cid)
pos = getCreaturePosition(cid)

if item.actionid == [b][color="#FF8C00"]2502[/color][/b] then
if reqvoc == [color="#0000FF"][b]4[/b][/color] or reqvoc == [color="#0000FF"][b]4[/b][/color] then

if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y
else
pos.y = topos.y
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x
else
pos.x = topos.x
end
else
doPlayerSendTextMessage(cid,27,'Fique de frente para a porta.')
return 1
end

doTransformItem(item.uid,item.itemid+1)
doTeleportThing(cid,pos)
else
doPlayerSendTextMessage(cid,27,'Somente Knights entram aqui.')
end
return 1
else
return 0
end
end