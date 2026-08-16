local combat1 = createCombatObject()
local combat2 = createCombatObject()
local combat3 = createCombatObject()
local combat4 = createCombatObject()
local combat5 = createCombatObject()
local combat6 = createCombatObject()
local combat7 = createCombatObject()

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition1 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition1, CONDITION_PARAM_SPEED, -500)
setConditionFormula(condition1, -0.8, 0, -0.8, 0)
setCombatCondition(combat1, condition1)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition2 = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition2, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition2, 10, 2000, -80)
setCombatCondition(combat2, condition2)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition3 = createConditionObject(CONDITION_FIRE)
setConditionParam(condition3, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition3, 10, 2000, -80)
setCombatCondition(combat3, condition3)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition4 = createConditionObject(CONDITION_POISON)
setConditionParam(condition4, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition4, 10, 2000, -80)
setCombatCondition(combat4, condition4)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition5 = createConditionObject(CONDITION_CURSED)
setConditionParam(condition5, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition5, 10, 2000, -80)
setCombatCondition(combat5, condition5)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition6 = createConditionObject(CONDITION_FREEZING)
setConditionParam(condition6, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition6, 10, 2000, -80)
setCombatCondition(combat6, condition6)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, -0.1, -1)
local condition7 = createConditionObject(CONDITION_DAZZLED)
setConditionParam(condition7, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition7, 10, 2000, -80)
setCombatCondition(combat7, condition7)

arr1 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr2 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr3 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr4 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr5 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr6 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr7 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area5 = createCombatArea(arr5)
local area6 = createCombatArea(arr6)
local area7 = createCombatArea(arr7)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
end

local function onCastSpell4(parameters)
      doCombat(parameters.cid, parameters.combat4, parameters.var)
end

local function onCastSpell5(parameters)
      doCombat(parameters.cid, parameters.combat5, parameters.var)
end

local function onCastSpell6(parameters)
      doCombat(parameters.cid, parameters.combat6, parameters.var)
end

local function onCastSpell7(parameters)
      doCombat(parameters.cid, parameters.combat7, parameters.var)
end

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5, combat6 = combat6, combat7 = combat7 }
addEvent(onCastSpell1, 1, parameters) 
addEvent(onCastSpell2, 2, parameters) 
addEvent(onCastSpell3, 3, parameters) 
addEvent(onCastSpell4, 4, parameters)
addEvent(onCastSpell5, 5, parameters)
addEvent(onCastSpell7, 6, parameters)
addEvent(onCastSpell6, 7, parameters)

end

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