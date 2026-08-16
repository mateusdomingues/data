local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 26)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_ATTRIBUTES)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -200000, 0, -400000)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end

