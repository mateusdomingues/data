local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 500000)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 25)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 25)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 25)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, -200)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
