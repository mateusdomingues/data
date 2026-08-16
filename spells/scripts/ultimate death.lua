local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
function getCombatFormulas(cid, lv, maglv)
local formula_min = -((lv*0.25 + maglv*3) * 20.0)
local formula_max = -((lv*0.25 + maglv*3) * 22.0)

if(formula_max < formula_min) then
local tmp = formula_max
formula_max = formula_min
formula_min = tmp
end
return formula_min, formula_max
end

local area = createCombatArea(AREA_CROSS5X5)
setCombatArea(combat, area)

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local condition = createConditionObject(CONDITION_CURSED)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 7, 2000, -80)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end