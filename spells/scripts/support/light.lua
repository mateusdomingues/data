function onCastSpell(cid, var)
	local pos = getCreaturePosition(cid)
	doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)
	return doSetCreatureLight(cid, 10, 120, 30000)
end