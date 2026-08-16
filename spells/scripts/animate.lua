local function doTargetCorpse(cid, position)
	position.stackpos = 255
	local corpse = getThingFromPos(position)
	if(corpse.uid > 0 and isCorpse(corpse.uid) and isMoveable(corpse.uid) and getCreatureSkullType(cid) ~= SKULL_BLACK) then
		doRemoveItem(corpse.uid)
		doConvinceCreature(cid, doCreateMonster("Alma", position))

		doSendMagicEffect(position, 49)
		return true
	end

        doPlayerSendCancel(cid, "Sorry, not possible.")
	return false
end

function onCastSpell(cid, var)
	local position = variantToPosition(var)
	if(position.x ~= 0 and position.y ~= 0) then
		return doTargetCorpse(cid, position)
	end

        doPlayerSendCancel(cid, "Sorry, not possible.")
	return false
end
