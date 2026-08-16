--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setCombatCondition(combat, condition)

function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength )
    damage_min = (weaponSkill * weaponAttack * attackStrength / -2.00000) * -35.0
    damage_max = (weaponSkill * weaponAttack * attackStrength / -4.000000) * -35.0

    if(damage_max < damage_min) then
        local tmp = damage_max
	  damage_max = 100000
	  damage_min = 400000
    end
    return -damage_min, -damage_max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")


local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end