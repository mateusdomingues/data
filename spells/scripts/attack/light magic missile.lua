--Calculed by ta4e--
--For tibia 8.22--
--Made in 12/09/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)


function getCombatFormulas(cid, lv, maglv)
	local formula_min = -((lv*0.25 + maglv*3) * 0.28)
	local formula_max = -((lv*0.25 + maglv*3) * 0.43)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end


setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end