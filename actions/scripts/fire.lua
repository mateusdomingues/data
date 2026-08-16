--Enchanted Weapons by Kremus--

function onUse(cid, item, frompos, item2, topos)

if item2.itemid == 7415 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7756)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2445 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7755)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2423 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7754)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2454 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7753)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7380 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7752)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7389 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7751)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2430 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7750)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2429 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7749)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7402 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7748)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7406 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7747)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7384 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7746)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7745)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2383 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7744)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 2391 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7758)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)

elseif item2.itemid == 7392 then
doRemoveItem(item.uid,1)
doTransformItem(item2.uid,7757)
doSendMagicEffect(topos,14)
doSendAnimatedText(getPlayerPosition(cid), "Enchanted!", TEXTCOLOR_ORANGE)
else
doSendMagicEffect(topos,2)
doPlayerSendCancel(cid,"You can just to enchant some rare weapons.")
end
end