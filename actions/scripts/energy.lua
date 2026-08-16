--Enchanted Weapons by Kremus--

function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 7415 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7881)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2445 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7880)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2423 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7879)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2454 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7878)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7380 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7877)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7389 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7876)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2430 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7875)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2429 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7874)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7402 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7873)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7406 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7872)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7384 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7871)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7870)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7869)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2391 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7883)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7392 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7882)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)
else
doSendMagicEffect(topos,2)
doPlayerSendCancel(cid,"You can just to enchant some rare weapons.")
end
end