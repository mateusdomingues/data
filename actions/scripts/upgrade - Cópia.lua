
local messagetype = MESSAGE_EVENT_ORANGE
local fetishs = {
    [7800] = {chance = 100, amount = 250, set = setItemAttack, get = getItemAttack, name = "attack"},
    [7801] = {chance = 80, amount = 250, set = setItemAttack, get = getItemAttack, name = "attack"},
    [7802] = {chance = 60, amount = 250, set = setItemAttack, get = getItemAttack, name = "attack"},
    [7803] = {chance = 40, amount = 250, set = setItemAttack, get = getItemAttack, name = "attack"},
    [7804] = {chance = 20, amount = 250, set = setItemAttack, get = getItemAttack, name = "attack"},
    [7850] = {chance = 100, amount = 250, set = setItemAttack, get = getItemAttack, name = "attack"}, -- only given when access >= 5
}
local minmax = {
    min1 = 7800, -- minimum of the random fetishs for access < 5
    max1 = 7804, -- maximum of the random fetishs for access < 5
    min2 = 7850, -- minimum of the random fetishs for access >= 5
    max2 = 7850, -- maximum of the random fetishs for access >= 5
}
-- WARNING: look further down and your eyes will burn. --
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if item.actionid == 0 then
        local new = getPlayerAccess(cid) >= 5 and math.random(minmax.min2, minmax.max2) or math.random(minmax.min1, minmax.max1)
        local text = "You remove the dust and revealed that it is a "..fetishs[new].chance.."% fetish for "..fetishs[new].name.." +"..fetishs[new].amount.."."..(fetishs[new].destroy ~= nil and " It has a slight chance of breaking your item." or "")
        doPlayerSendTextMessage(cid, messagetype, text)
        doSetItemActionId(item.uid, new)
        doSetItemSpecialDescription(item.uid, text)
        setItemName(item.uid, fetishs[new].chance.."% fetish for "..fetishs[new].name.." +"..fetishs[new].amount)
    elseif fetishs[item.actionid] ~= nil then
        if fetishs[item.actionid].get(itemEx.uid) > 2407 then
            if itemEx.actionid < 105 then
                local amount = math.max(0, itemEx.actionid - 100)
                local chance = math.random(0, 50)
                local text = fetishs[item.actionid].name.." enchant on "..getItemNameById(itemEx.itemid).." failed."
                if chance <= fetishs[item.actionid].chance then
                    fetishs[item.actionid].set(itemEx.uid, (fetishs[item.actionid].get(itemEx.uid)+fetishs[item.actionid].amount))
                    text = getItemNameById(itemEx.itemid).." "..fetishs[item.actionid].name.." +"..fetishs[item.actionid].amount.."."
                elseif fetishs[item.actionid].destroy ~= nil or fetishs[item.actionid].destroy == TRUE then
                    if math.random(0, 1) == 1 then
                        doRemoveItem(itemEx.uid)
                        text = getItemNameById(itemEx.itemid).." has been destroyed."
                    end
                end
                doPlayerSendTextMessage(cid, messagetype, text)
                doSetItemActionId(itemEx.uid, 100+(amount+1))
                setItemName(itemEx.uid, getItemNameById(itemEx.itemid).." (Level "..(amount+1)..")")
                doSendMagicEffect(toPosition, (chance <= fetishs[item.actionid].chance and 13 or 2))
                                doSendAnimatedText(toPosition, (chance <= fetishs[item.actionid].chance and "Success!" or "Failed!"),(chance <= fetishs[item.actionid].chance and TEXTCOLOR_WHITE or TEXTCOLOR_RED))
                doRemoveItem(item.uid)
            else
                doPlayerSendCancel(cid, "This weapon has already been enchanted 5 times.")
            end
        else
            doPlayerSendCancel(cid, "This item may not be enchanted.")
        end
    else
        doPlayerSendCancel(cid, "Sorry, not possible.")
    end
        return TRUE
end
