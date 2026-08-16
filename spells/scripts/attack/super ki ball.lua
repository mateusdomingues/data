--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 35)

function getSpellDamage(cid, weaponSkill, weaponAttack)
    damage_min = (weaponSkill * weaponAttack / 90) * 15.0
    damage_max = (weaponSkill * weaponAttack / 90) * 16.0

    if(damage_max < damage_min) then
        local tmp = damage_max
	  damage_max = damage_min
	  damage_min = tmp
    end
    return -damage_min, -damage_max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")

function onCastSpell(cid, var)
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