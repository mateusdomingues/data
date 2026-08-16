--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
addDamageCondition(condition, 250000, 250000, -250000)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_PLANTATTACK)
addDamageCondition(condition, 250000, 250000, -250000)
function getCombatFormulas(cid, lv, maglv)
	local formula_min = -((lv*0.25 + maglv*3) * 2.5)
	local formula_max = -((lv*0.25 + maglv*3) * 2.8)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

local area = createCombatArea(AREA_CROSS6X6)
setCombatArea(combat, area)

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
