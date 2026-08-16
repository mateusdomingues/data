local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 40)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1000, 900, 400, 200)
local arr = { 
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}

function getCombatFormulas(cid, lv, maglv)
	local formula_min = -((lv*0.25 + maglv*30) * 109.0)
	local formula_max = -((lv*0.25 + maglv*30) * 110.0)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local area = createCombatArea(arr)
setCombatArea(combat, area)
function onCastSpell(cid, var)
	if getPlayerAccess(cid) >= 3 then
	return doCombat(cid, combat, var)
	end
	function getPlayerReset(cid)
		local query = db.getResult("SELECT `reset` FROM `players` WHERE `id`= "..getPlayerGUID(cid))
		return query:getDataInt("reset") <= 0 and 0 or query:getDataInt("reset")
	end
	if getPlayerReset(cid) < 3 then
	doSendMagicEffect(getThingPos(cid), 2)
	doPlayerSendCancel(cid, "Voce nao tem reset suficiente para usar essa magia.")
	return false
	end
	return doCombat(cid, combat, var)
end