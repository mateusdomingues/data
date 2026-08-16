local focus = 0
local talk_start = 0
local target = 0
-- Walking --

max_x = 1 -- change the max x here. Means the NPC wont walk more to east or west as the number which is set here.

max_y = 1 --change the max y here. Means the NPC wont walk more to north or south as the number which is set here.

current_x = 0 --do nothing change here

current_y = 0 --do nothing change here

max_x = max_x - 1 --do nothing change here

max_y = max_y - 1 --do nothing change here

-- End Walking--

local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I buy swords, clubs, axes, helmets, boots, legs, shields and armors.')
  		focus = cid
  		talk_start = os.clock()

	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'royal helmet') then
  			sell(cid,2498,getCount(msg),30000)
  		elseif msgcontains(msg, 'warrior helmet') then
  			sell(cid,2475,getCount(msg),5000)
  		elseif msgcontains(msg, 'crusader helmet') then
  			sell(cid,2497,getCount(msg),6000)
  		elseif msgcontains(msg, 'crown helmet') then
  			sell(cid,2491,getCount(msg),2500)
  		elseif msgcontains(msg, 'devil helmet') then
  			sell(cid,2462,getCount(msg),1000)
  		elseif msgcontains(msg, 'mystic turban') then
  			sell(cid,2663,getCount(msg),500)
  		elseif msgcontains(msg, 'chain helmet') then
  			sell(cid,2458,getCount(msg),35)
		elseif msgcontains(msg, 'iron helmet') then
  			sell(cid,2459,getCount(msg),30)
  		elseif msgcontains(msg, 'helmets') then
  			selfSay('I buy royal (30k), warrior (5k), crusader (6k), crown (2.5k), devil (1k), chain (35gp) and iron helmets (30gp), also mystic turbans (500gp).')

  		elseif msgcontains(msg, 'steel boots') and focus == cid then
  			sell(cid,2645,getCount(msg),30000)
  		elseif msgcontains(msg, 'boh') or msgcontains(msg, 'boots of haste') and focus == cid then
  			sell(cid,2195,getCount(msg),30000)
  		elseif msgcontains(msg, 'boots')  then
  			selfSay('I buy steel boots (40k) and boots of haste (40k).')

		elseif msgcontains(msg, 'dragon scale mail') or msgcontains(msg, 'dsm') then
  			sell(cid,2492,getCount(msg),40000)
		elseif msgcontains(msg, 'golden armor') then
  			sell(cid,2466,getCount(msg),30000)
		elseif msgcontains(msg, 'crown armor') then
  			sell(cid,2487,getCount(msg),12000)
		elseif msgcontains(msg, 'knight armor') then
  			sell(cid,2476,getCount(msg),5000)
		elseif msgcontains(msg, 'blue robe') then
  			sell(cid,2656,getCount(msg),10000)
		elseif msgcontains(msg, 'plate armor') then
  			sell(cid,2463,getCount(msg),400)
		elseif msgcontains(msg, 'brass armor') then
  			sell(cid,2465,getCount(msg),200)
		elseif msgcontains(msg, 'chain armor') then
  			sell(cid,2464,getCount(msg),100)
  		elseif msgcontains(msg, 'armors')  then
  			selfSay('I buy golden (30k), crown (12k), knight (5k), plate (400gp), brass (200gp) and chain armors (100gp), also dsm (40k) and blue robes (10k).')

		elseif msgcontains(msg, 'crown legs') then
  			sell(cid,2488,getCount(msg),12000)
		elseif msgcontains(msg, 'knight legs') then
  			sell(cid,2477,getCount(msg),5000)
		elseif msgcontains(msg, 'plate legs') then
  			sell(cid,2647,getCount(msg),500)
  		elseif msgcontains(msg, 'brass legs') then
  			sell(cid,2478,getCount(msg),100)
 		elseif msgcontains(msg, 'chain legs') then
  			sell(cid,2478,getCount(msg),50)
		elseif msgcontains(msg, 'golden legs') or msgcontains(msg, 'glegs') or msgcontains(msg, 'g-legs') then
			selfSay('I\'m not buying golden legs\', but my friend Mad, located on VIP area, is interested on it.')
  		elseif msgcontains(msg, 'legs')  then
  			selfSay('I buy crown (12k), knight (6k), plate (500gp), brass (100gp) and chain legs (50gp).')

		elseif msgcontains(msg, 'demon shield') then
  			sell(cid,2520,getCount(msg),30000)
  		elseif msgcontains(msg, 'vampire shield') then
  			sell(cid,2534,getCount(msg),15000)
		elseif msgcontains(msg, 'medusa shield') then
  			sell(cid,2536,getCount(msg),9000)
		elseif msgcontains(msg, 'crown shield') then
  			sell(cid,2519,getCount(msg),8000)
  		elseif msgcontains(msg, 'tower shield') then
  			sell(cid,2528,getCount(msg),8000)
  		elseif msgcontains(msg, 'dragon shield') then
  			sell(cid,2516,getCount(msg),4000)
		elseif msgcontains(msg, 'guardian shield') then
  			sell(cid,2515,getCount(msg),2000)
		elseif msgcontains(msg, 'beholder shield') then
  			sell(cid,2518,getCount(msg),1500)
		elseif msgcontains(msg, 'dwarven shield') then
  			sell(cid,2525,getCount(msg),100)
		elseif msgcontains(msg, 'shields')  then
  			selfSay('I buy demon (30k), vampire (15k), medusa (9k), crown (8k), tower (8k), dragon (4k), guardian (2k), beholder (1k), and dwarven shields (100gp), also mms (80k)')

		elseif msgcontains(msg, 'demonrage sword') then
  			sell(cid,7382,getCount(msg),30000)
		elseif msgcontains(msg, 'giant sword') then
  			sell(cid,2393,getCount(msg),17000)
		elseif msgcontains(msg, 'bright sword') then
  			sell(cid,2407,getCount(msg),15000)
		elseif msgcontains(msg, 'ice rapier')  then
  			sell(cid,2396,getCount(msg),4000)
		elseif msgcontains(msg, 'fire sword') then
  			sell(cid,2392,getCount(msg),4000)
		elseif msgcontains(msg, 'serpent sword')  then
  			sell(cid,2409,getCount(msg),1500)
		elseif msgcontains(msg, 'spike sword')  then
  			sell(cid,2383,getCount(msg),800)
  		elseif msgcontains(msg, 'two handed sword')  then
  			sell(cid,2377,getCount(msg),400)
		elseif msgcontains(msg, 'broad sword') then
  			sell(cid,2413,getCount(msg),70)
		elseif msgcontains(msg, 'short sword') then
  			sell(cid,2406,getCount(msg),30)
		elseif msgcontains(msg, 'sabre') then
  			sell(cid,2385,getCount(msg),25)
  		elseif msgcontains(msg, 'sword')  then
  			sell(cid,2376,getCount(msg),25)
		elseif msgcontains(msg, 'swords')  then
  			selfSay('I buy giant (17k), bright (15k), fire (4k) serpent (1.5k), spike (800gp) and two handed swords (400gp), also ice rapiers (4k), broad swords (70gp), short swords (30gp), sabres (25gp) and swords (25gp).')

  		elseif msgcontains(msg, 'dragon lance')  then
  			sell(cid,2414,getCount(msg),9000)
		elseif msgcontains(msg, 'guardian halberd')  then
  			sell(cid,2427,getCount(msg),7500)
  		elseif msgcontains(msg, 'fire axe')  then
  			sell(cid,2432,getCount(msg),8000)
		elseif msgcontains(msg, 'knight axe')  then
  			sell(cid,2430,getCount(msg),2000)
		elseif msgcontains(msg, 'double axe')  then
  			sell(cid,2387,getCount(msg),200)
		elseif msgcontains(msg, 'halberd')  then
  			sell(cid,2381,getCount(msg),200)
		elseif msgcontains(msg, 'battle axe')  then
  			sell(cid,2378,getCount(msg),100)
  		elseif msgcontains(msg, 'hatchet')  then
  			sell(cid,2388,getCount(msg),20)
		elseif msgcontains(msg, 'axes')  then
  			selfSay('I buy fire (8k), guardian halberds (7,5k) knight (2k), double (200gp) and battle axes (100gp), also dragon lances (9k), halberds (200gp) and hatchets (20gp).')

		elseif msgcontains(msg, 'war hammer') then
  			sell(cid,2391,getCount(msg),6000)
		elseif msgcontains(msg, 'skull staff') then
  			sell(cid,2436,getCount(msg),15000)
  		elseif msgcontains(msg, 'dragon hammer')  then
  			sell(cid,2434,getCount(msg),2000)
  		elseif msgcontains(msg, 'clerical mace')  then
  			sell(cid,2423,getCount(msg),200)
  		elseif msgcontains(msg, 'battle hammer')  then
  			sell(cid,2417,getCount(msg),60)
  		elseif msgcontains(msg, 'mace') then
  			sell(cid,2398,getCount(msg),30)
		elseif msgcontains(msg, 'clubs')  then
  			selfSay('I buy war (6k), dragon (2k) and battle hammers (60gp), also skull staffs (15k) and clerical maces (200gp).')

		elseif msgcontains(msg, 'mpa') or msgcontains(msg, 'magic plate armor') or msgcontains(msg, 'e-plate') then
			selfSay('I\'m not buying magic plate armors, but my friend Mad, located on VIP area, is interested on it.')	
		elseif msgcontains(msg, 'mms') or msgcontains(msg, 'mastermind shield') then
			selfSay('I\'m not buying mastermind shields, but my friend Mad, located on VIP area, is interested on it.')

		elseif msgcontains(msg, 'platinum amulet') then
  			sell(cid,2171,getCount(msg),5000)
		elseif msgcontains(msg, 'scarf') then
  			sell(cid,2661,getCount(msg),1000)
		elseif msgcontains(msg, 'amulets')  then
  			selfSay('I buy platinum amulets (5k) and scarfs (1k).')

  		elseif string.find(msg, '(%a*)bye(%a*)')  and getDistanceToCreature(cid) < 4 then
  			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
  			focus = 0
  			talk_start = 0
  		end
  	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
-- Walking --

if focus == 0 and max_x >= 0 and max_y >= 0 then

cx, cy, cz = selfGetPosition()

randmove = math.random(1,20)

if randmove == 4 and current_x <= max_x then

nx = cx + 1

current_x = current_x + 1

elseif randmove == 8 and current_x >= (max_x - (max_x * 2)) then

nx = cx - 1

current_x = current_x - 1

elseif randmove == 12 and current_y <= max_y then

ny = cy + 1

current_y = current_y + 1

elseif randmove == 16 and current_y >= (max_y - (max_y * 2)) then

ny = cy - 1

current_y = current_y - 1

elseif randmove <= 20 then

nx = cx

ny = cy

end

moveToPosition(nx, ny, cz)

end

-- End Walking --
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
