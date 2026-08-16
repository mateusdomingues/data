local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)
function getCombatFormulas(cid, lv, maglv)
local formula_min = -((lv*0.25 + maglv*30) * 50.0)
local formula_max = -((lv*0.25 + maglv*30) * 52.0)

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
addDamageCondition(condition, 7, 2000, -250000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end




