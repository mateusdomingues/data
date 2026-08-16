--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 39)


function getSpellDamage(cid, weaponSkill, weaponAttack)
    damage_min = (weaponSkill * weaponAttack / 90) * 9.0
    damage_max = (weaponSkill * weaponAttack / 90) * 10.0

    if(damage_max < damage_min) then
        local tmp = damage_max
	  damage_max = damage_min
	  damage_min = tmp
    end
    return -damage_min, -damage_max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")

local distanceCombat = createCombatObject()
setCombatParam(distanceCombat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(distanceCombat, COMBAT_PARAM_EFFECT, 39)
setCombatParam(distanceCombat, COMBAT_PARAM_DISTANCEEFFECT, 37)


function getSpellDamage(cid, weaponSkill, weaponAttack)
    damage_min = (weaponSkill * weaponAttack / 70) * 7.0
    damage_max = (weaponSkill * weaponAttack / 70) * 8.0

    if(damage_max < damage_min) then
        local tmp = damage_max
	  damage_max = damage_min
	  damage_min = tmp
    end
    return -damage_min, -damage_max
end

setCombatCallback(distanceCombat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")

function onCastSpell(cid, var)
	if(variantToNumber(var) ~= 0) then
		return doCombat(cid, distanceCombat, var)
	end
	return doCombat(cid, combat, var)
end