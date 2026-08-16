function onUse(cid, item, frompos, item2, topos)

itempos = {x=158, y=27, z=8, stackpos=1}  -- Posição da 1ª Prateleira
itemid = 1718                                                -- ID da prateleira
item3 = getThingfromPos(itempos)
item2pos = {x=159, y=27, z=8, stackpos=1}  -- Posição da 2ª Prateleira
item2id = 1718                                               -- ID da prateleira
item4 = getThingfromPos(item2pos)
item3pos = {x=158, y=26, z=8, stackpos=1}  -- Posição da 1ª parede
item3id = 1050                                                -- ID da parede
item5 = getThingfromPos(item3pos)
item4pos = {x=159, y=26, z=8, stackpos=1}  -- Posição da 2ª parede
item4id = 1050                                                -- ID da parede
item6 = getThingfromPos(item4pos)
item5pos = {x=157, y=27, z=8, stackpos=1} -- Coordenadas para aonde a 1ª prateleira irá
item5id = 1718                                               -- Id da prateleira
item7 = getThingfromPos(item5pos)
item6pos = {x=160, y=27, z=8, stackpos=1} -- Coordenadas para aonde a 2ª prateleira irá
item6id = 1718                                               -- Id da prateleira
item8 = getThingfromPos(item6pos)

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
doRemoveItem(item3.uid,1)
doRemoveItem(item4.uid,1)
doRemoveItem(item5.uid,1)
doRemoveItem(item6.uid,1)
doCreateItem(item5id,1,item5pos)
doCreateItem(item6id,1,item6pos)

elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(itemid,1,itempos)
doCreateItem(itemid,1,item2pos)
doCreateItem(item3id,1,item3pos)
doCreateItem(item4id,1,item4pos)
doRemoveItem(item7.uid,1)
doRemoveItem(item8.uid,1)
end

return 1
end