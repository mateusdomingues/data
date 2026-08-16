local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 47)
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

function getSpellDamage(cid, weaponSkill, weaponAttack)
    damage_min = ((weaponSkill * weaponAttack / 90) * 19.0)
    damage_max = ((weaponSkill * weaponAttack / 90) * 20.0)

    if(damage_max < damage_min) then
        local tmp = damage_max
	  damage_max = damage_min
	  damage_min = tmp
    end
    return -damage_min, -damage_max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")



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
	return doCombat(cid, combat, var)end
