function onStepIn(cid, item, pos)

hp = math.random(25, 100)
chance = math.random(1, 3)


if isPlayer(cid) == 1 then
if chance == 1 or chance == 2 then

doPlayerAddHealth(cid,-hp)
doSendMagicEffect(pos, 2)
doPlayerSay(cid, hp, 16)
doTransformItem(item.uid,1513)

end
end
end


function onStepOut(cid, item, pos)


doTransformItem(item.uid,1512)

end