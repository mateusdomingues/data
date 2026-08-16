--Enchanted Weapons by Kremus--

function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 7415 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7866)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2445 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7865)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2423 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7864)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2454 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7863)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7380 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7862)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7389 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7861)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2430 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7860)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2429 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7859)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7402 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7858)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7406 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7857)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7384 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7856)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7855)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7854)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2391 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7868)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7392 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7867)
doSendMagicEffect(topos,14)
doSendAnimatedText(getCreaturePosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)
else
doSendMagicEffect(topos,2)
doPlayerSendCancel(cid,"You can just to enchant some rare weapons.")
end
end