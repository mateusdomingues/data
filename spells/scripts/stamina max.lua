local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 45)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
	doPlayerAddStamina(cid, 2520)
	return doCombat(cid, combat, var)
end
