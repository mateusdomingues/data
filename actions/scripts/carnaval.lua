-- Bag de Carnaval - by Conde Sapo

function onUse(cid, item, frompos)
if frompos.x == 65535 then
-- tah na BP
if item.actionid == 3001 then
-- Deluxe
rand = math.random(1,5)
if rand == 1 then
outfit = {lookType = 220} -- Serpent Spawn
elseif rand == 2 then
outfit = {lookType = 201} -- Demon
elseif rand == 3 then
outfit = {lookType = 244} -- Juggernaut
elseif rand == 4 then
outfit = {lookType = 55} -- Behemoth
elseif rand == 5 then
outfit = {lookType = 91} -- Rahemos (Abrigado Claudioo pelo n�mero do LookType)
end

elseif item.actionid == 3002 then
-- UnCommon
rand = math.random(1,5)
if rand == 1 then
outfit = {lookType = 47} -- Quara Hydromancer
elseif rand == 2 then
outfit = {lookType = 237} -- Diabolic Imp
elseif rand == 3 then
outfit = {lookType = 78} -- Banshee
elseif rand == 4 then
outfit = {lookType = 257} -- Frost Giant (Abrigado Claudioo pelo n�mero do LookType)
elseif rand == 5 then
outfit = {lookType = 99} -- Lich
end

elseif item.actionid == 3003 then
-- Common
rand = math.random(1,5)
if rand == 1 then
outfit = {lookType = 7} -- Orc Warrior
elseif rand == 2 then
outfit = {lookType = 96} -- Pirate Cutthroat
elseif rand == 3 then
outfit = {lookType = 214} -- Dworc Voodoomaster
elseif rand == 4 then
outfit = {lookType = 70} -- Dwarf Guard
elseif rand == 5 then
outfit = {lookType = 23} -- Minotaur Mage
end
end
if doRemoveItem(cid,item.itemid,1) == TRUE then
doPlayerSay(cid,"I\'m bad!",16)
end

doSetCreatureOutfit(cid, outfit, 600000 )
doSendMagicEffect(frompos,12)
else
doPlayerSendCancel(cid,"Carry with you first!")
end
return 1
end