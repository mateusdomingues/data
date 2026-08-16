function onUse(cid, item, frompos, item2, topos)
    if getPlayerAccess(cid) ~=0 then
 topleft={x=135, y=34, z=7}
 bottonright={x=140, y=60, z=7}
 maxmonsters= nil

 checking={x=topleft.x, y=topleft.y, z=topleft.z} --Do Not Change
 summonedtotal=0 --Do Not Change

 repeat
     checkforsummon=0 --Do Not Change
     spawnrate=math.random(0,10)
     if spawnrate==0 and summonedtotal ~= maxmonsters then
   species=math.random(1,10)

   if species == 1 then
       checkforsummon = doSummonCreature("Giant Spider",checking)
   elseif species == 2 then
       checkforsummon = doSummonCreature("Hydra",checking)
   elseif species == 3 then
       checkforsummon = doSummonCreature("Demon",checking)
   elseif species == 4 then
       checkforsummon = doSummonCreature("Warlock",checking)
   elseif species == 5 then
       checkforsummon = doSummonCreature("Banshee",checking)
   elseif species == 6 then
       checkforsummon = doSummonCreature("orc warlord",checking)
   elseif species == 7 then
       checkforsummon = doSummonCreature("Hero",checking)
   else
       checkforsummon = doSummonCreature("Behemoth",checking)
   end

   -- if species<5 and species >=0 then
       -- checkforsummon=doSummonCreature("dragon",checking)
   -- elseif species == 5 then
       -- checkforsummon=doSummonCreature("dragon lord",checking)
   -- end

   if checkforsummon~= 0 then
       summonedtotal=summonedtotal+1
   end
     end

     checking.x=checking.x+1
     if checking.x>bottonright.x then
   checking.x=topleft.x
   checking.y=checking.y+1
     end
 until checking.y > bottonright.y

 --doPlayerSay(cid,"/B Dragons have been spotted near the city!",23)
 print("Number of creatures summoned:",summonedtotal)
    end
    return 1
end