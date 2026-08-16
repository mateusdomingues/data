local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 53)
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
local formula_min = -((lv*0.25 + maglv*30) * 55.0)
local formula_max = -((lv*0.25 + maglv*30) * 57.0)

if(formula_max < formula_min) then
local tmp = formula_max
formula_max = formula_min
formula_min = tmp
end
return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 8)
addDamageCondition(condition, 7, 2000, -700000)
setCombatCondition(combat, condition)

local area = createCombatArea(arr)
setCombatArea(combat, area)
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)end
