local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 65)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doCreatureSay(cid, "+100 Soul", TALKTYPE_ORANGE_1)
	doPlayerAddSoul(cid, 100)
	return doCombat(cid, combat, var)
end
