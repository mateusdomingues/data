--Calculed by ta4e--
--For tibia 8.31--
--Made in 07/11/08--
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
local area = createCombatArea(AREA_SQUARE1X1)
setCombatArea(combat, area)

function getSpellDamage(cid, weaponSkill, weaponAttack)
    damage_min = (weaponSkill * weaponAttack / 30) * 1.15
    damage_max = (weaponSkill * weaponAttack / 30) * 1.33

    if(damage_max < damage_min) then
        local tmp = damage_max
	  damage_max = damage_min
	  damage_min = tmp
    end
    return -damage_min, -damage_max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")

function onCastSpell(cid, var)
    return doCombat(cid, combat, var)
end  
