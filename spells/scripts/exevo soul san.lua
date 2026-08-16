local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
function getCombatFormulas(cid, lv, maglv)
local formula_min = -((lv*1.3 + maglv*3) * 5.6)
local formula_max = -((lv*1.3 + maglv*3) * 6.0)

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

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end