---- Blessed Wooden Stake ----
-- Mokerhamer --
function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 2916 and random == 1 then
doTransformItem(item2.uid,2917)
doSendMagicEffect(topos, 12)
doPlayerAddItem(cid,5906,1)
doSendAnimatedText(frompos,"~success~",18);
elseif item2.itemid == 2916 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,2917)
end
end
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 2956 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,2957)
doPlayerAddItem(cid,5905,1)
doSendAnimatedText(frompos,"~success~",18);
elseif item2.itemid == 2956 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,2957)
end
end
doPlayerSendCancel(cid,"You cant make dust of this.")
return 1
end