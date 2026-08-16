local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_MANASHIELD)
 
local area = createCombatArea(AREA_CIRCLE1X1)
setCombatArea(combat, area)
 
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end