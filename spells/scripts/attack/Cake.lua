local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,51)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.5, -50, -0.7, 0)


function onCastSpell(cid, var)
local target = getCreatureTarget(cid)
if(target ~= 0) then
return doCombat(cid, combatDist, numberToVariant(target))
end
return doCombat(cid, combat, var)
end