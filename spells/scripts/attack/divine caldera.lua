--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)


function getCombatFormulas(cid, lv, maglv)
	local formula_min = -((lv*0.25 + maglv*3) * 1.1)
	local formula_max = -((lv*0.25 + maglv*3) * 1.25)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")


function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end