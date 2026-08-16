--Enchanted Weapons by Kremus--

function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 7415 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7775)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2445 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7774)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2423 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7773)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2454 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7772)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7380 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7771)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7389 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7770)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2430 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7769)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2429 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7768)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7402 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7767)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7406 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7766)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7384 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7765)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7764)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7763)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2391 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7777)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7392 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7776)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)
else
doSendMagicEffect(topos,2)
doPlayerSendCancel(cid,"You can just to enchant some rare weapons.")
end
end