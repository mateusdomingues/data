--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 53)


function getCombatFormulas(cid, lv, maglv)
	local formula_min = -((lv*0.25 + maglv*30) * 99.0)
	local formula_max = -((lv*0.25 + maglv*30) * 100.0)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local distanceCombat = createCombatObject()
setCombatParam(distanceCombat, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(distanceCombat, COMBAT_PARAM_EFFECT, 53)


function getCombatFormulas(cid, lv, maglv)
	local formula_min = -((lv*0.25 + maglv*3) * 83.0)
	local formula_max = -((lv*0.25 + maglv*3) * 85.0)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

setCombatCallback(distanceCombat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

function onCastSpell(cid, var)
	if(variantToNumber(var) ~= 0) then
		return doCombat(cid, distanceCombat, var)
	end
	if getPlayerAccess(cid) >= 3 then
	return doCombat(cid, combat, var)
	end
	function getPlayerReset(cid)
		local query = db.getResult("SELECT `reset` FROM `players` WHERE `id`= "..getPlayerGUID(cid))
		return query:getDataInt("reset") <= 0 and 0 or query:getDataInt("reset")
	end
	if getPlayerReset(cid) < 1 then
	doSendMagicEffect(getThingPos(cid), 2)
	doPlayerSendCancel(cid, "Voce nao tem reset suficiente para usar essa magia.")
	return false
	end
	return doCombat(cid, combat, var)
end