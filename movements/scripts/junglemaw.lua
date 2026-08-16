-- Planta q morde - By Conde Sapo

function onStepIn(cid, item, pos)
    if isPlayer(cid) == 1 then
        -- Passou Player
        doSendMagicEffect(pos, 0)
    elseif isCreature(cid) == 1 then
        -- Passou Bicho
        doSendMagicEffect(pos, 3)
    end
    doCreatureAddHealth(cid, -30)
    doTransformItem(item.uid,4209)
    doDecayItem(item.uid)
    return 1
end

function onAddItem(moveitem, tileitem, pos)
    -- Objeto jogado
    doSendMagicEffect(pos, 2)
    doTransformItem(tileitem.uid,4209)
    doDecayItem(tileitem.uid)
    return 1
end