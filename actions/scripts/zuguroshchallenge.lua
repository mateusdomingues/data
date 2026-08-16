-- Annihilator script by GriZzm0
-- Room check and monster removal by Tworn

--Variables used:

-- player?pos  = The position of the players before teleport.
-- player?  = Get the thing from playerpos.
--player?level = Get the players levels.
--questslevel  = The level you have to be to do this quest.
--questtatus?  = Get the quest status of the players.
--demon?pos  = The position of the demons.
--nplayer?pos  = The position where the players should be teleported too.
--trash= position to send the demons to when clearing, 1 sqm in middle of nowhere is enough
-- starting = Upper left point of the annihilator room area.
-- ending = Bottom right point of the annihilator room area.

--UniqueIDs used:

--10850 = The switch.
--10851 = DSL chest.
--10852 = The Zugurosh Sword chest.
--10853 = Cursed Axe chest.
--10854 = Horned Helmet chest.


function onUse(cid, item, frompos, item2, topos)
if item.uid == 10850 then
if item.itemid == 1946 then

player1pos = {x=47, y=356, z=3, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=48, y=356, z=3, stackpos=253}
player2 = getThingfromPos(player2pos)

player3pos = {x=49, y=356, z=3, stackpos=253}
player3 = getThingfromPos(player3pos)

player4pos = {x=50, y=356, z=3, stackpos=253}
player4 = getThingfromPos(player4pos)


  if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

  player1level = getPlayerLevel(player1.uid)
  player2level = getPlayerLevel(player2.uid)
  player3level = getPlayerLevel(player3.uid)
  player4level = getPlayerLevel(player4.uid)

  questlevel = 300

  if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

   queststatus1 = getPlayerStorageValue(player1.uid,104)
   queststatus2 = getPlayerStorageValue(player2.uid,104)
   queststatus3 = getPlayerStorageValue(player3.uid,104)
   queststatus4 = getPlayerStorageValue(player4.uid,104)

   if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
--if 1==1 then
demon1pos = {x=48, y=355, z=2}
demon2pos = {x=50, y=355, z=2}
demon3pos = {x=49, y=359, z=2}
demon4pos = {x=51, y=359, z=2}
demon5pos = {x=52, y=357, z=2}
demon6pos = {x=53, y=357, z=2}

   doSummonCreature("Zugurosh", demon1pos)
   doSummonCreature("Zugurosh", demon2pos)
   doSummonCreature("Zugurosh", demon3pos)
   doSummonCreature("Zugurosh", demon4pos)
   doSummonCreature("Zugurosh", demon5pos)
   doSummonCreature("Zugurosh", demon6pos)

nplayer1pos = {x=48, y=357, z=2}
nplayer2pos = {x=49, y=357, z=2}
nplayer3pos = {x=50, y=357, z=2}
nplayer4pos = {x=51, y=357, z=2}

   doSendMagicEffect(player1pos,2)
   doSendMagicEffect(player2pos,2)
   doSendMagicEffect(player3pos,2)
   doSendMagicEffect(player4pos,2)

   doTeleportThing(player1.uid,nplayer1pos)
   doTeleportThing(player2.uid,nplayer2pos)
   doTeleportThing(player3.uid,nplayer3pos)
   doTeleportThing(player4.uid,nplayer4pos)

  doSendMagicEffect(nplayer1pos,10)
  doSendMagicEffect(nplayer2pos,10)
  doSendMagicEffect(nplayer3pos,10)
  doSendMagicEffect(nplayer4pos,10)

  doTransformItem(item.uid,1945)

else
  doPlayerSendCancel(cid,"Sorry, not possible.")
end
   else
doPlayerSendCancel(cid,"Sorry, not possible.")
   end
  else
  doPlayerSendCancel(cid,"Sorry, not possible.")
  end
end
if item.itemid == 1945 then
-- Here is the code start:
starting={x=45, y=351, z=2, stackpos=253}
checking={x=starting.x, y=starting.y, z=starting.z, stackpos=starting.stackpos}
ending={x=66, y=362, z=2, stackpos=253}
players=0
totalmonsters=0
monster = {}
repeat
creature= getThingfromPos(checking)
if creature.itemid > 0 then
if getPlayerAccess(creature.uid) == 0 then
players=players+1
end
  if getPlayerAccess(creature.uid) ~= 0 and getPlayerAccess(creature.uid) ~= 3 then
totalmonsters=totalmonsters+1
  monster[totalmonsters]=creature.uid
   end
end
checking.x=checking.x+1
  if checking.x>ending.x then
  checking.x=starting.x
  checking.y=checking.y+1
end
until checking.y>ending.y
if players==0 then
trash= {x=65, y=366, z=2}
current=0
repeat
current=current+1
doTeleportThing(monster[current],trash)
until current>=totalmonsters
doTransformItem(item.uid,1946)
end
-- Here is the end of it

end
end
if item.uid == 10851 then
queststatus = getPlayerStorageValue(cid,171)
if queststatus == -1 then
  doPlayerSendTextMessage(cid,22,"You have found a dragon scale legs.")
  doAddItem(cid,2469,1)
  setPlayerStorageValue(cid,171,1)
else
  doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 10852 then
queststatus = getPlayerStorageValue(cid,171)
if queststatus ~= 1 then
  doPlayerSendTextMessage(cid,22,"You have found the Zugurosh Blade.")
  doAddItem(cid,7420,1)
  setPlayerStorageValue(cid,171,1)
else
  doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 10853 then
queststatus = getPlayerStorageValue(cid,171)
if queststatus ~= 1 then
  doPlayerSendTextMessage(cid,22,"You have found a cursed axe.")
  doAddItem(cid,7433,1)
  setPlayerStorageValue(cid,171,1)
else
  doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 10854 then
queststatus = getPlayerStorageValue(cid,171)
if queststatus ~= 1 then
  doPlayerSendTextMessage(cid,22,"You have found a horned helmet.")
  doAddItem(cid,2496,1)
  setPlayerStorageValue(cid,171,1)
else
  doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
return 1
end