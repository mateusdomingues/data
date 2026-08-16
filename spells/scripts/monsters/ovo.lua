
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 2695)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end