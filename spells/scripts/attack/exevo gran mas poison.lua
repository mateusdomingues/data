local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_PLANTATTACK)
function getCombatFormulas(cid, lv, maglv)
local formula_min = -((lv*0.25 + maglv*30) * 42.0)
local formula_max = -((lv*0.25 + maglv*30) * 44.0)

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

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 8)
addDamageCondition(condition, 7, 2000, -500000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end




