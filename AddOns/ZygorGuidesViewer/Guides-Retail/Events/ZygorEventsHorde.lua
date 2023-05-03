local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brawler's Guild\\Battle for Azeroth Brawler's Guild", {
startlevel=50,
description="\nThis guide will help you achieve rank 8 in the Brawler's Guild.",
},[[
step
collect Blood-Soaked Invitation##166805 |goto Orgrimmar/1 76.68,35.60
|tip This comes from killing enemies in Zuldazar or Kul Tiras zones.
|tip If you aren't having luck with the drop, you can buy one for 100g from A. Shady.
|tip A. Shady randomly spawns in Bizmo's Brawlpub and exits via the ramp.
|only if not achieved(11559)
step
use the Blood-Soaked Invitation##166805
Earn "The First Rule of Brawler's Guild" Achievement |achieve 11559
step
label "Queue_For_Bruce"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto Brawl'gar Arena/1 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<250
step
kill Bruce##67262
|tip Bruce will use an ability called "Chomp Chomp Chomp".
|tip When he uses it, move to his side to avoid being killed by it.
|tip You can also stun him out of it.
Defeat Bruce |complete ZGV:GetReputation(2011).friendRep>=250 |or
'|complete isdead |next "Queue_For_Bruce" |or
step
label "Queue_For_Thog"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<500
step
kill Thog Hammerspace##149717
|tip He will drop his hammers during the fight.
|tip Stepping on them will cause you to take massive shadow damage, so avoid them.
Defeat Thog Hammerspace |complete ZGV:GetReputation(2011).friendRep>=500 |or
'|complete isdead |next "Queue_For_Thog" |or
step
label "Queue_For_Grandpa_Grumplefloot"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<750
step
kill Grandpa Grumplefloot##70678
|tip During the fight, avoid Red and Yellow Luckydos.
|tip When he casts "Cantata of Flooting", interrupt it as soon as possible.
Defeat Grandpa Grumplefloot |complete ZGV:GetReputation(2011).friendRep>=750 |or
'|complete isdead |next "Queue_For_Grandpa_Grumplefloot" |or
step
label "Queue_For_Ash'katzuum"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<1000
step
kill Ash'katzuum##116855
|tip He stands at the center of the arena.
|tip He will continuously cast "I Pick You!" which will summon battle pets.
|tip These battle pets will move around the arena and need to be avoided.
|tip Pop all cooldowns and burn him down as quickly as possible to avoid being overrun.
Defeat Ash'katzuum |complete ZGV:GetReputation(2011).friendRep>=1000 |or
'|complete isdead |next "Queue_For_Ash'katzuum" |or
step
label "Queue_For_Blat"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<1250
step
kill Blat##67594
|tip It will spawn copies of itself as the fight goes on.
|tip You can AoE the adds to kill them to mitigate the overall damage you take.
|tip You don't need to kill the adds however, just Blat.
|tip If you get too crowded by adds, you will need to kite the boss around to kill it.
|tip Burn the boss before you are overwhelmed.
Defeat Blat |complete ZGV:GetReputation(2011).friendRep>=1250 |or
'|complete isdead |next "Queue_For_Blat" |or
step
label "Queue_For_Phillip_Carter_Tracey"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<1500
step
kill Phillip Carter Tracey##144665
|tip He will use an ability called "Murderous Swipes".
|tip This attack will cause him to teleport behind you and deal massive damage.
|tip To prevent the damage, simply turn around when he's casting it to mitigate some of the damage.
|tip If you don't get him to 40% health fast, he will create copies of himself which will use the same ability.
|tip Once at 40% health, he will use new abilities.
|tip Interrupt "Blazing Bullet" whenever possible.
|tip After each use of Blazing Bullet, he wil use "Civilized Slap", which will deal decent damage and knock you back.
|tip When he's channeling this ability, simply run away from him to avoid it.
Defeat Phillip Carter Tracey |complete ZGV:GetReputation(2011).friendRep>=1500 |or
'|complete isdead |next "Queue_For_Phillip_Carter_Tracey" |or
step
label "Queue_For_Johnny_Awesome"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<1750
step
kill Johnny Awesome##115058
|tip Avoid the green circles on the ground during the fight.
|tip Stay close to Dazzle, as it will charge and stun you if you get too far away.
|tip Try to position Dazzle between you and Johnny Awesome during "Powershot".
|tip It will kill Dazzle, causing Johnny Awesome to take time to cast "Revive Dazzle".
Defeat Johnny Awesome |complete ZGV:GetReputation(2011).friendRep>=1750 |or
'|complete isdead |next "Queue_For_Johnny_Awesome" |or
step
label "Queue_For_Mama_Stormstout"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<2000
step
kill Mama Stormstout##145594
|tip She will use an ability called "SMaSH Tun".
|tip Tip it will create an area of hot grains on the location of the target.
|tip Move out of it to avoid damage over time.
|tip Keep in mind where the piles of grain are.
|tip When she uses "Cold Crash", move into the pile of grain to avoid death.
|tip She will summon Lacto Basilisks, which have low health and should be killed between Cold Crashes.
Defeat Mama Stormstout |complete ZGV:GetReputation(2011).friendRep>=2000 |or
'|complete isdead |next "Queue_For_Mama_Stormstout" |or
step
label "Queue_For_Oso"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<2250
step
kill Oso##117753
|tip After Oso eats his master, he will use the "Shotgun Roar" ability.
|tip Move from in front of him when this ability is used.
|tip When Oso uses "Grizzly Leap", move from your current location to avoid being hit by it.
Defeat Oso the Betrayer |complete ZGV:GetReputation(2011).friendRep>=2250 |or
'|complete isdead |next "Queue_For_Oso" |or
step
label "Queue_For_Klunk"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<2500
step
kill Klunk##119150
|tip He uses one ability during the fight called "Klunk".
|tip It will draw you towards him over a 10 second cast time.
|tip Be away from him before the cast completes or you will be killed.
|tip The more he successfully casts Klunk, the faster it will draw you in.
|tip You will need to kill him quickly to avoid eventually being killed.
Defeat Klunk |complete ZGV:GetReputation(2011).friendRep>=2500 |or
'|complete isdead |next "Queue_For_Klunk" |or
step
label "Queue_For_Farmer_Xiang-Su"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<2750
step
kill Farmer Xiang-Su##144670
|tip During the encounter, there will be "Tilled Soil" on the arena floor.
|tip Farmer Xiang-Su will cast "Watering Can" in your direction, which sends a tornado that moves in a straight line.
|tip When the tornado hits the soil, it will spawn either "Yummy Veggies" or "Infested Veggies".
|tip Yummy Veggies will increase you damage output when you touch them.
|tip Infested Veggies will increase the damage you take when you touch them.
|tip Kite the boss towards Infested Veggies when possible.
Defeat Farmer Xiang-Su |complete ZGV:GetReputation(2011).friendRep>=2750 |or
'|complete isdead |next "Queue_For_Farmer_Xiang-Su" |or
step
label "Queue_For_Ahoo'ru"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<3000
step
kill Ahoo'ru##70068
|tip This boss has two phases.
|tip During the first, orbs called "Point of Light" spawn in the room.
|tip Avoid them as they deal massive damage.
|tip Ahoo'ru will cast Flash of Light on these orbs.
|tip When that happens, you will need to run and touch the orb that sparkles.
|tip It will spawn an "Avenging Angel", which you will need to bring to half health.
|tip The Avenging Angel will cast "Charge".
|tip Run to Ahoo'ru until the cast is complete, then run out of the path.
|tip You will need to do this 3 times to enter the next phase.
|tip In the second phase, it is important to interrupt his "Complete Heal" casts.
|tip He will also cast "Divine Circle" which spawn orbs around you.
|tip Run out of the orbs without touching them.
Defeat Ahoo'ru |complete ZGV:GetReputation(2011).friendRep>=3000 |or
'|complete isdead |next "Queue_For_Ahoo'ru" |or
step
label "Queue_For_Ouroboros"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<3250
step
kill Ouroboros##150259
|tip It will use "Umbral Torrent", spawning black circles on the floor.
|tip They will slow your movement speed and deal damage, so avoid them.
|tip Damage it from the side, as it will cast "Eldritch Blast" which deals massive damage in front of it.
|tip Stay in it's melee range.
|tip It will cast "Dark Outpour" which will cause it to spin either clockwise or counter clockwise.
|tip Avoid the path of the beam.
|tip When it uses Dark Outpour, you will need to also move out of melee range.
Defeat Ouroboros |complete ZGV:GetReputation(2011).friendRep>=3250 |or
'|complete isdead |next "Queue_For_Ouroboros" |or
step
label "Queue_For_Sanoriak"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<3500
step
kill Sanoriak##67268
|tip Interrupt "Firewall".
|tip If you are unable, move out of it as fast as possible.
|tip You can interrupt his "Pyroblast" and "Fireball" instead to mitigate damage during the fight.
Defeat Sanoriak |complete ZGV:GetReputation(2011).friendRep>=3500 |or
'|complete isdead |next "Queue_For_Sanoriak" |or
step
label "Queue_For_Spymaster"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<3750
step
kill Spymaster##150243
|tip At the start of the fight, 9 objects will spawn across the battlefield.
|tip During the fight, he will call out to one of the objects after saying "I spy with my little eye...", so you will need to pay attention to each items location.
|tip Once he does so, you have 10 seconds to move and stand on top of the object he calls out.
|tip After the 10 seconds, he casts "Wrath" which will kill you if you're not on the object.
|tip He will cast "Master Stroke" to knock you way out of the path, so move away from him quickly as it channels.
|tip At 40% health, he will use "Blinding Powder" on you, reducing your field of vision.
|tip Save cooldowns for this phase and burn him.
|tip Otherwise, you will need to mark the location of each of the 9 objects.
Defeat the Spymaster |complete ZGV:GetReputation(2011).friendRep>=3750 |or
'|complete isdead |next "Queue_For_Spymaster" |or
step
label "Queue_For_Warhammer_Council"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<4000
step
Kill enemies around this area
|tip There will be 3 enemies in this encounter.
|tip They are all susceptible to interrupt, stuns and snares.
|tip During the encounter, there will also be "Molten Slag" on the ground, which you need to move out of.
|tip Watch out for Arstad's "Lightning Crash" as it will knock you back.
Defeat the Warhammer Council |complete ZGV:GetReputation(2011).friendRep>=4000 |or
'|complete isdead |next "Queue_For_Warhammer_Council" |or
step
label "Queue_For_Meatball"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<4250
step
kill Meatball##67573
|tip Purple Orbs will spawn when you hit Meatball.
|tip Collecting them will give you a buff called "Strange Feeling", which stacks 50 times.
|tip Damage him as much as you can, because after a bit, he will gain the "MEATBALL MAD!" buff.
|tip He will deal significantly increased damage, so burn him as quick as possible to 20%.
Defeat Meatball |complete ZGV:GetReputation(2011).friendRep>=4250 |or
'|complete isdead |next "Queue_For_Meatball" |or
step
label "Queue_For_Millie_Watt"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<4500
step
kill Millie Watt##67591
|tip Avoid "Electric Dynamite", which will be marked on the ground by a bright blue circle.
|tip When she casts "Megafantastic Discombobumorphanator" on you, move into the circles to break the polymorph.
|tip If you have a knockback or stun, you can interrupt "Photoplasm Buster Ray".
Defeat Millie Watt |complete ZGV:GetReputation(2011).friendRep>=4500 |or
'|complete isdead |next "Queue_For_Millie_Watt" |or
step
label "Queue_For_Tidemistress_Shellbreaker"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<4750
step
kill Tidemistress Shellbreaker##144684
|tip During the fight, you will need to protect Chibo from hazards that spawn in the arena.
|tip Click Chibo when he's near a hazard to move him away.
|tip You will be silenced while carrying him.
|tip Put him down in a safe area and continue DPSing the Tidemistress.
Defeat Tidemistress Shellbreaker |complete ZGV:GetReputation(2011).friendRep>=4750 |or
'|complete isdead |next "Queue_For_Tidemistress_Shellbreaker" |or
step
label "Queue_For_Mingus_Diggs"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<5000
step
kill Mingus Diggs
|tip There will be 4 statues that spawn.
|tip You will gain stacks of debuffs from them when you aren't near.
|tip To mitigate stacks, move to a statue until the debuff drops off, then move to the next.
|tip Mingus Diggs will chase you so you can still damage him while doing this.
Defeat Mingus Diggs |complete ZGV:GetReputation(2011).friendRep>=5000 |or
'|complete isdead |next "Queue_For_Mingus_Diggs" |or
step
label "Queue_For_Nibbleh"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<5250
step
kill Nibbleh##70656
|tip The path Nibbleh moves over will be covered with a trail of poison.
|tip If it crosses into the trail, it will take less damage and dish out significantly more.
|tip This buff also stacks, so keep it from crossing the poison trails.
|tip During the encounter, it will also use "Spit Pool", which will create a pool of poison with the same effect.
|tip Kite Nibbleh around the room to successfully kill him.
Defeat Nibbleh |complete ZGV:GetReputation(2011).friendRep>=5250 |or
'|complete isdead |next "Queue_For_Nibbleh" |or
step
label "Queue_For_Stitches"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<5500
step
kill Stitches##117275
|tip He has the skill "Aura of Rot".
|tip It will stack on you.
|tip If the stack reaches 10, you will instantly die.
|tip You will need to move away from him before it reaches that.
|tip When you do, he will use "Stitches' Hook" to reel you back in.
|tip This will decrease your movement speed for 2 minutes.
|tip It will be harder to move away from the Aura of Rot, so you will need to move away from him sooner.
Defeat Stitches |complete ZGV:GetReputation(2011).friendRep>=5500 |or
'|complete isdead |next "Queue_For_Stitches" |or
step
label "Queue_For_Robe-Robber_Robert"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<5750
step
kill Robe-Robber Robert##144739
|tip He will constantly cast "Disrobing Strike".
|tip This must be interrupted at all cost.
|tip He will also cast "Stripstorm", which will remove clothes if you are hit by it.
|tip Once you remove 7 pieces of his gear, he will gain the "Shame" debuff, causing him to take 1000% more damage.
|tip You will gain this debuff if you lose 7 pieces of gear as well.
Defeat Robe-Robber Robert |complete ZGV:GetReputation(2011).friendRep>=5750 |or
'|complete isdead |next "Queue_For_Robe-Robber_Robert" |or
step
label "Queue_For_Mecha-Bruce"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<6000
step
kill Mecha-Bruce##71081
|tip Start the fight with Mecha-Bruce in a corner.
|tip He will use an ability called "Better, Stronger, Faster" which he will channel before using "Stasis Beam".
|tip You will be stunned when hit by this.
|tip Avoid this, because he will use "Chomp Chomp Chomp Chomp Chomp Chomp Chomp" after, which will kill you.
|tip Move to his side or behind him for Chomp.
|tip Burn him down quickly before the damage becomes unmanageable.
Defeat Mecha-Bruce |complete ZGV:GetReputation(2011).friendRep>=6000 |or
'|complete isdead |next "Queue_For_Mecha-Bruce" |or
step
label "Queue_For_Hyper_Mega-Mecha_Seagull_x9000"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<6250
step
kill Hyper Mega-Mecha Seagull x9000##150227
|tip During the encounter, it will use "Mecha Tree Gull", which will spawn a flame spitting tree.
|tip It damages  you if you are near it.
|tip It will also use "Mecha Bee Gull", which spawns a swarm of bees that slowly follows you.
|tip If you are hit by it, you will be stunned for 5 seconds.
|tip It will also use an ability called "Mecha Wee Gull", which spawns several other seagulls that you can AoE down.
|tip Keep one Mecha Wee Gull alive to break you out of "Blinding Peck".
|tip The longer the fight goes, the stronger it will become, so it's a dps race.
Defeat Hyper Mega-Mecha Seagull x9000 |complete ZGV:GetReputation(2011).friendRep>=6250 |or
'|complete isdead |next "Queue_For_Hyper_Mega-Mecha_Seagull_x9000" |or
step
label "Queue_For_Fran_and_Riddoh"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<6500
step
kill Riddoh##67524, Fran##67525
|tip Avoid "Throw Dynamite" from Fran.
|tip Also avoid "Goblin Device" which spawns landmines.
|tip Kill Riddoh before Fran.
Defeat Fran and Riddoh |complete ZGV:GetReputation(2011).friendRep>=6500 |or
'|complete isdead |next "Queue_For_Fran_and_Riddoh" |or
step
label "Queue_For_Blackmange"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<6750
step
kill Blackmange##114902
|tip When the encounter starts, on one side of the room, a row of "Brashtide Cannons" will spawn.
|tip Each cannon has a fuse you need to look out for.
|tip When a cannon goes off, it will fire in a straight line directly in front of it.
|tip If you are hit, you will instantly die.
|tip Side step the cannon fire as they go off.
|tip He will use the "Charrrrrrge!" ability that you need to dodge.
|tip If you are hit, you will be sent into the air.
Defeat Blackmange |complete ZGV:GetReputation(2011).friendRep>=6750 |or
'|complete isdead |next "Queue_For_Blackmange" |or
step
label "Queue_For_Ogrewatch"
talk Brawl'gar Arena Grunt##67267
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 54.78,67.81
only if ZGV:GetReputation(2011).friendRep<7000
step
kill Dupree##114955, Hudson##114951, Stuffshrew##114941
|tip The goal of this encounter is to start by killing Dupree as fast as possible.
|tip Hudson will use an ability called "Barrier Projector", which will protect Dupree and Stuffshrew.
|tip Any for of crowd control will interrupt it.
|tip If Dupree's "High Noon" ability is successfully cast, you will be one shot.
|tip After Dupree, kill Hudson.
|tip They are all weak to crowd controls and stun, so use it to your advantage.
Defeat the Ogrewatch |complete ZGV:GetReputation(2011).friendRep>=7000 |or
'|complete isdead |next "Queue_For_Ogrewatch" |or
step
_Congratulations!_
You reached Rank 8 in the Brawler's Guild!
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return completedq(12492) end,
description="\nThis guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk La'gar Brewshout##155194
accept Welcome to Brewfest!##11447 |goto Durotar/0 41.58,18.45
step
talk Ram Master Ray##24497
accept Now This is Ram Racing... Almost.##11409 |goto 42.61,17.84
step
As you run around on the ram:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so.
Maintain a Trot for 8 Seconds |q 11409/1
step
As you run around on the ram:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Giddyup! ability a little more often than when you made the ram Trot.
Maintain a Canter for 8 Seconds |q 11409/2
step
As you run around on the ram:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Giddyup! ability.
Maintain a Gallop for 8 Seconds |q 11409/3
step
Stop Riding the Ram |nobuff spell:43883 |q 11409
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin Now This is Ram Racing... Almost.##11409 |goto 42.61,17.84
accept There and Back Again##11412 |goto 42.61,17.84
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 25
path	42.98,17.75	43.93,14.19	44.57,13.38	45.35,13.66	46.17,13.80
path	48.25,13.79	49.07,13.63	49.37,13.47	50.18,13.67	50.80,13.89
Follow the waypoint path:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Brewmaster Pijiu will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver #3# Kegs in Under 4 Minutes |q 11412/1
|tip If you lose your ram, return to Ram Master Ray to acquire another.
step
Stop Riding the Ram |nobuff spell:43880 |q 11412
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin There and Back Again##11412 |goto 42.61,17.84
step
talk Driz Tumblequick##24510
accept A New Supplier of Souvenirs##29396 |goto 42.69,17.71
step
talk Bizzle Quicklift##27216
accept Chug and Chuck!##12191 |goto 41.64,17.52
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They look like mugs of beer on the small tables inside this tent.
collect Alcohol-Free Brewfest Sampler##169219 |n
use the Alcohol-Free Brewfest Sampler##169219
|tip Face yourself towards the Self-Turning and Oscillating Utility Target behind the tent.
Hit the S.T.O.U.T. #5# Times |q 12191/1 |goto 41.69,17.44
step
talk Bizzle Quicklift##27216
turnin Chug and Chuck!##12191 |goto 41.64,17.52
step
talk Snipehunter Goro##155269
accept Catch the Wild Wolpertinger!##11431 |goto 41.27,18.49
accept Pink Elekks On Parade##11120 |goto 41.27,18.49
step
talk Snipehunter Goro##155269
Ask him _"What are Synthebrew Goggles?"_
Tell him _"I'd like a pair of Synthebrew Goggles."_
collect Synthebrew Goggles##46735 |goto 41.27,18.49 |q 11431
step
talk Blix Fixwidget##24495
turnin A New Supplier of Souvenirs##29396 |goto 41.06,16.95
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11431
step
clicknpc Wild Wolpertinger##23487
use the Wolpertinger Net##32907
|tip They look like rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11431/1 |goto 41.19,18.12
You can find more around here [goto 45.30,18.58]
step
Equip your Helm |nobuff spell:65607 |q 11431
|tip Remove the Synthebrew Goggles.
step
talk Snipehunter Goro##155269
turnin Catch the Wild Wolpertinger!##11431 |goto 41.27,18.49
step
talk Zidormi##141488
|tip In order to complete the Brewfest questline, you will need to speak with Zidormi to change the zone back to normal.
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11120
step
Go to Tirisfal Glades |goto Tirisfal Glades/0 62.45,67.47 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
step
clicknpc Tirisfal Pink Elekk##23530
use the Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
|tip They are found above Undercity, in Tirisfal Glades.
kill 3 Tirisfal Pink Elekk##23530 |q 11120/3 |goto Tirisfal Glades/0 62.45,67.47
step
Equip your Helm |nobuff spell:65607 |q 11120
|tip Remove the Synthebrew Goggles.
step
Go to Eversong Woods |goto Eversong Woods/0 56.97,53.14 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
step
clicknpc Eversong Pink Elekk##23531
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Eversong Pink Elekk##23531 |q 11120/1 |goto Eversong Woods/0 56.97,53.14
step
Equip your Helm |nobuff spell:65607 |q 11120
|tip Remove the Synthebrew Goggles.
step
Go to Thunder Bluff |goto Thunder Bluff/0 34.66,74.60 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
step
clicknpc Mulgore Pink Elekk##23529
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Mulgore Pink Elekk##23529 |q 11120/2 |goto Thunder Bluff/0 34.66,74.60
step
Equip your Helm |nobuff spell:65607 |q 11120
|tip Remove the Synthebrew Goggles.
step
talk Snipehunter Goro##155269
turnin Pink Elekks On Parade##11120 |goto Durotar/0 41.27,18.49
step
Reach Level 10 |ding 10
|tip You must be at least level to to queue for Coren Direbrew.
step
Press _I_ and Queue for Coren Direbrew or Enter the Dungeon with your Group |goto Blackrock Depths/2 0.00,0.00 < 1000 |q 12491 |future
|tip Coren is under the Dungeon Finder tab.
step
kill Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
|tip This enemy is elite and will require a group.
collect Direbrew's Dire Brew##38281 |q 12491 |future
step
use Direbrew's Dire Brew##38281
accept Direbrew's Dire Brew##12491
step
talk La'gar Brewshout##155194a
turnin Direbrew's Dire Brew##12492 |goto Durotar/0 41.55,18.38
step
talk Etga##155133
accept Brewfest Chowdown##56748 |goto 42.28,18.44
step
click Chowdown Participant's Seat
|tip Use the first ability to eat sausages until your Choke Meter starts to fill
|tip When it is near full, use the "Refreshing Brew" ability to lower the bar.
|tip When your plate is empty, use the "New Plate" ability to call for more sausages.
Participate in the Brewfest Chowdown |q 56748/1 |goto 42.34,18.38
step
talk Etga##155133
turnin Brewfest Chowdown##56748 |goto 42.28,18.44
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="\nThis guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(11120)
|tip Complete the quest "Pink Elekks On Parade."
step
label "Begin_Dailies"
talk Ram Master Ray##24497
accept Brew For Brewfest##29393 |goto Durotar/0 42.61,17.83
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 30
path	46.28,14.84	46.43,16.38	46.34,18.30	46.27,20.25	46.97,22.50
path	47.70,24.95	48.17,27.56	48.91,28.06
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can Within 4 Minutes |nobuff spell:43880
step
talk Cort Gorestein##24498
accept Bark for Drohn's Distillery!##11407 |goto 40.52,18.26 |or
talk Ja'ron##24499
accept Bark for T'chali's Voodoo Brewery!##11408 |goto 40.29,16.98 |or
|tip You will only be able to accept one of these quests per day.
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride Your Ram into Orgrimmar |goto Orgrimmar/1 50.93,90.90 < 20 |c |q 11407
|only if haveq(11407) or completedq(11407)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark Outside the Auction House |q 11407/1 |goto 51.63,78.97
|only if haveq(11407) or completedq(11407)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark in the Valley of Honor |q 11407/2 |goto 67.02,48.19
|only if haveq(11407) or completedq(11407)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark in the Valley of Wisdom |q 11407/3 |goto 44.26,49.07
|only if haveq(11407) or completedq(11407)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark in the Valley of Spirits |q 11407/4 |goto 37.68,75.48
|only if haveq(11407) or completedq(11407)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride Your Ram into Orgrimmar |goto 50.93,90.90 < 20 |c |q 11408
|only if haveq(11408) or completedq(11408)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark Outside the Auction House |q 11408/1 |goto 51.63,78.97
|only if haveq(11408) or completedq(11408)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark in the Valley of Honor |q 11408/2 |goto 67.02,48.19
|only if haveq(11408) or completedq(11408)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark in the Valley of Wisdom |q 11408/3 |goto 44.26,49.07
|only if haveq(11408) or completedq(11408)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Bark in the Valley of Spirits |q 11408/4 |goto 37.68,75.48
|only if haveq(11408) or completedq(11408)
step
Stop Riding the Ram |nobuff spell:43883
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Cort Gorestein##24498
turnin Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.52,18.26
|only if haveq(11407) or completedq(11407)
step
talk Ja'ron##24499
turnin Bark for T'chali's Voodoo Brewery!##11408 |goto 40.29,16.98
|only if haveq(11408) or completedq(11408)
step
Wait for the event to start
|tip Every 30 minutes an event will start.
|tip You will be able to complete one of these event quests each day.
|tip Completing a quest will make you ineligible to accept the others until the following daily reset.
|tip Participate or watch the event and chase off the invaders.
|tip Afterwards, one of the following objects will be left on the ground.
click Hozen Totem
accept Hozen Totem##56715 |goto 40.98,17.76
click Direbrew Cog
accept Direbrew Cog##56716 |goto 40.98,17.76
click Pandaren Keg
accept Contained Alemental##56714 |goto 40.98,17.76
step
talk Zenda##152780
turnin Hozen Totem##56715 |goto 40.80,18.36
|only if haveq(56715)
step
talk Blix Fixwidget##24495
turnin Direbrew Cog##56716 |goto 41.06,16.95
|only if haveq(56716)
step
talk Brewmaster Tao##73914
turnin Contained Alemental##56714 |goto 41.42,17.27
|only if haveq(56714)
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11407,11408,29393,56715,56716,56714) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return achieved(1185) and achieved(303) and achieved(2796) and achieved(1936) and achieved(295) and achieved(1683) and achieved(1260) and achieved(293) and achieved(1183) and achieved() end,
description="\nThis guide section will walk you through completing the achievements for the Brewfest event.",
},[[
step
talk Uta Roughdough##23603
buy The Essential Brewfest Pretzel##33043 |n
use The Essential Brewfest Pretzel##33043
Eat "The Essential Brewfest Pretzel" |achieve 1185/7 |goto Durotar/0 41.72,17.87
step
talk Agnes Farwithers##23604
buy Spiced Onion Cheese##34065 |n
use the Spiced Onion Cheese##34065
Eat the "Spiced Onion Cheese" |achieve 1185/4  |goto 41.03,18.44
step
talk Bron##23605
buy Dried Sausage##34063 |n
use the Dried Sausage##34063
Eat the "Dried Sausage" |achieve 1185/1 |goto 41.72,17.80
step
talk Bron##23605
buy Succulent Sausage##34064 |n
use the Succulent Sausage##34064
Eat the "Succulent Sausage" |achieve 1185/6 |goto 41.72,17.80
step
talk Bron##23605
buy Savory Sausage##33023 |n
use the Savory Sausage##33023
Eat the "Savory Sausage" |achieve 1185/3 |goto 41.72,17.80
step
talk Bron##23605
buy Pickled Sausage##33024 |n
use the Pickled Sausage##33024
Eat the "Pickled Sausage" |achieve 1185/2 |goto 41.72,17.80
step
talk Bron##23605
buy Spicy Smoked Sausage##33025 |n
use the Spicy Smoked Sausage##33025
Eat the "Spicy Smoked Sausage" |achieve 1185/5 |goto 41.72,17.80
step
talk Bron##23605
buy The Golden Link##33026 |n
use the The Golden Link##33026
Eat "The Golden Link" |achieve 1185/8 |goto 41.72,17.80
step
Earn "The Brewfest Diet" Achievement |achieve 1185
step
talk Blix Fixwidget##24495
buy Fresh Brewfest Hops##37750 |n
|tip You must be at least level 10 to buy these.
use the Fresh Brewfest Hops##37750
Earn the "Have Keg, Will Travel" Achievement |achieve 303 |goto 41.06,16.95
step
Load the "Brewfest Dailies" Guide |confirm |next "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
|tip These are earned by doing Brewfest Dailies.
collect 550 Brewfest Prize Token##37829
step
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37599 |n
use the "Brew of the Month" Club Membership Form##37599
accept Brew of the Month Club##12306 |goto 41.06,16.95
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.49
Earn the "Brew of the Month" Achievement |achieve 2796 |goto 50.35,73.49
step
If you are on the EU servers go here to buy your Wolpertinger Pet
talk Blix Fixwidget##24495
buy Wolpertinger's Tankard##32233 |n
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936 |goto 41.06,16.95
step
_Congratulations!_
You Earned the "Brewmaster" Title
step
Press _I_ and Queue for Coren Direbrew or Enter the Dungeon with your Group |q 12491 |future
step
kill Coren Direbrew##23872
Earn the "Dire Brewfest" Achievement |achieve 295
step
Earn the "Brewmaster" Achievement |achieve 1683
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |complete achieved(1260)
step
Fall from a high place without dying
|tip You must fall at least 65 yards and not die to receive this achievement (flying up in the air and dismounting is a good way to do this.)
Earn the "Almost Blind Luck" Achievement |achieve 1260
step
talk Blix Fixwidget##24495 |goto 41.06,16.95
|tip Buying these 3 pieces will cost 350 coins.
|tip Buy 3 pieces of Brewfest gear.
Wear 3 pieces of brewfest gear, get drunk, and /dance in Dalaran.
Go to Dalarn and equip the items you bought, drink some brew and /dance
Earn the "Disturbing the Peace" Achievement |achieve 293
step
Collect Brew of the Month from the mail
|tip This achievement is given to players that have earned the Brew of the Month Club achievement.
|tip Every month these players will receive a brew in the mail, simply take this brew out and drink it then you will be one step closer to getting this achievement.
|tip This achievment takes a year to get.
Earn the "Brew of the Year" Achievement |achieve 1183
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="\nThis guide will help you assault Teldrassil on behalf of the Horde.",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(52981) end,
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Orgrimmar Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Orgrimmar questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(5502) end,
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##51989
accept Children's Week##172 |goto Orgrimmar/1 57.95,57.62
step
use the Orcish Orphan Whistle##18597
talk Orcish Orphan##14444
turnin Children's Week##172
accept Ridin' the Rocketway##29146
accept The Fallen Chieftain##29176
accept Strong New Allies##54146
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
Watch the dialogue
Take Your Orphan to the Orgrimmar Embassy |q 54146/1 |goto 39.61,78.89
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin Strong New Allies##54146
step
Ride the elevator up |goto Azshara/0 50.78,74.53 < 5 |only if walking
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
clicknpc Redhound Two-Seater##52583
Take Your Orphan to Ride the Rocketway |q 29146/1 |goto 50.72,73.94
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin Ridin' the Rocketway##29146
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
Watch the dialogue
Take Your Orphan to Visit Red Rocks |q 29176/1 |goto Mulgore/0 60.79,22.83
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin The Fallen Chieftain##29176
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
accept Let's Go Fly a Kite##29190
accept You Scream, I Scream...##29191
step
talk Blax Bottlerocket##52809
|tip He walks around this area.
buy 1 Dragon Kite 2-Pack##69231 |q 29190 |goto Orgrimmar/1 58.50,55.46
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Dragon Kite 2-Pack##69231
Fly Dragon Kites with Your Orphan |q 29190/1
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin Let's Go Fly a Kite##29190
step
Follow the path |goto 57.36,64.04 < 10 |only if walking
Continue following the path |goto 54.93,64.86 < 10 |only if walking
Continue following the path |goto 51.13,65.37 < 10 |only if walking
Continue following the path |goto 43.96,69.89 < 10 |only if walking
Run up the ramp |goto 43.90,72.98 < 10 |only if walking
Continue up the ramp |goto 43.90,75.87 < 10 |only if walking
Continue following the path |goto 40.64,77.41 < 10 |only if walking
Continue following the path |goto 37.68,85.42 < 10 |only if walking
talk Snixx Quickfreeze##52818
buy 1 Cone of Cold##69233 |q 29191 |goto 36.29,86.98
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Cone of Cold##69233
Take Your Orphan Out for Ice Cream |q 29191/1
step
use Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
talk Orcish Orphan##14444
turnin You Scream, I Scream...##29191
accept A Warden of the Horde##5502
step
Follow the path |goto 39.11,84.35 < 10 |only if walking
Continue following the path |goto 40.67,77.42 < 10 |only if walking
Jump down here |goto 43.36,73.21 < 7 |only if walking
Run down the ramp |goto 43.95,70.31 < 10 |only if walking
Follow the path |goto 46.83,66.93 < 10 |only if walking
Continue following the path |goto 53.60,64.24 < 10 |only if walking
Continue following the path |goto 56.52,65.14 < 10 |only if walking
Continue following the path |goto 59.00,61.17 < 10 |only if walking
talk Blax Bottlerocket##52809
|tip He walks around this area.
buy 1 Foam Sword Rack##69057 |q 5502/1 |goto 58.55,55.86
step
talk Orphan Matron Battlewail##51989
turnin A Warden of the Horde##5502 |goto 57.95,57.62
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Shattrath questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(10967) end,
startlevel=10,
},[[
step
talk Orphan Matron Mercy##22819
accept Children's Week##10942 |goto Shattrath City/0 75.08,47.89
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan.
talk Blood Elf Orphan##22817
turnin Children's Week##10942
accept Hch'uu and the Mushroom People##10945
accept A Trip to the Dark Portal##10951
accept Visit the Throne of the Elements##10953
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to the Throne of the Elements |q 10953/1 |goto Nagrand/0 60.65,22.42
step
talk Elementalist Sharvak##18072
turnin Visit the Throne of the Elements##10953 |goto 60.66,22.10
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to Sporeggar |q 10945/1 |goto Zangarmarsh/0 19.42,51.39
step
talk Hch'uu##22823
turnin Hch'uu and the Mushroom People##10945 |goto 19.28,51.34
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to the Dark Portal |q 10951/1 |goto Hellfire Peninsula/0 89.59,50.21
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
talk Blood Elf Orphan##22817
turnin A Trip to the Dark Portal##10951
accept Now, When I Grow Up...##11975
accept Time to Visit the Caverns##10963
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Take Salandria to the Caverns of Time |q 10963/2 |goto Tanaris/18 52.50,57.05
step
talk Alurmi##21643
buy 1 Toy Dragon##31951 |q 10963/1 |goto Tanaris/17 39.95,77.32
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
talk Blood Elf Orphan##22817
turnin Time to Visit the Caverns##10963
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
Watch the dialogue
Take Salandria to see the Elite Tauren Chieftain |q 11975/1 |goto Silvermoon City/0 76.61,81.05
step
use Blood Elf Orphan Whistle##31880
|tip Use it to summon your Blood Elf Orphan, if needed.
talk Blood Elf Orphan##22817
turnin Now, When I Grow Up...##11975
accept Back to the Orphanage##10967
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10967 |goto Shattrath City/0 75.08,47.89
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Zandalar Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Zandalar questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(53971) end,
startlevel=10,
},[[
step
talk Caretaker Padae##131346
|tip Inside the building
accept Children's Week##53965 |goto Dazar'alor/0 54.63,84.60
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Children's Week##53965
accept Loa of Winds##53966
accept The Shifting Pack##53968
accept The Frogmarsh##53967
step
Cross the bridge |goto Zuldazar/0 66.92,43.17 < 15 |only if walking
Follow the path up |goto 66.09,46.41 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Pterror Rise |q 53966/1 |goto 70.58,49.14
step
Cross the bridge |goto 49.78,29.05 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Lair of Gonk |q 53968/1 |goto 48.71,31.74
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit Krag'wa's Burrow |q 53967/1 |goto Nazmir/0 73.27,53.36
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Loa of Winds##53966
turnin The Shifting Pack##53968
turnin The Frogmarsh##53967
accept The Sethrak Queen##53970
accept Hunting for Gold##53969
step
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
|tip Upstairs inside the building.
Visit Terrace of the Devoted |q 53970/1 |goto Vol'dun/0 27.11,52.57
step
Jump down here |goto Vol'dun/0 41.96,77.72 < 20 |only if walking
Cross the water |goto 33.88,85.82 < 20 |only if walking
use the Casteless Zandalari Whistle##164965
|tip Ensure that you have your orphan, Azala, summoned.
Visit the Golden Isle |q 53969/1 |goto 28.77,88.96
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin The Sethrak Queen##53970
turnin Hunting for Gold##53969
accept Return to the Hall of Castes##53971
step
use the Casteless Zandalari Whistle##164965
|tip Inside the building
Return to the Hall of Castes |q 53971/1 |goto Dazar'alor/0 53.86,84.82
step
use the Casteless Zandalari Whistle##164965
_Next to you:_
talk Azala##145463
turnin Return to the Hall of Castes##53971
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.",
condition_valid=function() return rep('The Oracles') >= Neutral end,
condition_valid_msg=" You're not Neutral with The Oracles.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.35,63.25
|tip If you choose to care for the Oracles you are not able to also care for the Wolvars.
step
talk Orphan Matron Aria##34365
Choose _Ask about the orphans._
Accept to Care for the Oracles Orphan |q 13926/1 |goto 49.35,63.25
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
talk Oracle Orphan##33533
turnin Little Orphan Roo Of The Oracles##13926
accept The Biggest Tree Ever!##13929
accept The Bronze Dragonshrine##13933
accept Playmates!##13950
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Grizzlemaw |q 13929/1 |goto 50.68,44.09
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
talk Oracle Orphan##33533
turnin The Biggest Tree Ever!##13929
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
Follow the path up |goto 69.51,44.06 < 10 |only if walking
Continue up the path |goto 69.77,42.63 < 10 |only if walking
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit the Bronze Dragonshrine |q 13933/1 |goto 71.11,41.10
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
talk Oracle Orphan##33533
turnin The Bronze Dragonshrine##13933
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Winterfin Retreat |q 13950/1 |goto Borean Tundra/0 43.55,13.65
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
talk Oracle Orphan##33533
turnin Playmates!##13950
accept The Dragon Queen##13954
accept Meeting a Great One##13956
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit The Etymidian |q 13956/1 |goto Un'Goro Crater/0 47.60,9.17
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
talk Oracle Orphan##33533
turnin Meeting a Great One##13956
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Roo to Visit Alexstrasza the Life-Binder |q 13954/1 |goto Dragonblight/0 59.84,54.59
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
talk Oracle Orphan##33533
turnin The Dragon Queen##13954
accept A Trip To The Wonderworks##13937
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13937 |goto 44.82,45.63
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
use Small Paper Zeppelin##46693
|tip Use it on your Oracle Orphan.
Throw the Small Paper Zeppelin to Roo |q 13937/1
step
use Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
talk Oracle Orphan##33533
turnin A Trip To The Wonderworks##13937
accept Back To The Orphanage##28879 |or
accept Back To The Orphanage##13959 |or
step
Leave the building |goto 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28879 |goto 49.35,63.25 |only if haveq(28879) or completedq(28879)
turnin Back To The Orphanage##13959 |goto 49.35,63.25 |only if haveq(13959) or completedq(13959)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.",
condition_valid=function() return rep('Frenzyheart Tribe') >= Neutral end,
condition_valid_msg=" You're not Neutral with the Frenzyheart Tribe.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.35,63.25
|tip If you choose to care for the Wolvars you are not able to also care for the Oracles.
step
talk Orphan Matron Aria##34365
Choose _Ask about the orphans._
Accept to Care for the Wolvar Orphan |q 13927/1 |goto 49.35,63.25
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
talk Wolvar Orphan##33532
turnin Little Orphan Kekek Of The Wolvar##13927
accept Home Of The Bear-Men##13930
accept The Bronze Dragonshrine##13934
accept Playmates!##13951
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Grizzlemaw |q 13930/1 |goto 50.68,44.09
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
talk Wolvar Orphan##33532
turnin Home Of The Bear-Men##13930
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
Follow the path up |goto 69.51,44.06 < 10 |only if walking
Continue up the path |goto 69.77,42.63 < 10 |only if walking
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit the Bronze Dragonshrine |q 13934/1 |goto 71.11,41.10
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
talk Wolvar Orphan##33532
turnin The Bronze Dragonshrine##13934
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Snowfall Glade |q 13951/1 |goto Dragonblight/0 45.28,63.29
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
talk Wolvar Orphan##33532
turnin Playmates!##13951
accept The Dragon Queen##13955
accept The Mighty Hemet Nesingwary##13957
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Kekek to Visit Alexstrasza the Life-Binder |q 13955/1 |goto Dragonblight/0 59.84,54.59
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
talk Wolvar Orphan##33532
turnin The Dragon Queen##13955
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Hemet Nesingwary |q 13957/1 |goto Sholazar Basin/0 27.13,59.23
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
talk Wolvar Orphan##33532
turnin The Mighty Hemet Nesingwary##13957
accept A Visit To The Wonderworks##13938
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13938 |goto 44.82,45.63
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
use Small Paper Zeppelin##46693
|tip Use it on your Wolvar Orphan.
Throw the Small Paper Zeppelin to Kekek |q 13938/1
step
use Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
talk Wolvar Orphan##33532
turnin A Visit To The Wonderworks##13938
accept Back To The Orphanage##28880 |or
accept Back To The Orphanage##13960 |or
step
Leave the building |goto 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28880 |goto 49.35,63.25 |only if haveq(28880) or completedq(28880)
turnin Back To The Orphanage##13960 |goto 49.35,63.25 |only if haveq(13960) or completedq(13960)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?",{
author="support@zygorguides.com",
description="\nObtain one of the Children's Week reward pets through questing.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1792},
patch='30009',
startlevel=10,
},[[
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-14
step
_Congratulations!_
You Earned the "Aw, Isn't It Cute?" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Bad Example",{
author="support@zygorguides.com",
description="\nEat the following sweets while your orphan is watching:\n\nTigule's Strawberry Ice Cream\n"..
"Tasty Cupcake\nRed Velvet Cupcake\nDelicious Chocolate Cake\nLovely Cake Slice\nDalaran Brownie\nDalran Doughnut",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1788},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
step
talk Alowicious Czervik##14480
buy 1 Tigule's Strawberry Ice Cream##7228 |achieve 1788 |goto Orgrimmar/1 53.31,79.26
step
talk Auctioneer Drezmit##44866
|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
collect 1 Tasty Cupcake##43490 |achieve 1788 |goto 54.08,73.36
collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto 54.08,73.36
step
talk Aimee##29548
buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.19,29.05
buy 1 Lovely Cake##42438 |achieve 1788 |goto 51.19,29.05
buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto 51.19,29.05
buy 1 Dalaran Brownie##42431 |achieve 1788 |goto 51.19,29.05
step
use the Lovely Cake##42438
|tip Use it to place a cake on the ground.
click Lovely Cake
collect 1 Lovely Cake Slice##42434 |achieve 1788
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Tigule's Strawberry Ice Cream##7228
Eat Tigule's Strawberry Ice Cream |achieve 1788/1
step
use the Tasty Cupcake##43490
Eat Tasty Cupcake |achieve 1788/2
step
use the Red Velvet Cupcake##42429
Eat Red Velvet Cupcake |achieve 1788/3
step
use the Delicious Chocolate Cake##33924
Eat Delicious Chocolate Cake |achieve 1788/4
step
use the Lovely Cake Slice##42434
Eat Lovely Cake Slice |achieve 1788/5
step
use the Dalaran Brownie##42431
Eat Dalaran Brownie |achieve 1788/6
step
use the Dalaran Doughnut##42430
Eat Dalaran Doughnut |achieve 1788/7
step
|achieve 1788
step
_Congratulations!_
You Earned the "Bad Example" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Daily Chores",{
author="support@zygorguides.com",
description="\nComplete five daily quests with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1789},
patch='30003',
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
Complete any 5 daily quests of your choice:
|tip World Quests do not count for this achievement.
|tip Use the various daily quest guides to complete this.
|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
|achieve 1789
step
_Congratulations!_
You Earned the "Daily Chores" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby",{
author="support@zygorguides.com",
description="\nDefeat King Ymiron in Utgarde Pinnacle with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1790},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
kill King Ymiron##26861
|tip Inside the Utgarde Pinnacle dungeon.
|tip He's the final boss of the instance.
|achieve 1790 |goto Utgarde Pinnacle/2 42.60,53.50
step
_Congratulations!_
You Earned the "Hail To The King, Baby" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Home Alone",{
author="support@zygorguides.com",
description="\nUse your Hearthstone while your orphan is with you.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1791},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
use Hearthstone##6948
|tip Use it while your Orphan is standing next to you.
|achieve 1791
step
_Congratulations!_
You Earned the "Home Alone" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks",{
author="support@zygorguides.com",
description="\nTake your orphan into the battlegrounds and complete the feats listed below:\n\nCapture the flag "..
"in Eye of the Storm\nAssault a flag in Arathi Basin\nAssault a tower in Alterac Valley\nReturn a "..
"fallen flag in Warsong Gulch",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1786},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Eye of the Storm battleground and capture the flag.
Capture the flag in Eye of the Storm |achieve 1786/1
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Alterac Valley battleground and assault a tower.
Assault a Tower in Alterac Valley |achieve 1786/2
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Arathi Basin battleground and assault a flag.
Assault a Flag in Arathi Basin |achieve 1786/3
step
use the Orcish Orphan Whistle##18597
|tip Use it to summon your Orcish Orphan, if needed.
|tip Enter the Warsong Gulch battleground and return a fallen flag.
Return a Fallen flag in Warsong Gulch |achieve 1786/4
step
_Congratulations!_
You Earned the "School of Hard Knocks" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Veteran Nanny",{
author="support@zygorguides.com",
description="\nAcquire Egbert's Egg, Sleepy Willy, and Elekk Training Collar on a single character.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={275},
patch='30001',
startlevel=10,
},[[
step
This achievement takes three years to complete
|tip You must do the following questline once each year on the same character.
|tip Ensure that you only choose Egbert's Egg, Sleepy Willy, and the Elekk Training Collar as rewards.
|confirm
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-14
step
_Congratulations!_
You Earned the "Veteran Nanny" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\For the Children",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Achievements for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1793},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Orcish Orphan Whistle##18597 |achieve 1793 |goto Orgrimmar/1 57.95,57.61
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-14
leechsteps "Events Guides\\Children's Week\\Achievements\\Bad Example" 2-12
leechsteps "Events Guides\\Children's Week\\Achievements\\Daily Chores" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Home Alone" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\School of Hard Knocks" 2-5
step
|achieve 1793
step
_Congratulations!_
You Earned the "For the Children" Achievement |achieve 1793
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests",{
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="\nThis guide will help you navigate through the Darkmoon Faire Event",
},[[
step
talk Darkmoon Faire Mystic Mage##55382
accept The Darkmoon Faire##7926 |goto Thunder Bluff/0 43.93,52.59
step
talk Innkeeper Pala##6746
|tip Inside the building.
buy 5 Moonberry Juice##1645 |goto 45.83,64.73 |q 29506 |future
|only if skill("Alchemy") >= 75
step
talk Shadi Mistrunner##8363
buy 5 Light Parchment##39354 |goto 40.31,63.37 |q 29515 |future
|only if skill("Inscription") >= 75
step
talk Shadi Mistrunner##8363
buy 1 Coarse Thread##2320 |goto 40.31,63.37 |q 29520 |future
buy 1 Blue Dye##6260 |goto 40.31,63.37 |q 29520 |future
buy 1 Red Dye##2604 |goto 40.31,63.37 |q 29520 |future
|only if skill("Tailoring") >= 75
step
talk Shadi Mistrunner##8363
buy 5 Coarse Thread##2320 |goto 40.31,63.37 |q 29517 |future
buy 5 Blue Dye##6260 |goto 40.31,63.37 |q 29517 |future
buy 10 Shiny Bauble##6529 |goto 40.31,63.37 |q 29517 |future
|only if skill("Leatherworking") >= 75
step
talk Shadi Mistrunner##8363
buy 5 Simple Flour##30817 |goto 40.31,63.37 |q 29509 |future
|only if skill("Cooking") >= 75
step
clicknpc Darkmoon Strider##68491
Mount the Darkmoon Strider |havebuff 132198 |goto Darkmoon Island/0 51.64,24.67
|only if level < 10
step
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78898 |goto 54.34,53.15 |q 29433 |future |only if level <= 60
buy 1 Sack o' Tokens##78905 |goto 54.34,53.15 |q 29433 |future |only if level > 60 and level <= 70
buy 1 Sack o' Tokens##78906 |goto 54.34,53.15 |q 29433 |future |only if level > 70 and level <= 80
buy 1 Sack o' Tokens##78907 |goto 54.34,53.15 |q 29433 |future |only if level > 80 and level <= 85
buy 1 Sack o' Tokens##78908 |goto 54.34,53.15 |q 29433 |future |only if level > 85 and level <= 90
buy 1 Sack o' Tokens##78909 |goto 54.34,53.15 |q 29433 |future |only if level > 90 and level <= 100
buy 1 Sack o' Tokens##78910 |goto 54.34,53.15 |q 29433 |future |only if level > 100 and level <= 120
step
use the Sack o' Tokens##78905 |only if itemcount(78905) >= 1
use the Sack o' Tokens##78906 |only if itemcount(78906) >= 1
use the Sack o' Tokens##78907 |only if itemcount(78907) >= 1
use the Sack o' Tokens##78908 |only if itemcount(78908) >= 1
use the Sack o' Tokens##78909 |only if itemcount(78909) >= 1
use the Sack o' Tokens##78910 |only if itemcount(78910) >= 1
use the Sack o' Tokens##78898 |only if itemcount(78898) >= 1
collect 20 Darkmoon Faire Game Token##71083 |q 7926
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7926 |goto 47.90,64.74
step
talk Selina Dourman##10445
accept Banners, Banners Everywhere!##29520 |goto 55.56,55.00
|only if skill("Tailoring") >= 75
step
talk Professor Thaddeus Paleo##14847
accept Fun for the Little Ones##29507 |goto 51.89,60.93
|only if skill("Archaeology") >= 75
step
talk Rinling##14841
accept Rearm, Reuse, Recycle##29518 |goto 49.25,60.78
|only if skill("Mining") >= 75
step
talk Rinling##14841
accept Talkin' Tonks##29511 |goto 49.25,60.78
|only if skill("Engineering") >= 75
step
talk Rinling##14841
accept Eyes on the Prizes##29517 |goto 49.25,60.78
|only if skill("Leatherworking") >= 75
step
talk Stamp Thunderhorn##14845
accept Putting the Crunch in the Frog##29509 |goto 52.89,67.94
|only if skill("Cooking") >= 75
step
talk Stamp Thunderhorn##14845
accept Spoilin' for Salty Sea Dogs##29513 |goto 52.89,67.94
|only if skill("Fishing") >= 75
step
talk Sayge##14822
accept Writing the Future##29515 |goto 53.23,75.84
|only if skill("Inscription") >= 75
step
talk Chronos##14833
accept Tan My Hide##29519 |goto 54.99,70.77
|only if skill("Skinning") >= 75
step
talk Chronos##14833
accept Herbs for Healing##29514 |goto 54.99,70.77
|only if skill("Herbalism") >= 75
step
talk Sylannia##14844
accept A Fizzy Fusion##29506 |goto 50.53,69.57
|only if skill("Alchemy") >= 75
step
talk Chronos##14833
accept Keeping the Faire Sparkling##29516 |goto 54.99,70.77
|only if skill("Jewelcrafting") >= 75
step
talk Sayge##14822
accept Putting Trash to Good Use##29510 |goto 53.23,75.84
|only if skill("Enchanting") >= 75
step
talk Yebb Neblegear##14829
accept Baby Needs Two Pair of Shoes##29508 |goto 51.10,82.04
|only if skill("Blacksmithing") >= 75
step
use the Plump Frogs##72056
collect 5 Breaded Frog##72057 |q 29509
|only if skill("Cooking") >= 75
step
use the Breaded Frog##72057
|tip Use it five times.
Prepare #5# Crunchy Frogs |q 29509/1 |goto 52.7,68.1
|only if skill("Cooking") >= 75
step
cast Fishing##7620
|tip Equip a fishing pole if you have one.
collect 5 Great Sea Herring##73269 |q 29513/1 |goto 51.74,91.31
|only if skill("Fishing") >= 75
step
click Discarded Weapon##209283+
|tip They look like sparkling piles of rubble on the ground around this area.
collect 6 Discarded Weapon##72018 |goto 49.47,71.33 |q 29510
|only if skill("Enchanting") >= 75
step
use the Discarded Weapon##72018
|tip Use it six times.
collect 6 Soothsayer's Dust##71979 |q 29510/1
|only if skill("Enchanting") >= 75
step
click Tonk Scrap##209275
|tip They look like random pieces of metal on the ground around this area.
collect 6 Tonk Scrap##71968 |q 29518/1 |goto 49.47,71.33
|only if skill("Mining") >= 75
step
click Bit of Glass##209287+
|tip They look like small green pieces of broken glass on the ground around this area.
|tip You can find these all over the island.
collect 5 Bits of Glass##72052 |goto 49.47,71.33 |q 29516
|only if skill("Jewelcrafting") >= 75
step
use the Bit of Glass##72052
|tip Use it five times.
collect 5 Sparkling 'Gemstone'##72050 |q 29516/1
|only if skill("Jewelcrafting") >= 75
step
clicknpc Damaged Tonk##54504+
|tip They look like broken Tonk toys on the ground around this area.
use the Battered Wrench##72110
|tip Use it on Damaged Tonks.
Repair #5# Damaged Tonk's |q 29511/1 |goto 49.47,71.33
|only if skill("Engineering") >= 75
step
click Darkblossom##209284+
|tip They look like small purple flowers on the ground around this area.
|tip You can find these all over the island.
collect 6 Darkblossom##72046 |q 29514/1 |goto 49.47,71.33
|only if skill("Herbalism") >= 75
step
click Staked Skin##209276+
|tip They look like wooden frames with a hide stretched tight inside on the ground around this area.
|tip You can find these all over the island.
Scrape #4# Staked Skins |q 29519/1 |goto 49.47,71.33
|only if skill("Skinning") >= 75
step
talk Sylannia##14844
buy 5 Fizzy Faire Drink##19299 |q 29506 |goto 50.53,69.57
|only if skill("Alchemy") >= 75
step
use the Cocktail Shaker##72043
|tip Use it five times.
Create #5# Servings of Moonberry Fizz |q 29506/1
|only if skill("Alchemy") >= 75
step
cast Survey##80451
|tip Use this ability at Fossil Digsites across Kalimdor.
|tip You can find them in Desolace, Dustwallow Marsh, Stonetalon Mountains, Southern Barrens, Tanaris, and Un'Goro Crater.
earn 15 Fossil Fragments##393 |q 29507
|only if skill("Archaeology") >= 75
step
use the Darkmoon Banner Kit##72048
Plant a Darkmoon Banner |q 29520/1 |goto 48.65,72.75
|only if skill("Tailoring") >= 75
step
use the Iron Stock##71964
|tip Use it next to the Forge.
collect 4 Horseshoes##71967 |q 29508 |goto 55.12,71.56
|only if skill("Blacksmithing") >= 75
step
use Horseshoe##71967
Put New Horshoes On Baby |q 29508/1 |goto 51.3,81.8
|only if skill("Blacksmithing") >= 75
step
use the Bundle of Exotic Herbs##71971
collect Prophetic Ink##71972 |q 29515
|only if skill("Inscription") >= 75
step
use Prophetic Ink##71972
|tip Each Fortune requires 1 Light Parchment to create.
|tip Use it five times.
collect 5 Fortune##71974 |q 29515/1
|only if skill("Inscription") >= 75
step
use the Darkmoon Craftsman's Kit##71977
|tip Use it five times.
collect 5 Darkmoon Prize##71976 |q 29517/1
|only if skill("Leatherworking") >= 75
step
talk Stamp Thunderhorn##14845
turnin Putting the Crunch in the Frog##29509 |goto 52.89,67.94
|only if skill("Cooking") >= 75
step
talk Professor Thaddeus Paleo##14847
turnin Fun for the Little Ones##29507 |goto 51.89,60.93
|only if skill("Archaeology") >= 75
step
talk Stamp Thunderhorn##14845
turnin Spoilin' for Salty Sea Dogs##29513 |goto 52.89,67.94
|only if skill("Fishing") >= 75
step
talk Selina Dourman##10445
turnin Banners, Banners Everywhere!##29520 |goto 55.56,55.00
|only if skill("Tailoring") >= 75
step
talk Sayge##14822
turnin Writing the Future##29515 |goto 53.23,75.84
|only if skill("Inscription") >= 75
step
talk Chronos##14833
turnin Tan My Hide##29519 |goto 54.99,70.77
|only if skill("Skinning") >= 75
step
talk Chronos##14833
turnin Keeping the Faire Sparkling##29516 |goto 54.99,70.77
|only if skill("Jewelcrafting") >= 75
step
talk Rinling##14841
turnin Eyes on the Prizes##29517 |goto 49.25,60.78
|only if skill("Leatherworking") >= 75
step
talk Rinling##14841
turnin Talkin' Tonks##29511 |goto 49.25,60.78
|only if skill("Engineering") >= 75
step
talk Chronos##14833
turnin Herbs for Healing##29514 |goto 54.99,70.77
|only if skill("Herbalism") >= 75
step
talk Sylannia##14844
turnin A Fizzy Fusion##29506 |goto 50.53,69.57
|only if skill("Alchemy") >= 75
step
talk Rinling##14841
turnin Rearm, Reuse, Recycle##29518 |goto 49.25,60.78
|only if skill("Mining") >= 75
step
talk Sayge##14822
turnin Putting Trash to Good Use##29510 |goto 53.23,75.84
|only if skill("Enchanting") >= 75
step
talk Yebb Neblegear##14829
turnin Baby Needs Two Pair of Shoes##29508 |goto 51.10,82.04
|only if skill("Blacksmithing") >= 75
step
talk Kerri Hicks##14832
accept Test Your Strength##29433 |goto 47.90,67.12
step
talk Malle Earnhard##74056
accept Welcome to the Darkmoon Races##37819 |goto 48.98,88.32
step
Mount a Racing Strider or Rocketeer |complete hasbuff(132198) or hasbuff(298587) or hasbuff(894222) or hasbuff(132240) |goto 48.36,88.25 |q 37819
|tip Walk across the pad of any mount you choose.
step
Enter the Start Banner with a Darkmoon Game Token |q 37819/1 |goto 47.39,88.35
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	44.70,87.93	42.31,86.59	36.82,83.29	31.80,76.81	30.36,71.04
path	26.32,66.82
Hit the Blue Post |q 37819/2
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Use the spring at the end of the path to get onto the island.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	28.27,67.92	30.58,71.30	33.27,74.94	36.39,79.51	40.58,84.84
path	44.78,88.09	47.72,88.35
Return to the Start Banner |q 37819/3
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
Complete the Race |q 37819/4 |goto 48.35,88.28
step
Click the Complete Quest Box:
turnin Welcome to the Darkmoon Races##37819
step
talk Selina Dourman##10445
Ask her _"Darkmoon Adventurer's Guide?"_
collect 1 Darkmoon Adventurer's Guide##71634 |goto 55.56,55.00 |q 29433
|only if haveq(29433)
step
Kill enemies or players
|tip Only enemies and players that yield experience or honor will award Grisly Trophies.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip You can kill these anywhere you choose.
collect 250 Grisly Trophy##71096 |q 29433/1
|only if haveq(29433)
step
talk Kerri Hicks##14832
turnin Test Your Strength##29433 |goto 47.90,67.12
step
Kill enemies in dungeons
|tip Darkmoon dungeon items can be dropped by trash mobs and bosses from appropriate level dungeons.
|tip Appropriate dungeons are those that still yield experience or those that are max level.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
Collect the Five Darkmoon Dungeon Items |complete completedq(29445) and completedq(29444) and completedq(29451) and completedq(29446) and completedq(29443)
|tip You still need to collect the following items: |only if not completedq(29445) and not completedq(29444) and not completedq(29451) and not completedq(29446) and not completedq(29443)
|tip Mysterious Grimoire |only if not completedq(29445)
|tip Monstrous Egg |only if not completedq(29444)
|tip A Treatise on Strategy |only if not completedq(29451)
|tip Ornate Weapon |only if not completedq(29446)
|tip Imbued Crystal |only if not completedq(29443)
step
use the Mysterious Grimoire##71637
accept An Inriguing Grimoire##29445
step
talk Sayge##14822
turnin An Intriguing Grimoire##29445 |goto 53.23,75.84
step
use the Monstrous Egg##71636
accept An Exotic Egg##29444
step
talk Yebb Neblegear##14829
turnin An Exotic Egg##29444 |goto 51.10,82.04
step
use A Treatise on Strategy##71715
accept The Master Strategist##29451
step
use the Ornate Weapon##71638
accept A Wondrous Weapon##29446
step
use the Imbued Crystal##71635
accept A Curious Crystal##29443
step
talk Professor Thaddeus Paleo##14847
turnin The Master Strategist##29451 |goto 51.89,60.93
turnin A Wondrous Weapon##29446 |goto 51.89,60.93
turnin A Curious Crystal##29443 |goto 51.89,60.93
step
Kill enemies in raids
|tip This item can be dropped by trash mobs and bosses from appropriate level raids.
|tip Appropriate raids are those that still yield experience or those that are max level.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
collect Soothsayer's Runes##71716 |q 29464 |future
step
use the Soothsayer's Runes##71716
accept Tools of Divination##29464
step
talk Professor Thaddeus Paleo##14847
turnin Tools of Divination##29464 |goto 51.89,60.93
step
Kill enemies in Battlegrounds
|tip Darkmoon Battleground items can be dropped by trash mobs and enemy players from PvP Battlegrounds.
|tip You will need to keep the Darkmoon Adventurer's Guide in your inventory.
|tip Loot the bodies for a chance to pick up a Darkmoon Faire quest item.
Collect the Three Darkmoon Battleground Items |complete completedq(29458) and completedq(29456) and completedq(29457)
|tip You still need to collect the following items: |only if not completedq(29458) and not completedq(29456) and not completedq(29457)
|tip Fallen Adventurer's Journal |only if not completedq(29458)
|tip Banner of the Fallen |only if not completedq(29456)
|tip Captured Insignia |only if not completedq(29457)
step
use the Adventurer's Journal##71953
accept The Captured Journal##29458
step
use the Banner of the Fallen##71951
accept A Captured Banner##29456
step
use the Captured Insignia##71952
accept The Enemy's Insignia##29457
step
talk Professor Thaddeus Paleo##14847
turnin The Captured Journal##29458 |goto 51.89,60.93
turnin A Captured Banner##29456 |goto 51.89,60.93
turnin The Enemy's Insignia##29457 |goto 51.89,60.93
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="\nThis guide will help you navigate through the Darkmoon Faire Event",
},[[
step
label "Guide_Home"
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78898 |goto Darkmoon Island/0 54.34,53.15 |q 29463 |future |only if level <= 60
buy 1 Sack o' Tokens##78905 |goto 54.34,53.15 |q 29463 |future |only if level > 60 and level <= 70
buy 1 Sack o' Tokens##78906 |goto 54.34,53.15 |q 29463 |future |only if level > 70 and level <= 80
buy 1 Sack o' Tokens##78907 |goto 54.34,53.15 |q 29463 |future |only if level > 80 and level <= 85
buy 1 Sack o' Tokens##78908 |goto 54.34,53.15 |q 29463 |future |only if level > 85 and level <= 90
buy 1 Sack o' Tokens##78909 |goto 54.34,53.15 |q 29463 |future |only if level > 90 and level <= 100
buy 1 Sack o' Tokens##78910 |goto 54.34,53.15 |q 29463 |future |only if level > 100 and level <= 120
step
use the Sack o' Tokens##78905 |only if itemcount(78905) >= 1
use the Sack o' Tokens##78906 |only if itemcount(78906) >= 1
use the Sack o' Tokens##78907 |only if itemcount(78907) >= 1
use the Sack o' Tokens##78908 |only if itemcount(78908) >= 1
use the Sack o' Tokens##78909 |only if itemcount(78909) >= 1
use the Sack o' Tokens##78910 |only if itemcount(78910) >= 1
use the Sack o' Tokens##78898 |only if itemcount(78898) >= 1
collect 20 Darkmoon Faire Game Token##71083 |q 29463
step
talk Mola##54601
accept It's Hammer Time##29463 |goto Darkmoon Island/0 53.29,54.36
step
talk Mola##54601
Tell her _"Ready to whack!"_
Gain the "Whack-a-Gnoll!" Buff |havebuff 537060  |goto 53.29,54.36 |q 29463
step
Whack #30# Gnolls |q 29463/1 |goto 52.59,53.42
|tip Use the "Whack!" ability on your action bar to whack the Gnolls as they appear.
|tip Do not whack the Doll or you will be stunned for a few seconds.
step
talk Mola##54601
turnin It's Hammer Time##29463 |goto 53.29,54.36
step
talk Maxima Blastenheimer##15303
accept The Humanoid Cannonball##29436 |goto 52.50,56.14
|next "The_Humanoid_Cannonball_Start"
step
label "The_Humanoid_Cannonball_Missed"
talk Teleportologist Fozlebub##57850 |goto 57.09,89.70
Tell him "_Teleport me to the cannon._"
Teleport to the Cannon |goto 52.73,56.03 < 25 |noway |c |q 29436
step
label "The_Humanoid_Cannonball_Start"
talk Maxima Blastenheimer##15303
Tell her "_Launch me! (Darkmoon Game Token)_"
Wait for the Cannon to Launch You |havebuff 135992 |goto 52.50,56.14 |q 29436
step
Accrue #5# Cannon Target Points |q 29436/1 |goto 56.33,93.17 |next "Turnin_The_Humanoid_Cannonball" |or
|tip Use the "Cancel Magic Wings" ability on your action bar.
|tip You will continue your forward momentum, so aim appropriately.
If you Missed, Click Here |confirm |next "The_Humanoid_Cannonball_Missed" |or |q 29436
step
label "Turnin_The_Humanoid_Cannonball"
talk Teleportologist Fozlebub##57850 |goto 57.09,89.70
Tell him "_Teleport me to the cannon._"
Teleport to the Cannon |goto 52.73,56.03 < 25 |noway |c |q 29436
step
talk Maxima Blastenheimer##15303
turnin The Humanoid Cannonball##29436 |goto 52.50,56.14
step
talk Rinling##14841
accept He Shoots, He Scores!##29438 |goto 49.25,60.78
step
talk Rinling##14841
Tell him _"Let's shoot! (Darkmoon Game Token)"_
Gain the "Crack Shot!" Buff |havebuff 135614 |goto 49.25,60.78 |q 29438
step
Hit #25# Targets |q 29438/1 |goto 49.46,60.68
|tip Use the "Shoot" ability on the target with a green icon above it.
|tip Make sure you are directly facing the target before you shoot.
step
talk Rinling##14841
turnin He Shoots, He Scores!##29438 |goto 49.25,60.78
step
talk Finlay Coolshot##54605
accept Tonk Commander##29434 |goto 50.69,65.14
step
talk Finlay Coolshot##54605
Tell him _"Ready to Play! (Darkmoon Game Token)"_
Control a Tonk |invehicle |goto 50.69,65.14 |q 29434
step
kill Tonk Target##33081+
|tip Use the "Cannon" ability on your action bar.
|tip If you get "Marked," use the "Nitrous Boost" ability on your action bar.
Destroy #30# Targets |q 29434/1 |goto 52.05,65.60
step
Leave the Vehicle |outvehicle |q 29434
|tip Use the "Exit" ability on your action bar.
step
talk Finlay Coolshot##54605
turnin Tonk Commander##29434 |goto 50.69,65.14
step
talk Ziggie Sparks##85546
accept Firebird's Challenge##36481 |goto 48.37,71.36
step
label "Firebird's_Challenge_Aquire_Buff"
talk Ziggie Sparks##85546
Tell her _"Ready to fly! (Darkmoon Game Token)"_
Gain the "Wings of Flame" Buff |havebuff 514340 |goto 48.37,71.36 |q 36481
step
Collect #15# Rings |q 36481/1 |next "Turnin_Firebird's_Challenge" |or
|tip Fly through the rings around the Darkmoon Faire
|tip The buff lasts for 10 seconds and only refreshes when collecting a ring, so you need to be quick.
Click Here if you Failed to Collect Them All |next "Firebird's_Challenge_Aquire_Buff" |or |q 36481
step
label "Turnin_Firebird's_Challenge"
talk Ziggie Sparks##85546
turnin Firebird's Challenge##36481 |goto 48.37,71.36
step
talk Jessica Rogers##54485
accept Target: Turtle##29455 |goto 51.51,77.71
step
talk Jessica Rogers##54485
Tell her _"Ready to play! (Darkmoon Game Token)"_
Start the Ring Toss Game |havebuff 133345 |goto 51.51,77.71
step
Land #3# Rings on Dubenko |q 29455/1 |goto 51.64,78.00
|tip Use the "Ring Toss" ability on your action bar.
|tip Throw rings on the turtle.
|tip There is a one second cast time plus travel time, so aim accordingly.
step
talk Jessica Rogers##54485
turnin Target: Turtle##29455 |goto 51.51,77.71
step
talk Malle Earnhard##74056
accept The Real Race##37910 |goto 48.98,88.32
step
Mount a Racing Strider or Rocketeer |complete hasbuff(132198) or hasbuff(298587) or hasbuff(894222) or hasbuff(132240) |goto 48.36,88.25 |q 37910
|tip Walk across the pad of any mount you choose.
step
Enter the Start Banner with a Darkmoon Game Token |q 37910/1 |goto 47.39,88.35
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	44.70,87.93	42.31,86.59	36.82,83.29	31.80,76.81	30.36,71.04
path	26.32,66.82
Reach the Blue Post |q 37910/2
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Use the spring at the end of the path to get onto the island.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	27.65,56.60	28.76,49.61	29.59,46.06
Reach the Green Post |q 37910/3
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	33.44,48.45	36.34,51.03	41.33,51.06	43.54,50.08
Reach the Red Post |q 37910/4
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	44.92,54.75	44.35,60.20	41.71,67.93	41.36,73.97	39.61,79.94
path	41.83,84.81	44.46,86.87	47.72,88.33
Return to the Start Banner |q 37910/5
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
Complete the Race |q 37910/6 |goto 48.35,88.28
step
label "Let's_Keep_Racing"
talk Malle Earnhard##74056
turnin The Real Race##37910 |goto 48.98,88.32 |only if not completedq(37910)
accept Let's Keep Racing!##33756 |goto 48.98,88.32
step
Mount a Racing Strider or Rocketeer |complete hasbuff(132198) or hasbuff(298587) or hasbuff(894222) or hasbuff(132240) |goto 48.36,88.25 |q 33756
|tip Walk across the pad of any mount you choose.
step
Enter the Start Banner with a Darkmoon Game Token |q 33756/1 |goto 47.39,88.35
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	44.70,87.93	42.31,86.59	36.82,83.29	31.80,76.81	30.36,71.04
path	26.32,66.82
Reach the Blue Post |q 33756/2
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Use the spring at the end of the path to get onto the island.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	27.65,56.60	28.76,49.61	29.59,46.06
Reach the Green Post |q 33756/3
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	33.44,48.45	36.34,51.03	41.33,51.06	43.54,50.08
Reach the Red Post |q 33756/4
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	44.92,54.75	44.35,60.20	41.71,67.93	41.36,73.97	39.61,79.94
path	41.83,84.81	44.46,86.87	47.72,88.33
Return to the Start Banner |q 33756/5
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
Complete the Race |q 33756/6 |goto 48.35,88.28
step
talk Malle Earnhard##74056
turnin Let's Keep Racing!##33756 |goto 48.98,88.32
step
talk Patti Earnhard##90473
accept The Real Big Race##37911 |goto 53.25,87.60
step
Mount a Racing Strider or Rocketeer |complete hasbuff(132198) or hasbuff(298587) or hasbuff(894222) or hasbuff(132240) |goto 53.74,88.21 |q 37911
|tip Walk across the pad of any mount you choose.
step
Enter the Start Banner with a Darkmoon Game Token |q 37911/1 |goto 54.48,88.24
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	59.99,86.73	65.32,88.03	70.35,89.94	74.57,86.70	78.79,79.94
path	78.45,75.06	76.06,61.19	74.72,62.30	73.39,61.62	71.94,60.50
path	71.81,67.78	70.39,71.96
Reach the Purple Post |q 37911/2
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Use the spring at the end of the path to get onto the island.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	69.81,66.88	70.40,56.85	68.00,50.65	67.87,47.19	66.95,34.66
path	63.28,21.70	64.67,19.94
Reach the Green Post |q 37911/3
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	60.64,24.21	58.29,22.30	57.40,27.87	56.21,27.32	55.85,23.73
path	54.62,20.20	53.12,18.33	50.83,18.06
Reach the Red Post |q 37911/4
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	50.60,20.26	51.25,25.52	53.03,29.90	52.98,36.63	55.54,37.35
path	56.72,43.52	57.96,48.79	55.00,54.07	51.11,60.23	49.07,66.16
path	49.70,73.27	49.88,82.36	51.08,87.57	54.55,88.25
Return to the Start Banner |q 37911/5
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
Complete the Race |q 37911/6 |goto 54.55,88.25
step
label "More_Big_Racing"
talk Patti Earnhard##90473
turnin The Real Big Race##37911 |goto 53.25,87.60 |only if not completedq(37911)
accept More Big Racing!##37868 |goto 53.25,87.60
step
Mount a Racing Strider or Rocketeer |complete hasbuff(132198) or hasbuff(298587) or hasbuff(894222) or hasbuff(132240) |goto 53.74,88.21 |q 37868
|tip Walk across the pad of any mount you choose.
step
Enter the Start Banner with a Darkmoon Game Token |q 37868/1 |goto 54.48,88.24
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	59.99,86.73	65.32,88.03	70.35,89.94	74.57,86.70	78.79,79.94
path	78.45,75.06	76.06,61.19	74.72,62.30	73.39,61.62	71.94,60.50
path	71.81,67.78	70.39,71.96
Reach the Purple Post |q 37868/2
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Use the spring at the end of the path to get onto the island.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	69.81,66.88	70.40,56.85	68.00,50.65	67.87,47.19	66.95,34.66
path	63.28,21.70	64.67,19.94
Reach the Green Post |q 37868/3
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	60.64,24.21	58.29,22.30	57.40,27.87	56.21,27.32	55.85,23.73
path	54.62,20.20	53.12,18.33	50.83,18.06
Reach the Red Post |q 37868/4
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
map Darkmoon Island/0
path follow smart; loop off; ants curved
path	50.60,20.26	51.25,25.52	53.03,29.90	52.98,36.63	55.54,37.35
path	56.72,43.52	57.96,48.79	55.00,54.07	51.11,60.23	49.07,66.16
path	49.70,73.27	49.88,82.36	51.08,87.57	54.55,88.25
Return to the Start Banner |q 37868/5
|tip Boxes with glowing purple springs will shoot you up in the air.
|tip Boxes with glowing blue portals will launch you forward.
|tip Boxes with glowing red and yellow boots will give you a brief speed boost.
|tip Boxes with small pouches above them will give you Racing Regs reagents.
|tip Race MiniZeps look like small zeppelins and should be avoided.
|tip Electrified Chains look like grey chain bars with crackling lightning and should be avoided.
|tip If a Race MiniZep aggros you, use the "Summon Aggrobots" ability on your action bar. |only if hasbuff(894222)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Danger Zone" ability on your action bar. |only if hasbuff(132240)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Rocket Barrage" ability on your action bar. |only if hasbuff(298587)
|tip If a Race MiniZep aggros you and you have a Racing Reg, use the "Jump To Racer" ability on your action bar. |only if hasbuff(132198)
step
Complete the Race |q 37868/6 |goto 54.55,88.25
step
talk Patti Earnhard##90473
turnin More Big Racing!##37868 |goto 53.25,87.60
step
Click Here to Repeat the "Let's Keep Racing!" Quest |confirm |next "Let's_Keep_Racing"
Click Here to Repeat the "More Big Racing!" Quest |confirm |next "More_Big_Racing"
Click Here if Dailies Have Reset |confirm |next "Guide_Home"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Achievements\\Ace Tonk Commander",{
author="support@zygorguides.com",
description="\nScore 45 hits in one session of the Tonk Challenge.",
condition_suggested=function() return isevent('Darkmoon Faire') end,
achieveid={9885},
patch='60100',
},[[
step
talk Zina Sharpworth##55266
buy 1 Sack o' Tokens##78898 |goto Darkmoon Island/0 54.34,53.15 |q 29434 |future |only if level <= 60 |or
buy 1 Sack o' Tokens##78905 |goto 54.34,53.15 |q 29434 |future |only if level > 60 and level <= 70 |or
buy 1 Sack o' Tokens##78906 |goto 54.34,53.15 |q 29434 |future |only if level > 70 and level <= 80 |or
buy 1 Sack o' Tokens##78907 |goto 54.34,53.15 |q 29434 |future |only if level > 80 and level <= 85 |or
buy 1 Sack o' Tokens##78908 |goto 54.34,53.15 |q 29434 |future |only if level > 85 and level <= 90 |or
buy 1 Sack o' Tokens##78909 |goto 54.34,53.15 |q 29434 |future |only if level > 90 and level <= 100 |or
buy 1 Sack o' Tokens##78910 |goto 54.34,53.15 |q 29434 |future |only if level > 100 and level <= 120 |or
'|next "Achievement_Complete" |only if achieved(9885) |or
step
use the Sack o' Tokens##78905 |only if itemcount(78905) >= 1
use the Sack o' Tokens##78906 |only if itemcount(78906) >= 1
use the Sack o' Tokens##78907 |only if itemcount(78907) >= 1
use the Sack o' Tokens##78908 |only if itemcount(78908) >= 1
use the Sack o' Tokens##78909 |only if itemcount(78909) >= 1
use the Sack o' Tokens##78910 |only if itemcount(78910) >= 1
use the Sack o' Tokens##78898 |only if itemcount(78898) >= 1
collect 20 Darkmoon Faire Game Token##71083 |q 29434 |future
step
talk Finlay Coolshot##54605
accept Tonk Commander##29434 |goto Darkmoon Island/0 50.69,65.14
step
label "Start_Controlling_Tonk"
talk Finlay Coolshot##54605
Tell him _"Ready to Play! (Darkmoon Game Token)"_
Control a Tonk |invehicle |goto 50.69,65.14 |q 29434
step
kill Tonk Target##33081+
|tip Use the "Cannon" ability on your action bar.
|tip If you get "Marked," use the "Nitrous Boost" ability on your action bar.
|tip You must hit at least 45 targets before your buff expires.
|tip It helps to have a friend accept the quest and idle their tonk to spawn more targets.
Earn the "Ace Tonk Commander" Achievement |achieve 9885 |goto 52.05,65.60 |next "Complete_Tonk_Commander_Quest" |or
'|outvehicle |next "Start_Controlling_Tonk" |only if not achieved(9885) |or
step
label "Complete_Tonk_Commander_Quest"
Destroy #30# Targets |q 29434/1 |goto 52.05,65.60
step
Leave the Vehicle |outvehicle |q 29434
|tip Use the "Exit" ability on your action bar.
step
talk Finlay Coolshot##54605
turnin Tonk Commander##29434 |goto 50.69,65.14
step
label "Achievement_Complete"
_Congratulations!_
You Earned the "Ace Tonk Commander" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Achievements",{
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="\nThis guide will help you navigate through the Darkmoon Faire Event",
},[[
step
label "main"
To earn Achievements for the Darkmoon Faire, you will need to complete Dailies, Quests and other things.
Click here to do the Dailies Achievments |confirm always |next "dailies" |or
or
Click here to do the Profession Quests Achievements |confirm always |next "professions" |or
or
Click here for the Non-Questing Achievements |confirm always |next "no_quest" |or
step
label "dailies"
You have earned the Achievement Blastenheimer Bullseye! |achieve 6021 |only if achieved(6021)
You still need to earn the Achievement Blastenheimer Bullseye! |achieve 6021 |only if not achieved(6021)
You have earned the Achievement Quick Shot! |achieve 6022 |only if achieved(6022)
You still need to earn the Achievement Quick Shot! |achieve 6022 |only if not achieved(6022)
You have earned the Achievement Step Right Up! |achieve 6020 |only if achieved(6020)
You still need to earn the Achievement Step Right Up! |achieve 6020 |only if not achieved(6020)
confirm always
leechsteps "Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies"
|next "main"
step
label "professions"
You have earned the Achievement Faire Favors |achieve 6032 |only if achieved(6032)
You still need to earn the Achievement Faire Favors |achieve 6032 |only if not achieved(6032)
You have earned the Achievement Darkmoon Dungeoneer |achieve 6027 |only if achieved(6027)
You still need to earn the Achievement Darkmoon Dungeoneer |achieve 6027 |only if not achieved(6027)
You have earned the Achievement Darkmoon Defender |achieve 6028 |only if achieved(6028)
You still need to earn the Achievement Darkmoon Defender |achieve 6028 |only if not achieved(6028)
You have earned the Achievement Darkmoon Despoiler |achieve 6029 |only if achieved(6029)
You still need to earn the Achievement Darkmoon Despoiler |achieve 6029 |only if not achieved(6029)
confirm always
step
step
talk Darkmoon Faire Mystic Mage##55382
|tip Clicking on any of the quests will direct you to one of the four main cities.
accept The Darkmoon Faire##7926 |goto Orgrimmar 48.12,62.30
accept The Darkmoon Faire##7926 |goto Undercity/0 61.88,47.28
accept The Darkmoon Faire##7926 |goto Silvermoon City/0 74.34,81.89
accept The Darkmoon Faire##7926 |goto Thunder Bluff/0 43.88,54.33
step
talk Innkeeper Kauth##6747
buy 5 Moonberry Juice##1645 |complete itemcount(1645) >= 5 |goto Mulgore 46.8,60.4
only if skill("Alchemy")>74 and not completedq(29506)
step
talk Shadi Mistrunner##8363
buy 5 Simple Flour##30817 |complete itemcount(30817) >= 5 |goto Thunder Bluff 40.6,62.6
only if skill("Cooking")>74 and not completedq(29509)
step
talk Shadi Mistrunner##8363
buy 1 Coarse Thread##2320 |complete itemcount(2320) >= 1 |goto Thunder Bluff 40.6,62.6
buy 1 Blue Dye##6260 |complete itemcount(6260) >= 1 |goto Thunder Bluff 40.6,62.6
buy 1 Red Dye##2604 |complete itemcount(2604) >= 1 |goto Thunder Bluff 40.6,62.6
only if skill("Tailoring")>74 and not completedq(29520)
step
talk Shadi Mistrunner##8363
buy 5 Coarse Thread##2320 |complete itemcount(2320) >= 5 |goto Thunder Bluff 40.6,62.6
buy 5 Blue Dye##6260 |complete itemcount(6260) >= 5 |goto Thunder Bluff 40.6,62.6
buy 10 Shiny Bauble##6529 |complete itemcount(6529) >= 10 |goto Thunder Bluff 40.6,62.6
only if skill("Leatherworking")>74 and not completedq(29517)
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7926 |goto Darkmoon Island/0 47.90,64.74
step
talk Selina Dourman##10445
accept Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.56,55.00
only if skill("Tailoring")>74
step
talk Rinling##14841
accept Talkin' Tonks##29511 |goto Darkmoon Island/0 49.25,60.78
only if skill("Engineering")>74
step
talk Rinling##14841
accept Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
only if skill("Mining")>74
step
talk Rinling##14841
accept Eyes on the Prizes##29517 |goto 49.25,60.78
only if skill("Leatherworking")>74
step
talk Stamp Thunderhorn##14845
accept Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.89,67.94
only if skill("Cooking")>74
step
talk Kerri Hicks##14832
accept Test Your Strength##29433 |goto 47.90,67.12
step
talk Malle Earnhard##74056
accept Welcome to the Darkmoon Races##37819 |goto Darkmoon Island/0 48.98,88.32
step
Walk over either the Rocketeer or the Racing Strider at this location |goto Darkmoon Island/0 48.4,87.6
Choose the _Racing Strider_ |havebuff 179750 |or
Choose the _Rocketeer_ |havebuff 179252 |or
only if haveq(37819)
step
Enter the Start Banner with a Darkmoon Game Token |q 37819/1 |goto 47.59,88.36
only if haveq(37819)
step
map Darkmoon Island/0
path loop off
path	40.2,85.5	31.8,76.7	26.5,66.5
Avoid the _Electrified Chains_ and the _Race MiniZeps_ while traversing the course
Reach the Island |q 37819/2
only if haveq(37819)
step
map Darkmoon Island/0
path loop off
path	30.6,73.9	35.8,82.0	40.8,86.3
path	47.5,88.3
Hit the Power Ups as you return to the start
Complete the race |q 37819/3
only if haveq(37819)
step
talk Malle Earnhard##74056
turnin Welcome to the Darkmoon Races##37819 |goto Darkmoon Island/0 48.98,88.32
step
Click the Plump Frogs in your bags |use Plump Frogs##72056
collect 5 Breaded Frog##72057 |n
Throw the Breaded Frogs in the cauldron |use Breaded Frog##72057
Fry 5 Crunchy Frogs |q 29509/1 |goto Darkmoon Island/0 52.7,68.1
only if skill("Cooking")>74
step
talk Stamp Thunderhorn##14845
turnin Putting the Crunch in the Frog##29509 |goto Darkmoon Island/0 52.89,67.94
only if skill("Cooking")>74
step
talk Stamp Thunderhorn##14845
accept Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.89,67.94
only if skill("Fishing")>74
step
talk Sayge##14822
accept Writing the Future##29515 |goto Darkmoon Island/0 53.23,75.84
only if skill("Inscription")>74
step
talk Chronos##14833
accept Tan My Hide##29519 |goto Darkmoon Island/0 54.99,70.77
only if skill("Skinning")>74
step
talk Chronos##14833
accept Herbs for Healing##29514 |goto Darkmoon Island/0 54.99,70.77
only if skill("Herbalism")>74
step
talk Sylannia##14844
accept A Fizzy Fusion##29506 |goto 50.53,69.57
only if skill("Alchemy")>74
step
talk Chronos##14833
accept Keeping the Faire Sparkling##29516 |goto 54.99,70.77
only if skill("Jewelcrafting")>74
step
talk Sayge##14822
accept Putting Trash to Good Use##29510 |goto Darkmoon Island/0 53.23,75.84
only if skill("Enchanting")>74
step
talk Yebb Neblegear##14829
accept Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.10,82.04
only if skill("Blacksmithing")>74
step
buy Fishing Pole##6256 |goto 52.5,88.7
only if skill("Fishing")>74
step
Equip your Fishing Pole |equipped Fishing Pole##6256 |use Fishing Pole##6256 |q 29513
Use your Fishing ability to catch _Sea Herrings_ |cast Fishing##7620
Catch 5 Great Sea Herring |q 29513/1 |goto Darkmoon Island 51.7,91.6
only if skill("Fishing")>74
step
All around the Island
Click Discarded Weapons
collect 6 Discarded Weapon##72018 |n
Disenchant the Discarded Weapons |use Discarded Weapon##72018
Collect 6 Soothsayer's Dust |q 29510/1
only if skill("Enchanting")>74
step
All around the Island
click Tonk Scrap##209275
Collect #6# pieces of Tonk Scrap |q 29518/1
only if skill("Mining")>74
step
All around the Island
click Bits of Glass##238
collect 5 Bits of Glass##72052 |n
use Bit of Glass##72052
Make #5# Sparkling Gemstones |q 29516/1
only if skill("Jewelcrafting")>74
step
All around the Island
Use your Battered Wrench to repair Damaged Tonk's |use Battered Wrench##72110
Repair #5# Damaged Tonk's |q 29511/1
only if skill("Engineering")>74
step
All around the Island
click Darkblossom##209284
Gather 6 Darkblossom |q 29514/1
only if skill("Herbalism")>74
step
All around the Island
Click Staked Skins
Scrape 4 Staked Skins |q 29519/1
step
talk Sylannia##14844
buy 5 Fizzy Faire Drink##19299 |complete itemcount(19299) >= 5 |q 29506 |goto 50.53,69.57
only if skill("Alchemy")>74
step
use Cocktail Shaker##72043
Create #5# Servings of Moonberry Fizz |q 29506/1 |goto Darkmoon Island/0 50.4,69.5
only if skill("Alchemy")>74
step
use Darkmoon Banner Kit##72048
Plant a Darkmoon Banner |q 29520/1 |goto Darkmoon Island/0 50.0,66.2
step
Use the Iron Stock in your bags to make Horseshoes |use Iron Stock##71964
collect 4 Horseshoes##71967 |q 29508 |goto 55.3,71.7
only if skill("Blacksmithing")>74
step
use Bundle of Exotic Herbs##71971
collect Prophetic Ink##71972 |n
use Prophetic Ink##71972
|tip Each one requires 1 Light Parchment to create.
collect 5 Fortune##71974+ |q 29515/1
only if skill("Inscription")>74
step
Use the _Darkmoon Craftsman's Kit_ in your bags to create Darkmoon Prizes |use Darkmoon Craftsman's Kit##71977
collect 5 Darkmoon Prize##71976 |q 29517/1
only if skill("Leatherworking")>74
step
In order to collect _Grisley Trophies_ you will need to kill enemies that give Honor OR Experience
|tip This means they absolutely need to be green level minimal.
You will also need the _Darkmoon Adventurer's Guide_ in your inventory
collect 250 Grisly Trophy##71096 |q 29433/1
If you have misplaced your book somehow, you can talk to _Selina Dourman_ located here |goto Darkmoon Island/0 55.56,55.00
only if haveq(29433)
step
talk Stamp Thunderhorn##14845
turnin Spoilin' for Salty Sea Dogs##29513 |goto Darkmoon Island/0 52.89,67.94
only if skill("Fishing")>74
step
talk Sayge##14822
turnin Writing the Future##29515 |goto Darkmoon Island/0 53.23,75.84
only if skill("Inscription")>74
step
talk Chronos##14833
turnin Tan My Hide##29519 |goto Darkmoon Island/0 54.99,70.77
only if skill("Skinning")>74
step
talk Chronos##14833
turnin Keeping the Faire Sparkling##29516 |goto 54.99,70.77
only if skill("Jewelcrafting")>74
step
talk Rinling##14841
turnin Eyes on the Prizes##29517 |goto 49.25,60.78
only if skill("Leatherworking")>74
step
talk Rinling##14841
turnin Talkin' Tonks##29511 |goto Darkmoon Island/0 49.25,60.78
only if skill("Engineering")>74
step
talk Chronos##14833
turnin Herbs for Healing##29514 |goto Darkmoon Island/0 54.99,70.77
only if skill("Herbalism")>74
step
talk Sylannia##14844
turnin A Fizzy Fusion##29506 |goto 50.53,69.57
only if skill("Alchemy")>74
step
talk Selina Dourman##10445
turnin Banners, Banners Everywhere!##29520 |goto Darkmoon Island/0 55.56,55.00
only if skill("Tailoring")>74
step
talk Rinling##14841
turnin Rearm, Reuse, Recycle##29518 |goto Darkmoon Island/0 49.25,60.78
only if skill("Mining")>74
step
talk Sayge##14822
turnin Putting Trash to Good Use##29510 |goto Darkmoon Island 53.23,75.84
only if skill("Enchanting")>74
step
Use the Horshoes in your bag on Baby |use Horseshoe##71967
Put New Horshoes On Baby |q 29508/1 |goto Darkmoon Island/0 51.3,81.8
only if skill("Blacksmithing")>74
step
talk Yebb Neblegear##14829
turnin Baby Needs Two Pair of Shoes##29508 |goto Darkmoon Island/0 51.10,82.04
only if skill("Blacksmithing")>74
step
talk Kerri Hicks##14832
turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.90,67.12
step
These next 3 items have to be _obtained from Battlegrounds_
When you kill an opponent, _loot_ their body for a chance to get _each item_.
collect Adventurer's Journal##71953 |n
accept The Captured Journal##29458 |use Adventurer's Journal##71953
collect Banner of the Fallen##71951 |n
accept A Captured Banner##29456 |use Banner of the Fallen##71951
collect Captured Insignia##71952 |n
accept The Enemy's Insignia##29457 |use Captured Insignia##71952
step
These next 5 items have to be _obtained from Dungeons_ listed below
collect Mysterious Grimoire##71637 |n
|tip You can get this in Heroic Scholomance from Darkmaster Gandling
accept An Inriguing Grimoire##29445 |use Mysterious Grimoire##71637
collect Monstrous Egg##71636 |n
|tip You can get this in Stormstout Brewery from Hoptallus
accept An Exotic Egg##29444 |use Monstrous Egg##71636
collect A Treatise on Strategy##7175 |n
|tip You can get this in Stormstout Brewery from Hoptallus
accept The Master Strategist##29451 |use A Treatise on Strategy##7175
collect Ornate Weapon##71638 |n
|tip You can get this in Heroic Scarlet Monastery from Brother Korloff
accept A Wondrous Weapon##29446 |use Ornate Weapon##71638
collect Imbued Crystal##71635 |n
|tip You can get this in Heroic Scarlet Monastery from High Inquisitor Whitemane
accept A Curious Crystal##29443 |use Imbued Crystal##71635
step
The next item can only be obtained from any 10 man Cataclysm Raid Boss
collect Soothsayer's Runes##71716 |n
accept Tools of Divination##29464 |use Soothsayer's Runes##71716
step
talk Kerri Hicks##14832
turnin Test Your Strength##29433 |goto Darkmoon Island/0 47.90,67.12
step
talk Professor Thaddeus Paleo##14847
turnin The Captured Journal##29458 |goto Darkmoon Island/0 51.89,60.93
turnin A Captured Banner##29456 |goto Darkmoon Island/0 51.89,60.93
turnin The Enemy's Insignia##29457 |goto Darkmoon Island/0 51.89,60.93
turnin The Master Strategist##29451 |goto Darkmoon Island/0 51.89,60.93
turnin A Wondrous Weapon##29446 |goto Darkmoon Island/0 51.89,60.93
turnin A Curious Crystal##29443 |goto Darkmoon Island/0 51.89,60.93
turnin Tools of Divination##29464 |goto Darkmoon Island/0 51.89,60.93
step
talk Yebb Neblegear##14829
turnin An Exotic Egg##29444 |goto Darkmoon Island/0 51.10,82.04
step
talk Sayge##14822
turnin An Intriguing Grimoire##29445 |goto Darkmoon Island/0 53.23,75.84
|next "main"
step
label "no_quest"
You have earned the Achievement Darkmoon Duelist! |achieve 6023 |only if achieved(6023)
You still need to earn the Achievement Darkmoon Duelist! |achieve 6023 |only if not achieved(6023)
You have earned the Achievement Fairegoer's Feast! |achieve 6026 |only if achieved(6026)
You still need to earn the Achievement Fairegoer's Feast! |achieve 6026 |only if not achieved(6026)
You have earned the Achievement Taking the Show on the Road! |achieve 6031 |only if achieved(6031)
You still need to earn the Taking the Show on the Road! |achieve 6031 |only if not achieved(6031)
You have earned the Achievement I Was Promised a Pony! |achieve 6025 |only if achieved(6025)
You still need to earn the I Was Promised a Pony! |achieve 6025 |only if not achieved(6025)
confirm always
step
talk Sylannia##14844
buy 1 Cheap Beer##19222 |n |goto Darkmoon Island/0 50.53,69.57
Drink Cheap Beer |achieve 6026/12 |use Cheap Beer##19222
buy 1 Darkmoon Special Reserve##19221 |n |goto Darkmoon Island/0 50.53,69.57
Drink Darkmoon Special Reserve |achieve 6026/13 |use Special Reserve##19221
buy 1 Fizzy Faire Drink##19299 |n |goto Darkmoon Island/0 50.53,69.57
Drink Fizzy Faire Drink |achieve 6026/14 |use Fizzy Faire Drink##19299
buy 1 Bottled Winterspring Water##19300 |n |goto Darkmoon Island/0 50.53,69.57
Drink Bottled Winterspring Water |achieve 6026/11 |use Bottled Winterspring Water##19300
buy 1 Iced Berry Slush##33234 |n |goto Darkmoon Island/0 50.53,69.57
Drink Iced Berry Slush |achieve 6026/17 |use Iced Berry Slush##33234
buy 1 Fizzy Faire Drink "Classic"##33236 |n |goto Darkmoon Island/0 50.53,69.57
Drink Fizzy Faire Drink "Classic" |achieve 6026/15 |use Fizzy Faire Drink "Classic"##33236
buy 1 Fresh-Squeezed Limeade##44941 |n |goto Darkmoon Island/0 50.53,69.57
Drink Fresh-Squeezed Limeade |achieve 6026/16 |use Fresh-Squeezed Limeade##44941
buy 1 Sasparilla Sinker##74822 |n |goto Darkmoon Island/0 50.53,69.57
Drink Sasparilla Sinker |achieve 6026/18 |use Sasparilla Sinker##74822
step
talk Stamp Thunderhorn##14845
buy Darkmoon Dog##19223 |n |goto Darkmoon Island/0 52.89,67.94
Eat Darkmoon Dog |achieve 6026/3 |use Darkmoon Dog##19223
buy Spiced Beef Jerky##19304 |n |goto Darkmoon Island/0 52.89,67.94
Eat Spiced Beef Jerky |achieve 6026/10 |use Spiced Beef Jerky##19304
buy Pickled Kodo Foot##19305 |n |goto Darkmoon Island/0 52.89,67.94
Eat Pickled Kodo Foot |achieve 6026/7 |use Pickled Kodo Foot##19305
buy Red Hot Wings##19224 |n |goto Darkmoon Island/0 52.89,67.94
Eat Red Hot Wings |achieve 6026/8 |use Red Hot Wings##19224
buy Crunchy Frog##19306 |n |goto Darkmoon Island/0 52.89,67.94
Eat Crunchy Frog |achieve 6026/2 |use Crunchy Frog##19306
buy Deep Fried Candybar##19225 |n |goto Darkmoon Island/0 52.89,67.94
Eat Deep Fried Candybar |achieve 6026/4 |use Deep Fried Candybar##19225
buy Funnel Cake##33246 |n |goto Darkmoon Island/0 52.89,67.94
Eat Funnel Cake |achieve 6026/6 |use Funnel Cake##33246
buy Forest Strider Drumstick##33254 |n |goto Darkmoon Island/0 52.89,67.94
Eat Forest Strider Drumstick |achieve 6026/5 |use Forest Strider Drumstick##33254
buy Corn-Breaded Sausage##44940 |n |goto Darkmoon Island/0 52.89,67.94
Eat Corn-Breaded Sausage |achieve 6026/1 |use Corn-Breaded Sausage##44940
buy Salty Sea Dog##73260 |n |goto Darkmoon Island/0 52.89,67.94
Eat Salty Sea Dog |achieve 6026/9 |use Salty Sea Dog##73260
Earn the Achievement Fairegoer's Feast |achieve 6026
step
clicknpc Darkmoon Pony##55715
Earn the Achievement I Was Promised a Pony |achieve 6025 |goto Darkmoon Island/0 56.8,81.4
step
talk Boomie Sparks##55278
buy 6 Darkmoon Firework##74142 |future |achieve 6031 |goto Darkmoon Island/0 48.4,71.9
step
Use your Darkmoon Firework |achieve 6031/5 |use Darkmoon Firework##74142 |goto Thunder Bluff,32.2,67.0
step
Use your Darkmoon Firework |achieve 6031/2 |use Darkmoon Firework##74142 |goto Orgrimmar 49.2,59.3
step
Use your Darkmoon Firework |achieve 6031/6 |use Darkmoon Firework##74142 |goto Undercity 66.3,2.2
step
Use your Darkmoon Firework |achieve 6031/4 |use Darkmoon Firework##74142 |goto Silvermoon City,50.7,16.4
step
Use your Darkmoon Firework |achieve 6031/1 |use Darkmoon Firework##74142 |goto Dalaran 72.5,45.5
step
Use your Darkmoon Firework |achieve 6031/3 |use Darkmoon Firework##74142
Earn the Achievement Taking the Show on the Road! |achieve 6031 |goto Shattrath City 63.8,41.7
step
Click Darkmoon Deathmatch Gate and enter the Deathmatch Arena
Once inside, you will need to fight anyone inside, if you win, you will earn an achievement.
Earn the Achievement Darkmoon Duelist! |achieve 6023 |goto Darkmoon Island/0 46.8,78.8
Defeat 12 combatants in the Deathmatch Arena
Earn the Achievement Darkmoon Dominator |achieve 6024 |goto Darkmoon Island/0 46.8,78.8
step
In order to earn the Triumphant Turtle Tossing achievement, you will need to watch carefully
You will notice the turtle starts off in a specific spot
It will walk away, then return to the spot of origin
When it begins to run back to the spot of origin, toss a ring at the said spot
Earn the Triumphant Turtle Tossing Achievement |achieve 9894
step
In order to earn the Ace Tonk Commander achievement, you will need to land 45 hits in _a single session_ of the Tonk Challenge
The easiest way to earn this achievement is to wait until there are hardly any people around for a better chance at destroying the targets
|tip Spam 1 on your action bar as soon as you get in the arena
talk Finlay Coolshot##54605
Tell him "Ready to play!" |goto Darkmoon Island/0 50.7,65.1
Earn the Ace Tonk Commander Achievement |achieve 9885
step
This portion will cover 4 Achievements, all centering around the Racing Strider
In order to earn the Darkmoon Racer Achievements, you will need to complete a race with minimal amount of toll build ups
If you end the race within 11 tolls, you will earn all 4 achievements
Click here to move onto the racing quests |confirm
stickystart "4fold"
step
talk Malle Earnhard##74056
accept The Real Race##37910 |goto 48.98,88.32
step
Choose the _Racing Strider_ |havebuff 132198 |goto Darkmoon Island/0 48.4,87.7
only if haveq(37910)
step
Enter the Start Banner with a Darkmoon Game Token |q 37910/1 |goto 47.71,88.27
step
map Darkmoon Island/0
path loop off; dist 15
path	42.4,86.7	36.7,83.2	31.8,76.9
path	30.6,71.5	26.7,66.7
Follow the provided path, using the provided abilities to run the track
Reach the Blue Post |q 37910/2
step
map Darkmoon Island/0
path loop off; dist 15
path	28.8,63.3	27.6,56.7	29.6,45.8
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q 37910/3
step
map Darkmoon Island/0
path loop off; dist 15
path	33.4,48.5	36.5,51.2	41.3,51.1
path	43.6,50.4
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q 37910/4
step
map Darkmoon Island/0
path loop off; dist 15
path	44.9,54.7	44.3,60.3	41.7,68.1
path	41.3,74.2	39.7,80.3	44.3,86.7
path	47.8,88.3
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q 37910/5
step
label "dualrace"
talk Malle Earnhard##74056
turnin The Real Race##37910 |goto 48.98,88.32
accept Let's Keep Racing!##33756 |goto 48.98,88.32
step
Choose the _Racing Strider_ |havebuff 132198 |goto Darkmoon Island/0 48.4,87.7
only if haveq(33756)
step
Enter the Start Banner with a Darkmoon Game Token |q 33756/1 |goto 47.71,88.27
step
map Darkmoon Island/0
path loop off; dist 15
path	42.4,86.7	36.7,83.2	31.8,76.9
path	30.6,71.5	26.7,66.7
Follow the provided path, using the provided abilities to run the track
Reach the Blue Post |q 33756/2
step
map Darkmoon Island/0
path loop off; dist 15
path	28.8,63.3	27.6,56.7	29.6,45.8
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q 33756/3
step
map Darkmoon Island/0
path loop off; dist 15
path	33.4,48.5	36.5,51.2	41.3,51.1
path	43.6,50.4
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q 33756/4
step
map Darkmoon Island/0
path loop off; dist 15
path	44.9,54.7	44.3,60.3	41.7,68.1
path	41.3,74.2	39.7,80.3	44.3,86.7
path	47.8,88.3
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q 33756/5
step
talk Malle Earnhard##74056
turnin Let's Keep Racing!##33756 |goto 48.98,88.32
step
label "4fold"
Be sure to hit all of the _Speed Boots_ while racing
Earn the Darkmoon Racer Novice Achievement |achieve 9756
Earn the Darkmoon Racer Jockey Achievement |achieve 9759
Earn the Darkmoon Racer Leadfoot Achievement |achieve 9760
Earn the Darkmoon Racer Roadhog Achievement |achieve 9761
Click here to continue on to other achievements |confirm |achieve 9761
Click here to race again |confirm |next "dualrace" |achieve 9761
step
In order to earnt he Big Rocketeer set of achievements, you will need to complete the Real Big Race quest within 30, 25, and 20 tolls, WHILE using the Rocketeer mount
confirm
stickystart "rbr"
step
talk Patti Earnhard##90473
accept The Real Big Race##37911 |goto 53.18,87.56
step
Choose the _Rocketeer_ |havebuff 298587  |goto Darkmoon Island/0 48.4,87.7
only if haveq(37911) or haveq(37868)
step
Enter the Start Banner with a Darkmoon Game Token |q 37911/1 |goto Darkmoon Island/0 54.5,88.3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.0,86.6	65.6,88.1	70.3,89.9
path	74.1,87.0	78.4,80.2	78.5,75.0
path	76.1,61.2	74.6,62.0	73.5,61.9
path	71.8,60.6	71.7,67.2	70.3,71.6
Follow the provided path, using the provided abilities to run the track
Reach the Purple Post |q 37911/2
step
map Darkmoon Island/0
path loop off; dist 15
path	69.7,67.1	70.3,57.2	68.0,50.8
path	67.9,47.3	66.8,36.4	64.5,19.9
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q 37911/3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.7,24.1	58.1,22.1	57.4,27.6
path	56.2,27.3	55.8,23.8	54.6,20.3
path	53.0,18.3	50.9,18.2
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q 37911/4
step
map Darkmoon Island/0
path loop off; dist 15
path	51.1,25.0	53.1,29.9	52.9,36.5
path	55.5,37.1	56.7,43.2	57.7,49.6
path	51.7,59.4	49.3,66.0	49.4,72.3
path	49.9,81.4	51.7,87.9	54.7,88.2
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q 37911/5
step
label "race2"
talk Patti Earnhard##90473
turnin The Real Big Race##37911 |goto 53.18,87.56
accept More Big Racing!##37868 |goto 53.11,87.71
step
Choose the _Rocketeer_ |havebuff 298587 |goto Darkmoon Island/0 48.4,87.7
only if haveq(37911) or haveq(37868)
step
Enter the Start Banner with a Darkmoon Game Token |q 37868/1 |goto Darkmoon Island/0 54.5,88.3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.0,86.6	65.6,88.1	70.3,89.9
path	74.1,87.0	78.4,80.2	78.5,75.0
path	76.1,61.2	74.6,62.0	73.5,61.9
path	71.8,60.6	71.7,67.2	70.3,71.6
Follow the provided path, using the provided abilities to run the track
Reach the Purple Post |q 37868/2
step
map Darkmoon Island/0
path loop off; dist 15
path	69.7,67.1	70.3,57.2	68.0,50.8
path	67.9,47.3	66.8,36.4	64.5,19.9
Follow the provided path, using the provided abilities to run the track
Reach the Green Post |q 37868/3
step
map Darkmoon Island/0
path loop off; dist 15
path	60.7,24.1	58.1,22.1	57.4,27.6
path	56.2,27.3	55.8,23.8	54.6,20.3
path	53.0,18.3	50.9,18.2
Follow the provided path, using the provided abilities to run the track
Reach the Red Post |q 37868/4
step
map Darkmoon Island/0
path loop off; dist 15
path	51.1,25.0	53.1,29.9	52.9,36.5
path	55.5,37.1	56.7,43.2	57.7,49.6
path	51.7,59.4	49.3,66.0	49.4,72.3
path	49.9,81.4	51.7,87.9	54.7,88.2
Follow the provided path, using the provided abilities to run the track
Return to the Start Banner |q 37868/5
step
talk Patti Earnhard##90473
turnin More Big Racing!##37868 |goto 53.11,87.71
step
label "rbr"
Earn the Big Rocketeer: Bronze Achievement |achieve 9801
Earn the Big Rocketeer: Silver Achievement |achieve 9803
Earn the Big Rocketeer: Gold Achievement |achieve 9805
step
map Darkmoon Island/0
path follow strict; loop off; dist 15
path	48.5,71.4	46.5,70.8	45.6,66.5
path	43.0,56.2	48.2,49.3	51.0,44.4
path	48.0,44.0	45.4,38.3	42.2,34.8
path	41.8,43.4	32.1,41.1	29.0,36.5
path	29.0,36.5	22.5,33.7	20.4,39.2
path	29.2,44.8	29.6,53.1	31.9,62.1
path	26.6,66.6	27.8,68.3	31.5,66.7
path	39.0,67.8	40.7,76.2	44.9,78.6
path	43.2,86.9	48.7,87.8	53.8,88.3
path	56.7,86.1	52,77		52,72
path	57,70		57,64		55,58
path	50,55		55,50		54,45
path	59,33		61,40		63,44
path	61,53		69,51		71,59
path	66,65		70,66		75,68
path	71,72		70,79		67,80
path	67,76		63,77		65,84
Fly through the rings in order to stack _Blazing Ring_ buffs |tip Zoom your camera out as far as you can, so you can see how high or low the rings are.
Stack 10 Blazing Ring Buffs and earn the Flying High Achievement |achieve 9250
Stack 25 Blazing Ring Buffs and earn the Ringmaster Achievement |achieve 9251
Stack 50 Blazing Ring Buffs and earn the Brood of Alysrazor Achievement |achieve 9252
step
For the achievement "That Rabbit's Dynamite!", you will need a large group
Stand at the back of the cave at the provided Location
Don't run away once you have engaged; You'll reset the fight and waste time
If you die, release quickly and run back to your corpse
Earn the _That Rabbit's Dynamite!_ Achievement |achieve 6332 |goto Darkmoon Island/0 75.4,77.8
|next "main"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Blight Boar Concert", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="\nThis guide will help you navigate through the Darkmoon Faire Event, Blight Boar Concert",
},[[
step
The Blight Boar Concert is a new event added in patch 7.2.5
|tip This event happens every hour on the half hour during the Darkmoon Faire.
|tip The Darkmoon Faire is only active for a week starting on the first Sunday of every month.
confirm
step
Enter the cave |goto Darkmoon Island/0 64.54,67.59 < 5
Once the Blight Boar Concert starts, the Death Metal Knight will appear |goto Darkmoon Island/1 38.70,39.58
You and a group of players will need to defeat this boss while dodging a few mechanics
|tip During the concert he will peridically summon waves of ghosts; dodge these as best as you can.
|tip He will also do unavoidable area damage, mitigate this as best as possible.
|tip Just before he dies, he will summons ghouls. These need to be damaged to knock them back. You do not want any to reach Devlynn Styx, who stands in the middle of the room.
confirm
step
_Congratulations!_
You have completed the new Darkmoon Faire event _Blight Boar Concert_!
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Rock n' Roll",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(15181) end,
achieveid={15181},
patch='90105',
description="\nUse Lightning Nitro while listening to Rockin' Tunes in your Rockin' Rollin' Racer.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(15181)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
click Gently Shaken Gift
'|accept A Gently Shaken Gift##8767 |n
'|accept A Gently Shaken Gift##8788 |n
'|accept A Gently Shaken Gift##39658 |n
'|accept A Gently Shaken Gift##43364 |n
'|accept A Gently Shaken Gift##53011 |n
'|accept A Gently Shaken Gift##57643 |n
'|accept A Gently Shaken Gift##60238 |n
'|accept A Gently Shaken Gift##64581 |n
|tip These gifts only appear on Christmas Day (December 25th).
collect Gently Shaken Gift##187520 |goto Orgrimmar/1 49.54,78.02 |or
'|complete hastoy(187422)
step
use the Gently Shaken Gift##187520
collect Rockin' Rollin' Racer Customizer 19.9.3##187422 |or
'|complete hastoy(187422)
step
use the Rockin' Rollin' Racer Customizer 19.9.3##187422
|toy Rockin' Rollin' Racer Customizer 19.9.3##187422
step
use the Rockin' Rollin' Racer Customizer 19.9.3##187422
|tip Spam the 3rd and 4th abilities until you earn the achievement.
Earn the "Rock n' Roll" Achievement |achieve 15181
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(277) end,
achieveid={277},
patch='30002',
description="\nDuring the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(277)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Complete the "Feast of Winter Veil Quests" guide |complete completedq(6984) or achieved(277) |or |only if level >= 15
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7061) or achieved(277) |or |only if default
step
#include "auctioneer"
buy 1 Red Winter Clothes##151790 |next "Collect_Winter_Boots" |or
buy 1 Green Winter Clothes##151792 |next "Collect_Winter_Boots" |or
|tip You only need one of these.
|tip They need to be uncommon (green) quality set items.
_Or_ |only if skill("Tailoring") >= 250
Click Here to Craft Clothes with Tailoring |confirm |next "Craft_Winter_Clothes" |only if skill("Tailoring") >= 250 |or
'|complete achieved(277) |or
step
label "Craft_Winter_Clothes"
talk Penney Copperpinch##13420
buy 1 Pattern: Green Winter Clothes##34261 |goto Orgrimmar/1 52.68,77.28 |or
'|complete achieved(277) |or
step
use the Pattern: Green Winter Clothes##34261
learn Green Winter Clothes##44950 |or
'|complete achieved(277) |or
step
collect 16 Runecloth##14047 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
collect 3 Wool Cloth##2592 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
talk Shimra##5817
|tip Inside the building.
buy 1 Rune Thread##14341 |goto 53.98,81.87
buy 2 Green Dye##2605 |goto 53.98,81.87
|only if not achieved(277)
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total |or
'|complete achieved(277) |or
step
create 4 Bolt of Runecloth##18401,Tailoring,4 total |or
'|complete achieved(277) |or
step
create 1 Green Winter Clothes##44950,Tailoring,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Boots"
#include "auctioneer"
buy 1 Winter Boots##151791 |next "Collect_Winter_Hat" |or
|tip They need to be uncommon (green) quality set boots.
_Or_ |only if skill("Leatherworking") >= 285
Click Here to Craft Boots with Leatherworking |confirm |next "Create_Winter_Boots" |only if skill("Leatherworking") >= 285 |or
'|complete achieved(277) |or
step
label "Create_Winter_Boots"
talk Penney Copperpinch##13420
buy Pattern: Winter Boots##34262 |goto 52.68,77.28 |or
'|complete achieved(277) |or
step
use the Pattern: Winter Boots##34262
learn Winter Boots##44953 |or
'|complete achieved(277) |or
step
collect 1 Copper Bar##2840 |or
|tip Farm and Smelt it with Mining or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 1 Bolt of Woolen Cloth##2997 |or
|tip Farm the cloth from humanoid mobs and create it with Tailoring or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 4 Rugged Leather##8170 |or
|tip Farm it with Skinning or purchase it from the Auction House.
'|complete achieved(277) |or
step
create 1 Winter Boots##44953,Leatherworking,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Hat"
kill Grand Magus Telestra##26731
|tip Inside "The Nexus" dungeon.
|tip It's the bottom portal.
|tip The hat will only drop on Heroic difficulty.
Collect a Winter Hat |complete itemcount(21525) >=1 or itemcount(21524) >= 1 or achieved(277) |goto The Nexus/1 27.50,39.91
step
collect Smokywood Pastures Sampler##17685 |or
|tip This will appear in your mailbox an hour or so after completing the "Treats for Greatfather Winter" quest.
'|complete achieved(277) |or
step
use the Smokywood Pastures Sampler##17685
collect 1 Graccu's Mince Meat Fruitcake##21215 |or
'|complete achieved(277) |or
step
use the Red Winter Clothes##151790
|tip They need to be uncommon (green) quality set items.
Equip the Red Winter Clothes |equipped Red Winter Clothes##151790
|only if itemcount(151790) >= 1 and not achieved(277)
step
use the Green Winter Clothes##151792
|tip They need to be uncommon (green) quality set items.
Equip the Green Winter Clothes |equipped Green Winter Clothes##151792
|only if itemcount(151792) >= 1 and not achieved(277)
step
use the Winter Boots##151791
|tip They need to be uncommon (green) quality set boots.
Equip the Winter Boots |equipped Winter Boots##151791
|only if itemcount(151791) >= 1 and not achieved(277)
step
use the Green Winter Hat##21525
Equip the Green Winter Hat |equipped Green Winter Hat##21525
|only if itemcount(21525) >= 1 and not achieved(277)
step
use the Red Winter Hat##21524
Equip the Red Winter Hat |equipped Red Winter Hat##21524
|only if itemcount(21524) >= 1 and not achieved(277)
step
use Graccu's Mince Meat Fruitcake##21215
|tip You must be wearing a Winter Hat, Winter Clothes and Winter Boots.
|tip These items must be of the set variety to count.
|achieve 277
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1690) end,
achieveid={1691},
patch='30003',
description="\nDuring the Feast of Winter Veil, use your Winter Veil Disguise kit to become a "..
"snowman and then dance with another snowman in Dalaran.",
},[[
step
Reach Level 30 |ding 30
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1690)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Complete the "Feast of Winter Veil Quests" guide |complete completedq(6984) or achieved(1690)
step
collect 1 Winter Veil Disguise Kit##17712 |or
|tip This should appear in your mailbox within 24 hours of completing the quest guide.
'|complete hastoy(17712) |or
step
talk Penney Copperpinch##13420
buy 1 Snowball##17202 |goto Orgrimmar/1 52.68,77.28 |or
'|complete achieved(1690) |or
step
use the Winter Veil Disguise Kit##17712
Collect the Winter Veil Disguise Kit |toy Winter Veil Disguise Kit##17712
step
use the Winter Veil Disguise Kit##17712
|tip Use it near another snowman because it will root you.
|tip You may have to search around Dalaran.
Become a Snowman |havebuff 132387 |goto Dalaran/1 49.78,62.01 |or
'|complete achieved(1690) |or
step
Dance with another snowman |script DoEmote("DANCE")
|tip Target another snowman player.
|achieve 1690
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\BB King",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(4437) end,
achieveid={4437},
patch='30300',
description="\nPelt the following enemy leaders:\n\nAnduin Wrynn\nMuradin Bronzebeard\n"..
"Prophet Velen\nTyrande Whisperwind",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(4437)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
map Orgrimmar/1
path follow strictbounce; loop off; ants curved; dist 20
path	58.36,62.59	58.45,54.98	57.44,50.70
talk Blax Bottlerocket##52809
|tip He looks like a goblin pushing a cart.
|tip He patrols along The Drag in Orgrimmar.
buy 1 Red Rider Air Rifle##46725
buy 1 Red Rider Air Rifle Ammo##48601
|only if not achieved(4436)
step
Enter the building |goto Ironforge/0 44.65,49.24 < 10 |walk
clicknpc Muradin Bronzebeard##42928
use the Red Rider Air Rifle##46725
|tip Use it on Muradin Bronzebeard inside the building.
Use your Red Rider Air Rifle on Muradin Bronzebeard |achieve 4437/1 |goto 39.18,56.09
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') or achieved(4437) |goto Darkshore/0 48.86,24.46
step
Enter the building |goto Darnassus/0 43.00,74.83 < 10 |walk
clicknpc Tyrande Whisperwind##7999
use the Red Rider Air Rifle##46725
|tip Use it on Tyrande Whisperwind upstairs inside the building.
Use your Red Rider Air Rifle on Tyrande Whisperwind |achieve 4437/3 |goto 43.01,78.10
step
clicknpc Prophet Velen##17468
use the Red Rider Air Rifle##46725
|tip Use it on Prophet Velen in The Vault of the Lights in The Exodar.
Use your Red Rider Air Rifle on Prophet Velen |achieve 4437/2 |goto The Exodar/0 32.86,54.48
step
|achieve 4437
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1685) end,
achieveid={1685},
patch='30002',
description="\nUse Mistletoe on the three Horde \"Brothers\" during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1685)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 3 Mistletoe##21519 |or
'|complete achieved(1685) |or
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') or achieved(1685) |goto Tirisfal Glades/0 69.45,62.80
step
use the Mistletoe##21519
|tip Use it on Brother Malach.
|tip He is located in the War Quarter of Undercity.
Use Mistletoe on Brother Malach |achieve 1685/1 |goto Undercity/0 50.87,21.70
step
use the Mistletoe##21519
|tip Use it on Durkot Wolfbrother.
|tip Downstairs in the stables of Warsong Hold.
Use Mistletoe on Durkot Wolfbrother |achieve 1685/2 |goto Borean Tundra/0 40.25,55.05
step
_Find Orgrim's Hammer flying around in the sky_
|tip On your world map, it looks like a ship icon with 2 long reddish ballons on either side of it.
use the Mistletoe##21519
|tip Use it on Brother Keltan.
|tip He is a Blood Elf with gray hair walking around Orgrim's Hammer.
Use Mistletoe on Brother Keltan |achieve 1685/3 |goto Icecrown/0 61.98,45.38
step
|achieve 1685
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(5854) end,
achieveid={5854},
patch='40300',
description="\nUse your Winter Veil Chorus Book to carol in enemy capital cities during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(5854)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Penney Copperpinch##13420
buy 1 Winter Veil Chorus Book##188680 |goto Orgrimmar/1 52.69,77.28
'|only if not hastoy(188680)
step
use the Winter Veil Chorus Book##188680
Collect the Winter Veil Chorus Book |toy Winter Veil Chorus Book##188680 |or
'|complete achieved(5854) |or
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Darnassus |achieve 5854/1 |goto Darnassus/0 40.32,50.45
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Stormwind City |achieve 5854/4 |goto Stormwind City/0 67.86,80.22
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in The Exodar |achieve 5854/2 |goto The Exodar/0 71.49,51.73
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Ironforge |achieve 5854/3 |goto Ironforge/0 18.03,82.21
step
|achieve 5854
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1295) end,
achieveid={1295},
patch='30002',
description="\nGain 25 crashes with your Crashin' Thrashin' Racer during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1295)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Enter the building |goto Dalaran L/10 42.60,45.33 < 5
talk Jepetto Joybuzz##96483
|tip Inside the building.
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |goto 43.92,46.63
'|only if not hastoy(54343)
step
use the Blue Crashin' Thrashin' Racer Controller##54343
Collect the Blue Crashin' Thrashin' Racer Controller |toy Blue Crashin' Thrashin' Racer Controller##54343
step
use the Blue Crashin' Thrashin' Racer Controller##54343
|tip Use the "Racer Rocket Slam" ability on other players' race controllers.
|tip You will likely need to search for them.
|tip Having a friend to do this with helps.
Gain #25# Crashes with your Racer |achieve 1295 |goto Orgrimmar/1 51.34,78.74
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\The Danger Zone",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(8699) end,
achieveid={8699},
patch='50400',
description="\nShoot down another player's Crashin' Thrashin' Flyer with yours.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(8699)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
use the Stolen Present##116762
use the Stolen Gift##149503
collect Crashin' Thrashin' Flyer Controller##104318
|tip Use the "Feast of Winter Veil Daily Quests" guide.
|tip Complete the quest "You're a Mean One..." to get a Stolen Present.
|tip There is a small chance to get this toy from a Stolen Present.
|only if not hastoy(104318)
step
use the Crashin' Thrashin' Flyer Controller##104318
|toy Crashin' Thrashin' Flyer Controller##104318
step
label "Earn_Achievement"
use the Crashin' Thrashin' Flyer Controller##104318
|tip Use it on another player's Crashin' Thrashin' Flyer.
|tip You may have to search around to find someone with one.
Shoot Down Another Player's Crashin' Thrashin' Flyer |achieve 8699 |goto Orgrimmar/1 51.34,78.74
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1282) end,
achieveid={1282},
patch='30001',
description="\nComplete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1282)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
Collect a Fresh Holly or Preserved Holly |complete itemcount(21212) >= 1 or itemcount(21212) >= 1 or achieved(1282)
step
Routing to proper section |next "Complete_Achievement_Quest" |only if completedq(11010)
Routing to proper section |next "Unlock_Ogri'la_Dailies" |only if not completedq(11010)
step
label "Unlock_Ogri'la_Dailies"
talk Chu'a'lor##23233
accept The Trouble Below##11057 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Crystals##11025 |goto 28.75,57.38
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 6 Apexis Shard##32569 |goto 29.23,53.70 |q 11025
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto 28.75,57.38
accept An Apexis Relic##11058 |goto 28.75,57.38
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Emanations |q 11058/1 |goto 29.05,47.00
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 11 Apexis Shard##32569 |goto 29.23,53.70 |q 11030
step
Click the Fel Crystalforge
|tip It looks like a big metal machine with green smoke coming out of it.
Choose _"Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards"_
collect 1 Unstable Flask of the Beast##32598 |q 11030/1 |goto 32.79,40.49
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto 28.75,57.38
accept The Relic's Emanation##11080 |goto 28.75,57.38
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Vibrations |q 11080/1 |goto 31.49,63.35
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto 28.75,57.38
accept The Skyguard Outpost##11062 |goto 28.75,57.38
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto 27.40,52.69
step
label "Complete_Achievement_Quest"
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |goto 27.58,52.91
step
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11010/1 |goto 34.49,40.99
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |goto 27.58,52.91
accept Bomb Them Again!##11023 |goto 27.58,52.91
step
_You must be on a flying mount!_
use the Preserved Holly##21213 |only if itemcount(21213) >= 1
use the Fresh Holly##21212 |only if itemcount(21212) >= 1
Use Holly While Riding your Flying Mount |havebuff 133749 |or
'|complete achieved(1282) |or
step
_You must be on a flying reindeer mount!_
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto 34.49,40.99
step
_You must be on a flying reindeer mount!_
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto 27.58,52.91
step
|achieve 1282
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1689) end,
achieveid={1689},
patch='30002',
description="\nOpen one of the presents underneath the Winter Veil tree once they are available.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1689)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Click a present under the tree
|tip You can only open a present from December 25 to January 2.
|tip No peeking!
|achieve 1689 |goto Orgrimmar/1 49.54,78.02
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Iron Armada",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(10353) end,
achieveid={10353},
patch='60202',
description="\nCollect all five toys that are part of the Crashin' Thrashin' \"Iron Armada\" set.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(10353)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
collect 5 Merry Supplies##128659 |or
|tip Use the "Feast of Winter Veil Daily Quests" guide to complete the Draenor dailies.
|tip Merry Supplies are rewarded for completing these quests.
'|complete achieved(10353) |or
step
talk Izzy Hollyfizzle##96362
|tip She may be in a slightly different spot if your garrison is not level 3.
buy 1 Crashin' Thrashin' Killdozer Controller##108635 |goto Frostwall/0 47.35,38.45 |or
'|complete hastoy(108635) |or
step
use the Crashin' Thrashin' Killdozer Controller##108635
|toy Crashin' Thrashin' Killdozer Controller##108635 |achieve 10353/2
step
label "Check_Status"
Achievement Complete |next "Achievement_Complete" |only if achieved(10353)
Achievement Not Complete |next |only if not achieved(10353)
step
kill Drakum##98283
|tip Upstairs inside the building.
collect Crashin' Thrashin' Roller Controller##108631 |goto Tanaan Jungle/0 83.47,43.65 |or
|tip This toy has a 10 percent drop chance.
|tip You can kill this mob once per day for a chance to get it.
|tip You can also purchase it from the Auction House.
Click Here if it Did Not Drop |confirm |next "Kill_Gondar" |or
'|complete hastoy(108631) |or
step
use the Crashin' Thrashin' Roller Controller##108631
|toy Crashin' Thrashin' Roller Controller##108631 |achieve 10353/5
step
label "Kill_Gondar"
kill Gondar##98284
|tip Inside the building.
collect Crashin' Thrashin' Cannon Controller##108633 |goto 80.37,56.84 |or
|tip This toy has a 10 percent drop chance.
|tip You can kill this mob once per day for a chance to get it.
|tip You can also purchase it from the Auction House.
Click Here if it Did Not Drop |confirm |next "Kill_Smashum_Grabb" |or
'|complete hastoy(108633) |or
step
use the Crashin' Thrashin' Cannon Controller##108633
|toy Crashin' Thrashin' Cannon Controller##108633 |achieve 10353/4
step
label "Kill_Smashum_Grabb"
kill Smashum Grabb##98285
collect Crashin' Thrashin' Mortar Controller##108634 |goto 88.15,55.83 |or
|tip This toy has a 10 percent drop chance.
|tip You can kill this mob once per day for a chance to get it.
|tip You can also purchase it from the Auction House.
Click Here if it Did Not Drop |confirm |next "Collect_Flamer_Controller" |or
'|complete hastoy(108634) |or
step
use the Crashin' Thrashin' Mortar Controller##108634
|toy Crashin' Thrashin' Mortar Controller##108634 |achieve 10353/3
step
label "Collect_Flamer_Controller"
collect Crashin' Thrashin' Flamer Controller##108632 |goto Orgrimmar/1 49.53,78.15 |or
|tip You can only collect this toy from December 25 to January 2.
|tip Click on presents under the tree until you collect it.
Click Here if it is Not Yet Time |confirm |next "Check_Status" |or
'|complete hastoy(108632) |or
step
use the Crashin' Thrashin' Flamer Controller##108632
|toy Crashin' Thrashin' Flamer Controller##108632
step
label "Achievement_Complete"
|achieve 10353
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1687) end,
achieveid={1687},
patch='30002',
description="\nDuring the Feast of Winter Veil, use a Handful of Snowflakes on the following "..
"race/class combinations:\n\nBlood Elf Warlock\nDraenei Priest\nDwarf Paladin\n"..
"Gnome Mage\nHuman Warrior\nNight Elf Druid\nOrc Death Knight\nTauren Shaman\n"..
"Troll Hunter\nUndead Rogue",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1687)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Inside the building.
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 10 Handful of Snowflakes##34191 |goto Orgrimmar/1 54.55,77.89 |or
'|complete achieved(1687) |or
step
use the Handful of Snowflakes##34191
|tip Use one on each of the races below.
Blood Elf Warlock |achieve 1687/9 |goto 51.49,78.87
Draenei Priest |achieve 1687/10 |goto 51.49,78.87
Dwarf Paladin |achieve 1687/8 |goto 51.49,78.87
Gnome Mage |achieve 1687/7 |goto 51.49,78.87
Human Warrior |achieve 1687/2 |goto 51.49,78.87
Night Elf Druid |achieve 1687/4 |goto 51.49,78.87
Orc Death Knight |achieve 1687/1 |goto 51.49,78.87
Tauren Shaman |achieve 1687/3 |goto 51.49,78.87
Troll Hunter |achieve 1687/6 |goto 51.49,78.87
Undead Rogue |achieve 1687/5 |goto 51.49,78.87
step
|achieve 1687
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1691) end,
achieveid={1691},
patch='30003',
description="\nComplete the following Winter Veil achievements:\n\nOn Metzen!\nScrooge\n"..
"'Tis the Season\nLet It Snow\nThe Winter Veil Gourmet\nA Frosty Shake\n"..
"With a Little Helper from My Friends\nFa-la-la-la-Ogri'la\nSimply Abominable\n"..
"Holiday Bromance\nHe Knows If You've Been Naughty",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1691)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty"
step
|achieve 1691
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(273) end,
achieveid={273},
patch='30008',
description="\nSave Metzen the Reindeer.",
},[[
step
Reach Level 30 |ding 30
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(273)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Kaymard Copperpinch##13418
accept You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05
step
kill The Abominable Greench##13602
Free Metzen the Reindeer |q 6983/2 |goto Hillsbrad Foothills/0 43.57,38.42
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 6983/1 |goto 43.57,38.67
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05
step
|achieve 273
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(259) end,
achieveid={259},
patch='30001',
description="\nThrow a snowball at Baine Bloodhoof during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(259)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Penney Copperpinch##13420
buy 1 Snowball##17202 |goto Orgrimmar/1 52.69,77.26 |or
'|complete achieved(259) |or
step
use the Snowball##17202
|tip Use it on Baine Bloodhoof.
Throw a Snowball at Baine Bloodhoof |achieve 259 |goto Thunder Bluff/0 60.26,51.67
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(279) end,
achieveid={279},
patch='30008',
description="\nComplete the quest to retrieve Smokywood Pastures' stolen treats and receive a Smokywood Pastures' Thank You.",
},[[
step
Reach Level 30 |ding 30
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(279)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Kaymard Copperpinch##13418
accept You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05
step
kill The Abominable Greench##13602
Free Metzen the Reindeer |q 6983/2 |goto Hillsbrad Foothills/0 43.57,38.42
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 6983/1 |goto 43.57,38.67
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05
accept A Smokywood Pastures' Thank You!##6984 |goto 52.53,77.05
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto 49.88,78.45
step
|achieve 279
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1688) end,
achieveid={1688},
patch='30003',
description="\nDuring the Feast of Winter Veil, use your culinary expertise to produce a Gingerbread "..
"Cookie, Winter Veil Egg Nog and Hot Apple Cider.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1688)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Reach 300 Cooking Skill |skill Cooking,300 |or
|tip Use the "Cooking 1-300" Profession guide.
'|complete achieved(1688) |or
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Orgrimmar/1 53.63,78.76 |or
'|complete achieved(1688) |or
step
talk Kaymard Copperpinch##13418
buy 1 Sparkling Apple Cider##34412 |goto 52.53,77.05 |or
'|complete achieved(1688) |or
step
talk Penney Copperpinch##13420
buy 1 Recipe: Winter Veil Egg Nog##17201 |goto 52.68,77.29
buy 1 Recipe: Hot Apple Cider##34413 |goto 52.68,77.29
buy 1 Recipe: Gingerbread Cookie##17200 |goto 52.68,77.29
buy 3 Holiday Spices##17194 |goto 52.68,77.29
buy 2 Holiday Spirits##17196 |goto 52.68,77.29
|only if not achieved(1688)
step
#include "auctioneer"
|tip Inside the building.
buy 2 Small Egg##6889 |next "Learn_Hot_Apple_Cider" |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
'|complete achieved(1688) |or
step
label "Farm_Small_Eggs"
Kill Dragonhawk enemies around this area
collect 2 Small Egg##6889 |goto Eversong Woods/0 43.41,56.60 |or
'|complete achieved(1688) |or
step
label "Learn_Hot_Apple_Cider"
use the Recipe: Hot Apple Cider##34413
learn Hot Apple Cider##45022 |or
'|complete achieved(1688) |or
step
use the Recipe: Egg Nog##17201
learn Egg Nog##21144 |or
'|complete achieved(1688) |or
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143 |or
'|complete achieved(1688) |or
step
cast Cooking Fire##818
|tip Stand next to your cooking fire or a Mighty Blaze in Orgrimmar.
create 1 Gingerbread Cookie##21143,Cooking,1 total |achieve 1688/1 |goto Orgrimmar/1 53.50,75.54
|only if not achieved(1688)
step
cast Cooking Fire##818
|tip Stand next to your cooking fire or a Mighty Blaze in Orgrimmar.
create 1 Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto 53.50,75.54
|only if not achieved(1688)
step
cast Cooking Fire##818
|tip Stand next to your cooking fire or a Mighty Blaze in Orgrimmar.
create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto 53.50,75.54
|only if not achieved(1688)
step
|achieve 1688
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(252) end,
achieveid={252},
patch='30001',
description="\nEarn 50 honorable kills as a Little Helper from the Winter Wondervolt machine.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(252)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
label "Become_A_Little_Helper"
Become a Little Helper |havebuff 135849 |goto Orgrimmar/1 50.24,62.15 |or
|tip Step on the blue pad.
'|complete achieved(252) |or
step
Kill enemies in PvP combat
|tip Queue up for PvP Battlegrounds and kill enemy players.
Earn #50# PvP Kills as a Little Helper |achieve 252 |or
'|nobuff 135849 |next "Become_A_Little_Helper" |or |only if not achieved(252)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(6984) end,
description="\nThis guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or completedq(6984)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
home Orgrimmar |goto Orgrimmar/1 53.63,78.77
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto 53.63,78.77 |q 6962 |future
step
talk Kaymard Copperpinch##13418
accept Great-father Winter is Here!##6961 |goto 52.53,77.05
accept You're a Mean One...##6983 |goto 52.53,77.05 |only if level >= 30 and not completedq(6984)
step
talk Great-father Winter##13445
turnin Great-father Winter is Here!##6961 |goto 49.88,78.45
accept Treats for Great-father Winter##6962 |goto 49.88,78.45
step
talk Furmund##9550
accept The Reason for the Season##6964 |goto 51.05,71.02
step
talk Arugi##46709
|tip She walks around inside the building.
Train Cooking |skillmax Cooking,300 |goto 56.17,61.59
step
talk Sagorne Creststrider##13417
turnin The Reason for the Season##6964 |goto 39.55,47.34
accept The Feast of Winter Veil##7061 |goto 39.55,47.34
step
talk Penney Copperpinch##13420
buy 1 Recipe: Gingerbread Cookie##17200 |goto 52.68,77.29 |q 6962 |only if not knowsrecipe(21143)
buy 5 Holiday Spices##17194 |goto 52.68,77.29 |q 6962
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143
step
#include "auctioneer"
|tip Inside the building.
buy 5 Small Egg##6889 |next "Cook_Gingerbread_Cookies" |q 6962 |or
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
step
label "Farm_Small_Eggs"
Kill Dragonhawk enemies around this area
collect 5 Small Egg##6889 |goto Eversong Woods/0 43.41,56.60 |q 6962
step
label "Cook_Gingerbread_Cookies"
create 5 Gingerbread Cookie##21143,Cooking,5 total |goto Orgrimmar/1 53.48,75.58 |q 6962
step
talk Great-father Winter##13445
turnin Treats for Great-father Winter##6962 |goto 49.88,78.45
step
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin The Feast of Winter Veil##7061 |goto Thunder Bluff/0 60.26,51.68
step
kill The Abominable Greench##54499
Free Metzen the Reindeer |q 6983/2 |goto Hillsbrad Foothills/0 43.57,38.42
|only if not completedq(6984)
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 6983/1 |goto 43.57,38.67
|only if not completedq(6984)
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05 |only if not completedq(6984)
accept A Smokywood Pastures' Thank You!##6984 |goto 52.53,77.05
step
talk Great-father Winter##13445
turnin A Smokywood Pastures' Thank You!##6984 |goto 49.88,78.45
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(39651) end,
description="\nThis guide section will walk you through completing the daily quests for the Feast of Winter Veil event.",
},[[
step
label "Reach_Level_30"
Reach Level 30 |ding 30
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil")
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Kaymard Copperpinch##13418
|tip You can also pick this up from the Strange Snowman in Hillsbrad Foothills near The Abominable Greench.
accept You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05
step
kill The Abominable Greench##13602
Free Metzen the Reindeer |q 6983/2 |goto Hillsbrad Foothills/0 43.57,38.42
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 6983/1 |goto 43.57,38.67
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar/1 52.53,77.05
step
Reach Level 40 |ding 40 |or
|tip You must be level 40 to continue.
Click Here to Repeat the Level 30 Daily Quest |confirm |next "Reach_Level_30" |or
|tip You will need to wait until the next server reset.
step
Construct a Level 3 Garrison |complete garrisonlvl() == 3 |or
|tip A level 3 garrison is required to complete the following dailies.
|tip Use our "Garrison Leveling Guide" to accomplish this.
Click Here to Load the "Garrison Leveling Guide" |confirm |loadguide "Leveling Guides\\Draenor (10-60)\\Garrisons\\Garrison Leveling Guide" |or
step
talk Pizzle##96735
|tip If your garrison is not level 3, look for Pizzle nearby.
accept Where Are the Children?##39648 |goto Frostwall/0 47.20,37.74
accept Menacing Grumplings##39649 |goto 47.20,37.74
accept What Horrible Presents!##39668 |goto 47.20,37.74
accept Grumpus##39651 |goto 47.20,37.74
stickystart "Rescue_Children"
stickystart "Kill_Grumplings"
step
kill Grumpus##96448 |q 39651/1 |goto Frostfire Ridge/0 45.67,28.19
|tip This may require a group to complete.
step
use the Spirit Bomb##128675
|tip Use it to destroy Unusual Gifts.
|tip They look like small piles of poop near large brown sacks on the ground around this area.
Destroy #5# Unusual Gifts |q 39668/1 |goto 45.49,28.47
step
label "Rescue_Children"
click Holding Cage##243905+
|tip They look like sturdy brown wooden cages on the ground around this area.
Save #6# Kidnapped Children |q 39648/1 |goto 46.38,27.29
step
label "Kill_Grumplings"
kill 8 Grumpling##96449 |q 39649/1 |goto 46.38,27.29
step
talk Izzy Hollyfizzle##96362
|tip If your garrison is not level 3, look for Izzy nearby.
turnin Where Are the Children?##39648 |goto Frostwall/0 47.34,38.48
turnin Menacing Grumplings##39649 |goto 47.34,38.48
turnin What Horrible Presents!##39668 |goto 47.34,38.48
turnin Grumpus##39651 |goto 47.34,38.48
step
You have completed all available Winter Veil daily quests
|tip This guide will reset when more become available.
'|complete not completedq(6983,39648,39649,39668,39651) |next "Reach_Level_30"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
author="support@zygorguides.com",
startlevel=10,
condition_suggested=function() return isevent("Hallow's End") end,
description="\nThis guide section will walk you through completing the quests for the Hallow's End event.",
},[[
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 8354 |future
step
talk Forsaken Commoner##19178
accept Masked Orphan Matron##11357 |goto Undercity/0 67.60,39.05
accept A Season for Celebration##29400 |goto 67.60,39.05 |or
'|accept A Season for Celebration##53122 |goto 67.60,39.05 |or
|tip You may not be able to accept these quests.
Click here to continue |confirm
step
talk Darkcaller Yanka##15197
turnin A Season for Celebration##29400 |goto Tirisfal Glades/0 62.12,67.83
|only if haveq(29400)
step
talk Darkcaller Yanka##15197
Speak with Darkcaller Yanka in the Ruins of Lordaeron |q 53122/2 |goto Tirisfal Glades/0 62.12,67.83
|only if haveq(53122)
step
talk Darkcaller Yanka##15197
turnin A Season for Celebration##53122 |goto 62.12,67.83
|only if haveq(53122)
step
talk Candace Fenlow##53763
accept A Friend in Need##29431 |goto 62.42,66.71
step
talk Spoops##15309
|tip He's up above the Undercity in the Ruins.
accept Hallow's End Treats for Spoops!##8312 |goto 62.13,66.45
step
talk Innkeeper Norman##6741
|tip Back underneath in the Undercity.
accept Chicken Clucking for a Mint##8354 |goto Undercity/0 67.73,37.87
step
clicknpc Innkeeper Norman##6741
Cluck Like a Chicken for Innkeeper Norman |script DoEmote("CHICKEN") |q 8354/1 |goto 67.73,37.87
step
talk Innkeeper Norman##6741
turnin Chicken Clucking for a Mint##8354 |goto 67.73,37.87
step
talk Kali Remik##11814
|tip She walks around the stairs.
accept Incoming Gumdrop##8358 |goto Orgrimmar/1 32.82,65.37
step
clicknpc Kali Remik##11814
Make Train Sounds for Kali Remik |script DoEmote("TRAIN") |q 8358/1 |goto 32.82,65.37
step
talk Kali Remik##11814
|tip She walks around the stairs.
turnin Incoming Gumdrop##8358 |goto 32.82,65.37
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
accept Flexing for Nougat##8359 |goto 53.63,78.77
step
clicknpc Innkeeper Gryshka##6929
|tip Inside the building.
Flex for Innkeeper Gryshka |script DoEmote("FLEX") |q 8359/1 |goto 53.63,78.77
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Flexing for Nougat##8359 |goto 53.63,78.77
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin A Friend in Need##29431 |goto 54.41,77.59
accept Missing Heirlooms##29415 |goto 54.41,77.59
step
Find the Courier |q 29415/1 |goto Durotar/0 57.34,9.03
|tip He lays dead inside the ship.
step
talk Hired Courier##54142
|tip He lays dead inside the ship.
turnin Missing Heirlooms##29415 |goto 57.34,9.03
accept Fencing the Goods##29416 |goto 57.34,9.03
step
talk Auctioneer Drezmit##44866
Ask him _"Have you seen anyone suspicious trying to sell a crate of objects recently?"_
Follow the Thief's Trail |q 29416/1 |goto Orgrimmar/1 54.06,73.33
step
talk Auctioneer Drezmit##44866
|tip Inside the building.
turnin Fencing the Goods##29416 |goto 54.06,73.33
accept Shopping Around##29425 |goto 54.06,73.33
step
Watch the dialogue
|tip Inside the building.
Investigate Droffers and Son |q 29425/1 |goto 58.13,47.94
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Shopping Around##29425 |goto 58.04,48.38
accept Taking Precautions##29426 |goto 58.04,48.38
step
click Blood Nettle##209059
|tip They look like white leaves with red tips around this area.
collect 5 Blood Nettle##71035 |q 29426/3 |goto 42.69,47.92
step
talk Kor'geld##3348
|tip Inside the building.
buy 5 Crystal Vial##3371 |q 29426/2 |goto 55.23,45.85
step
talk Kithas##3346
buy 2 Strange Dust##10940 |q 29426/1 |goto 53.34,48.95
|tip If she doesn't have any for sale, you will have to use the Auction House or disenchant low level gear.
step
talk Delian Sunshade##54146
|tip Inside the building.
turnin Taking Precautions##29426 |goto 58.04,48.38
accept The Collector's Agent##29427 |goto 58.04,48.38
step
talk Innkeeper Pala##6746
|tip Inside the building.
accept Dancing for Marzipan##8360 |goto Thunder Bluff/0 45.83,64.73
step
clicknpc Innkeeper Pala##6746
|tip Inside the building.
Dance for Innkeeper Pala |script DoEmote("DANCE") |q 8360/1 |goto 45.83,64.73
step
talk Innkeeper Pala##6746
|tip Inside the building.
turnin Dancing for Marzipan##8360 |goto 45.83,64.73
step
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto Durotar/0 52.57,41.20
accept Fire Training##11361 |goto 52.57,41.20 |or
'|accept Fire Training##11450 |goto 52.57,41.20 |or
'|accept Fire Training##11449 |goto 52.57,41.20 |or
|tip You may have to wait for a few minutes for this quest to show up.
step
Click the Water Barrel
|tip It looks like a huge bucket of water.
collect Water Bucket##32971 |goto 49.16,44.51 |n
|tip Use the Ability that appears at the center of your screen.
Fight #5# Fires |q 11361/1 |goto 49.13,43.24
|tip There will be 3 scarecrows that catch fire.
|only if haveq(11361) or completedq(11361)
step
Click the Water Barrel
|tip It looks like a huge bucket of water.
collect Water Bucket##32971 |goto 49.16,44.51 |n
|tip Use the Ability that appears at the center of your screen.
Fight #5# Fires |q 11450/1 |goto 49.13,43.24
|tip There will be 3 scarecrows that catch fire.
|only if haveq(11450) or completedq(11450)
step
Click the Water Barrel
|tip It looks like a huge bucket of water.
collect Water Bucket##32971 |goto 49.16,44.51 |n
|tip Use the Ability that appears at the center of your screen.
Fight #5# Fires |q 11449/1 |goto 49.13,43.24
|tip There will be 3 scarecrows that catch fire.
|only if haveq(11449) or completedq(11449)
step
talk Masked Orphan Matron##23973
turnin Fire Training##11361 |goto 52.57,41.19 |only if haveq(11361) or completedq(11361)
turnin Fire Training##11450 |goto 52.57,41.19 |only if haveq(11450) or completedq(11450)
turnin Fire Training##11449 |goto 52.57,41.19 |only if haveq(11449) or completedq(11449)
step
talk Spoops##15309
|tip He's up above the Undercity in the Ruins.
turnin Hallow's End Treats for Spoops!##8312 |goto Tirisfal Glades/0 62.13,66.45
step
kill Unleashed Void##54114+
|tip This is in the Ruins, above Undercity.
Disrupt the Meeting |q 29427/1 |goto 65.76,74.79
step
click Stolen Crate##267952
turnin The Collector's Agent##29427 |goto 65.76,74.79
accept What Now?##29428 |goto 65.76,74.79
step
talk Edgar Goodwin##54141
|tip Inside the building.
turnin What Now?##29428 |goto Orgrimmar/1 54.42,77.57
step
click Edgar's Crate##209095
accept The Creepy Crate##29429 |goto 54.47,77.51
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Dailies",{
author="support@zygorguides.com",
startlevel=10,
condition_suggested=function() return isevent("Hallow's End") end,
description="\nThis guide section will walk you through completing the daily quests for the Hallow's End event.",
},[[
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11219 |future
step
talk Masked Orphan Matron##23973
accept Stop the Fires!##11219 |goto Tirisfal Glades/0 60.92,53.58 |or
accept "Let the Fires Come!"##12139 |goto 60.92,53.58 |or
step
Click the Water Barrel
|tip It looks like a huge bucket of water.
collect Water Bucket##32971 |goto 61.03,53.65 |n
|tip Use the Ability that appears at the center of your screen.
Put Out the Fires |q 11219/1 |goto 60.73,52.42
|only if haveq(11219)
step
Click the Water Barrel
|tip It looks like a huge bucket of water.
collect Water Bucket##32971 |goto 61.03,53.65 |n
|tip Use the Ability that appears at the center of your screen.
Put Out the Fires |q 12139/1 |goto 60.73,52.42
|only if haveq(12139)
step
kill Shade of the Horseman##23543
Click the Large Jack-o'-Lantern
|tip It looks like a Burning Pumpkin laying in the road that appears after the Shade of the Horseman is killed.
accept Smash the Pumpkin##12155 |goto 60.91,52.62
step
talk Masked Orphan Matron##23973
turnin Stop the Fires!##11219 |goto 60.92,53.57 |only if haveq(11219) or completedq(11219)
turnin "Let the Fires Come!"##12139 |goto 60.92,53.57 |only if haveq(12139) or completedq(12139)
turnin Smash the Pumpkin##12155 |goto 60.92,53.57 |only if haveq(12155) or completedq(12155)
step
talk Darkcaller Yanka##15197
accept A Time to Build Up##29376 |goto 62.12,67.83
accept A Time to Break Down##29377 |goto 62.12,67.83
step
click Bonfire##208198
Use the Bonfire |q 29376/1 |goto 62.19,68.05
step
click Wickerman Ashes##180437
Use the Wickerman Ashes |q 29376/2 |goto 62.37,68.20
step
talk Darkcaller Yanka##15197
turnin A Time to Build Up##29376 |goto 62.12,67.83
step
talk Candace Fenlow##53763
accept Clean Up in Undercity##29375 |goto 62.42,66.71
accept Stink Bombs Away!##29374 |goto 62.42,66.71
step
use the Arcane Cleanser##70727
|tip Use the Arcane Cleanser on clouds of orange mist that appear around Undercity.
Remove #10# Stink Bombs |q 29375/1 |goto Undercity/0 62.22,42.29
step
talk Candace Fenlow##53763
|tip She is up above the Undercity in the Ruins.
turnin Clean Up in Undercity##29375 |goto Tirisfal Glades/0 62.42,66.70
step
talk Crina Fenlow##53764
Tell her _"I'm ready to attack Stormwind!"_ |invehicle |goto 62.13,67.03
step
Drop #25# Stink Bombs |q 29374/1
|tip Use the abilities on your action bar to accomplish this.
step
Click the "Return Home" Button on Your Action Bar |outvehicle |q 29374
step
talk Candace Fenlow##53763
turnin Stink Bombs Away!##29374 |goto 62.43,66.71
step
use the Dousing Agent##68647
|tip Use the Dousing Agent in your Bags on the Wickerman when you fly in front of Stormwind City.
Douse the Alliance's Wickerman |q 29377/1 |goto Elwynn Forest/0 33.86,48.87
step
talk Darkcaller Yanka##15197
turnin A Time to Break Down##29377 |goto Tirisfal Glades/0 62.12,67.83
step
talk Orukan##96705
accept Smashing Squashlings##39716 |goto Frostwall/0 47.07,37.56
accept Foul Fertilizer##39720 |goto 47.07,37.56
accept Mutiny on the Boneship##39719 |goto 47.07,37.56
accept Culling the Crew##39721 |goto 47.07,37.56
stickystart "boneshipkills"
stickystart "squashlings"
stickystart "fertilizer"
step
kill Captain Bonerender##96535 |q 39719/1 |goto Shadowmoon Valley D/0 38.7,86.3
step
label "boneshipkills"
Kill enemies around this area.
|tip They are found all around this small island.
Slay #12# Boneship Crewmen |q 39721/1 |goto Shadowmoon Valley D/0 39.8,80.4
step
label "squashlings"
kill 6 Growing Squashling##96545 |q 39716/1 |goto Shadowmoon Valley D/0 40.2,81.8
step
label "fertilizer"
clicknpc Dread Fertilizer##96765+
|tip They look like large barrels with a green stripe across them around this area.
Destroy #8# Fertilizers |q 39720/1 |goto Shadowmoon Valley D/0 40.1,84.3
step
talk Izzy Hollyfizzle##96362
turnin Smashing Squashlings##39716 |goto Frostwall/0 47.36,38.47
turnin Foul Fertilizer##39720 |goto 47.36,38.47
turnin Mutiny on the Boneship##39719 |goto 47.36,38.47
turnin Culling the Crew##39721 |goto 47.36,38.47
step
talk Duroc Ironjaw##109854
|tip This requires the Legion expansion.
|tip He's inside of the inn.
accept Beware of the Crooked Tree##43259 |goto Dalaran L/10 47.28,40.77
step
talk Hag of the Crooked Tree##109734
turnin Beware of the Crooked Tree##43259 |goto Val'sharah/0 35.00,56.04
accept Under the Crooked Tree##43162 |goto 35.01,56.08
step
click Crocked Tree Cauldron
Gain the Curse of the Crooked Tree Buff |havebuff spell:218367 |goto 35.03,56.05 |q 43162
step
kill Aria Sorrowheart##109825 |q 43162/1 |goto 34.63,55.44
|tip You may need help with this.
step
talk Hag of the Crooked Tree##109734
turnin Under the Crooked Tree##43162 |goto 35.01,56.08
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait",{
author="support@zygorguides.com",
startlevel=10,
achieveid={255},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, you will have to kill the Headless Horseman.",
},[[
step
You must be at least level 10 to complete this step:
Press _I_ and queue for The Headless Horseman
kill Headless Horseman##23682
Earn the "Bring Me The Head of... Oh Wait" Achievement |achieve 255
step
_Congratulations!_
You Earned the "Bring Me The Head of... Oh Wait" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Check Your Head",{
author="support@zygorguides.com",
startlevel=10,
achieveid={291},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement you have to use Weighted Jack-o'-Lanterns to put pumpkin heads on each of the races listed below:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nGoblin\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead\nWorgen",
},[[
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Gnome |achieve 291/4
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Goblin |achieve 291/5
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Blood Elf |achieve 291/1
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Draenei |achieve 291/2
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Dwarf |achieve 291/3
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Human |achieve 291/6
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Night Elf |achieve 291/7
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Orc |achieve 291/8
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Tauren |achieve 291/9
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Troll |achieve 291/10
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Undead |achieve 291/11
step
use the Weighted Jack-o'-Lantern##34068
|tip Use your Weighted Jack-o'-Lanterns on the following races:
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip The best places to complete this would be Dalaran, Shattrath, Stormwind, and Orgrimmar.
Worgen |achieve 291/12
step
_Congratulations!_
You Earned the "Check Your Head" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\A Frightening Friend",{
author="support@zygorguides.com",
startlevel=10,
achieveid={10365},
patch='60202',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, find Pepe wearing his spooky scarecrow costume.",
},[[
step
Construct a Level 3 Garrison |complete garrisonlvl() == 3
|tip Use our "Garrison Leveling Guide" to accomplish this.
step
click Spooky Pepe##244568
|tip On top of the tombstone.
Earn the "A Frightening Friend" Achievement |achieve 10365 |goto Frostwall/0 70.63,90.26
step
_Congratulations!_
You Earned the "A Frightening Friend" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage",{
author="support@zygorguides.com",
startlevel=10,
achieveid={1261},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nThis guide section will walk you through completing the achievements for the Hallow's End event.",
},[[
step
use G.N.E.R.D.S.##37583
|tip You can buy these from the Hallows End vendor.
|tip Use them every 30 minutes while PvPing to keep the buff on.
|tip If you don't have the buff active while killing players, you won't get credit.
Do any type of PvP of your choice
|tip You must be killing players that give you honor.
Earn #10# Honorable kills while under the influence of the G.N.E.R.D. buff |achieve 1261
step
_Congratulations!_
You Earned the "G.N.E.R.D. Rage" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name",{
author="support@zygorguides.com",
startlevel=10,
achieveid={1656},
patch='30002',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, complete the following Hallow's End achievements:\n\n"..
"Trick or Treat!\nOut With It\nBring Me The Head of... Oh Wait\nThe Savior of Hallow's End\n"..
"That Sparkling Smile\nRotten Hallow\nG.N.E.R.D. Rage\nCheck Your Head\nThe Masquerade\n"..
"Sinister Calling\nTricks and Treats of Azeroth",
},[[
leechsteps "Events Guides\\Hallow's End\\Achievements\\Out With It" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End" 1-3
leechsteps "Events Guides\\Hallow's End\\Achievements\\Rotten Hallow" 1-13
leechsteps "Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Check Your Head" 1-12
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Masquerade" 1-7
leechsteps "Events Guides\\Hallow's End\\Achievements\\Sinister Calling" 1-3
leechsteps "Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile" 1-2
leechsteps "Events Guides\\Hallow's End\\Achievements\\Tricks and Treats" 1-74
step
Earn the "Hallowed Be Thy Name" Achievement |achieve 1656
step
_Congratulations!_
You Earned the "Hallowed Be Thy Name" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions",{
author="support@zygorguides.com",
startlevel=10,
achieveid={284},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, collect the following 24 masks:\n\n"..
"Blood Elf Male/Female\nDraenei Male/Female\nDwarf Male/Female\nGnome Male/Female\n"..
"Goblin Male/Female\nHuman Male/Female\nNight Elf Male/Female\nOrc Male/Female\n"..
"Tauren Male/Female\nTroll Male/Female\nUndead Male/Female\nWorgen Male/Female",
},[[
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |achieve 284 |future
step
collect 48 Tricky Treat##33226
|tip You can get these from the various Candy Bucket quests around azeroth.
|tip Use our "Tricks and Treats" Event Guide to find them.
|only if not achieved(284)
step
talk Farina##53760
buy 1 Blood Elf Female Mask##34000 |achieve 284/1 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Blood Elf Male Mask##34002 |achieve 284/2 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Draenei Female Mask##34001 |achieve 284/3 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Draenei Male Mask##34003 |achieve 284/4 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Dwarf Female Mask##20562 |achieve 284/5 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Dwarf Male Mask##20561 |achieve 284/6 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Gnome Female Mask##20392 |achieve 284/7 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Gnome Male Mask##20391 |achieve 284/8 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Goblin Female Mask##49212 |achieve 284/9 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Goblin Male Mask##49210 |achieve 284/10 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Human Female Mask##20565 |achieve 284/11 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Human Male Mask##20566 |achieve 284/12 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Night Elf Female Mask##20563 |achieve 284/13 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Night Elf Male Mask##20564 |achieve 284/14 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Orc Female Mask##20569 |achieve 284/15 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Orc Male Mask##20570 |achieve 284/16 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Tauren Female Mask##20571 |achieve 284/17 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Tauren Male Mask##20572 |achieve 284/18 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Troll Female Mask##20567 |achieve 284/19 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Troll Male Mask##20568 |achieve 284/20 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Undead Female Mask##20574 |achieve 284/21 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Undead Male Mask##20573 |achieve 284/22 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Worgen Female Mask##49215 |achieve 284/23 |goto 62.33,66.47
step
talk Farina##53760
buy 1 Worgen Male Mask##49216 |achieve 284/24 |goto 62.33,66.47
step
Earn the "A Mask for All Occasions" Achievement |achieve 284
step
_Congratulations!_
You Earned the "A Mask for All Occasions" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Mask Task",{
author="support@zygorguides.com",
startlevel=10,
achieveid={979},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, you will need to obtain a Flimsy Mask during Hallow's End.",
},[[
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |achieve 979 |future
step
collect 2 Tricky Treat##33226
|tip You can get these from the various Candy Bucket quests around azeroth.
|tip Use our "Tricks and Treats" Event Guide to find them.
|only if not achieved(979)
step
talk Farina##53760
buy 1 Blood Elf Female Mask##34000 |goto 62.33,66.47
|only if not achieved(979)
step
Earn "The Mask Task" Achievement |achieve 979
step
_Congratulations!_
You Earned "The Mask Task" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Masquerade",{
author="support@zygorguides.com",
startlevel=10,
achieveid={283},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement you will have to get transformed by the Hallowed Wands listed below:\n\n"..
"Hallowed Wand - Bat\nHallowed Wand - Ghost\nHallowed Wand - Leper Gnome\nHallowed Wand - Ninja\n"..
"Hallowed Wand - Pirate\nHallowed Wand - Skeleton\nHallowed Wand - Wisp",
},[[
step
Transform into a Wisp |achieve 283/7
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
Transform into a Ghost |achieve 283/2
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
Transform into a Leper Gnome |achieve 283/3
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
Transform into a Pirate |achieve 283/5
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
Transform into a Ninja |achieve 283/4
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
Transform into a Skeleton |achieve 283/6
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
Transform into a Bat |achieve 283/1
|tip Have other players use Hallowed Wands on you while in a party to transform.
step
_Congratulations!_
You Earned "The Masquerade" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Out With It",{
author="support@zygorguides.com",
startlevel=10,
achieveid={288},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement you will have to eat so many Tricky Treats that you get an upset tummy.",
},[[
step
use the Tricky Treat##33226
|tip You get these by completing Hallows End quests.
|tip Keep using your Tricky Treats quickly until you puke.
Earn the "Out With It" Achievement |achieve 288
step
_Congratulations!_
You Earned the "Out With It" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow",{
author="support@zygorguides.com",
startlevel=10,
achieveid={1041},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nRuin Hallow's End for the Alliance and foil their attempts to wreck the Horde celebration by completing the following quests:\n\n"..
"Stink Bombs Away!\nClean Up In Undercity\nA Time to Build Up\nA Time to Break Down",
},[[
leechsteps "Events Guides\\Hallow's End\\Hallow's End Dailies" 6-18
step
Earn the "Rotten Hallow" Achievement |achieve 1041
step
_Congratulations!_
You Earned the "Rotten Hallow" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End",{
author="support@zygorguides.com",
startlevel=10,
achieveid={289},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, complete one of the quests to save a village from the Headless Horseman.",
},[[
step
label "Get_Water_Bucket"
click Water Bucket
Get a Water Bucket |havebuff spell:261577 |goto Durotar/0 52.54,41.29
step
Extinguish the Fires |achieve 289 |goto 52.51,42.35 |next "Earn_Achievement"
|tip Use the "Throw Bucket" ability that appears onscreen.
|tip Throw the bucket on the fires.
|tip Extinguish all fires on all three buildings.
'|nobuff spell:261577 |next "Get_Water_Bucket"
step
label "Earn_Achievement"
Earn "The Savior of Hallow's End" Achievement |achieve 289
step
_Congratulations!_
You Earned "The Savior of Hallow's End" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Sinister Calling",{
author="support@zygorguides.com",
startlevel=10,
achieveid={292},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, you will need to obtain a Sinister Squashling pet and Hallowed Helm.",
},[[
step
talk Chub##53757
buy 1 Sinister Squashling##33154 |goto Undercity 67.7,6.5
buy 1 Hallowed Helm##33292 |goto Undercity 67.7,6.5
step
use the Sinister Squashling##33154
Obtain a Sinister Squashling pet |achieve 292/1
step
use the Hallowed Helm##33292
Obtain a Hallowed Helm |achieve 292/2
step
_Congratulations!_
You Earned the "Sinister Calling" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile",{
author="support@zygorguides.com",
startlevel=10,
achieveid={981},
patch='30002',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement you will need to show off your sparkling smile by using a Tooth Pick.",
},[[
step
talk Chub##53757
buy 1 Tooth Pick##37604 |goto Undercity 67.7,6.5
step
use the Tooth Pick##37604
Earn the "That Sparkling Smile" Achievement |achieve 981
step
_Congratulations!_
You Earned the "That Sparkling Smile" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!",{
author="support@zygorguides.com",
startlevel=10,
achieveid={972},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement you will visit a single candy bucket.",
},[[
leechsteps "Events Guides\\Hallow's End\\Achievements\\Tricks and Treats" 1-1
step
_Congratulations!_
You Earned the "Trick or Treat!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Tricks and Treats",{
author="support@zygorguides.com",
startlevel=10,
achieveid={967,965,968,971,5835,5838,7602},
patch='50004',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nTo earn this achievement, you will visit the various candy buckets around WoW zones.",
},[[
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12361 |goto Durotar/0 51.54,41.58
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12366 |goto Orgrimmar/1 53.92,78.93
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28992 |goto Azshara/0 57.10,50.16
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12400 |goto Winterspring/0 59.83,51.21
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28994 |goto Felwood/0 44.58,28.98
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12377 |goto Ashenvale/0 73.96,60.60
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28953 |goto Ashenvale/0 50.25,67.27
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28958 |goto Ashenvale/0 38.65,42.34
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28989 |goto Ashenvale/0 13.00,34.10
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12378 |goto Stonetalon Mountains/0 50.39,63.79
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29009 |goto Stonetalon Mountains/0 66.50,64.19
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29003 |goto Northern Barrens/0 62.51,16.60
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29002 |goto Northern Barrens/0 56.21,40.03
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12374 |goto Northern Barrens/0 49.51,57.91
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12396 |goto Northern Barrens/0 67.33,74.66
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12367 |goto Thunder Bluff/0 45.62,64.91
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12362 |goto Mulgore/0 46.78,60.41
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29005 |goto Southern Barrens/0 40.70,69.31
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29004 |goto Southern Barrens/0 39.29,20.10
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28993 |goto Desolace/0 56.72,50.12
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12381 |goto Desolace/0 24.08,68.29
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28996 |goto Feralas/0 41.45,15.68
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28998 |goto Feralas/0 51.97,47.64
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12386 |goto Feralas/0 74.83,45.14
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 12401 |future
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12401 |goto 55.47,36.79
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29018 |goto Un'Goro Crater/0 55.26,62.11
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29014 |goto Tanaris/0 55.70,60.96
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12399 |goto Tanaris/0 52.56,27.10
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12398 |goto Dustwallow Marsh/0 41.86,74.09
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12383 |goto Dustwallow Marsh/0 36.78,32.43
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12397 |goto The Cape of Stranglethorn/0 40.91,73.73
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28969 |goto The Cape of Stranglethorn/0 35.04,27.22
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12382 |goto Northern Stranglethorn/0 37.38,51.78
step
talk Zidormi##88206
Tell her: "_Show me the Blasted Lands before the invasion_"
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 < 5 |q 28959 |future
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28959 |goto Blasted Lands/0 40.47,11.29
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12384 |goto Swamp of Sorrows/0 46.87,56.92
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28967 |goto Swamp of Sorrows/0 71.65,14.09
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28955 |goto Badlands/0 65.86,35.65
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28957 |goto Badlands/0 18.36,42.73
step
click Candy Bucket##208144
|tip It's on the top level of the tower.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28965 |goto Searing Gorge/0 39.49,66.04
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 12380 |future
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12380 |goto Arathi Highlands/0 69.02,33.27
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12387 |goto The Hinterlands/0 78.19,81.47
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28971 |goto The Hinterlands/0 31.81,57.87
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28987 |goto Western Plaguelands/0 48.28,63.65
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12402 |goto Eastern Plaguelands/20 40.69,90.47
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12373 |goto Ghostlands/0 48.67,31.91
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12365 |goto Eversong Woods/0 43.70,71.03
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12364 |goto 48.19,47.88
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12370 |goto Silvermoon City/0 67.58,72.91
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12369 |goto 79.43,57.66
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 12368 |future
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12368 |goto Undercity/0 67.75,37.41
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12363 |goto Tirisfal Glades/0 60.99,51.41
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28972 |goto Tirisfal Glades/0 83.04,72.06
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28966 |goto Silverpine Forest/0 44.30,20.29
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12371 |goto Silverpine Forest/0 46.45,42.90
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12376 |goto Hillsbrad Foothills/0 57.85,47.27
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28962 |goto Hillsbrad Foothills/0 60.26,63.74
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12388 |goto Hellfire Peninsula/0 56.81,37.45
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12389 |goto 26.89,59.47
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12404 |goto Shattrath City/0 56.31,81.95
only if rep ('The Scryers')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12404 |goto Shattrath City/0 28.23,49.07
only if rep ('The Aldor')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12391 |goto Terokkar Forest/0 48.74,45.17
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12395 |goto Shadowmoon Valley/0 30.27,27.70
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12409 |goto 56.37,59.82
only if rep ('The Scryers')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12409 |goto 61.00,28.17
only if rep ('The Aldor')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12392 |goto Nagrand/0 56.68,34.48
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12390 |goto Zangarmarsh/0 30.62,50.87
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12403 |goto Zangarmarsh/0 78.45,62.88
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12394 |goto Blade's Edge Mountains/0 76.22,60.39
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12393 |goto 53.43,55.55
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12406 |goto 62.90,38.33
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12407 |goto Netherstorm/0 32.02,64.44
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12408 |goto 43.31,36.10
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13468 |goto Borean Tundra/0 41.71,54.40
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13460 |goto Borean Tundra/0 78.45,49.16
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13467 |goto Borean Tundra/0 76.67,37.47
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13501 |goto Borean Tundra/0 49.74,9.98
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12950 |goto Sholazar Basin/0 26.61,59.20
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13469 |goto Dragonblight/0 37.83,46.47
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13459 |goto Dragonblight/0 48.12,74.66
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13470 |goto Dragonblight/0 76.82,63.28
step
click Candy Bucket##208144
|tip On the top floor inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13456 |goto Dragonblight/0 60.15,53.45
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13463 |goto Dalaran/1 48.14,41.31
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13474 |goto Dalaran/1 66.84,29.61
step
Enter The Underbelly here |goto Dalaran 34.7,45.5 < 15
click Candy Bucket##208144
|tip It's in the side room on the left.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13472 |goto Dalaran/2 38.20,59.61
step
Leave The Underbelly |goto Dalaran/1 34.7,45.5 < 15
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13461 |goto The Storm Peaks/0 41.07,85.85
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13548 |goto The Storm Peaks/0 37.09,49.51
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13462 |goto The Storm Peaks/0 30.92,37.16
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13471 |goto The Storm Peaks/0 67.65,50.68
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12940 |goto Zul'Drak/0 59.33,57.20
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12941 |goto Zul'Drak/0 40.87,66.04
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12946 |goto Grizzly Hills/0 20.89,64.77
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12947 |goto Grizzly Hills/0 65.36,47.00
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13464 |goto Howling Fjord/0 49.44,10.75
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13466 |goto Howling Fjord/0 79.26,30.62
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13465 |goto Howling Fjord/0 52.10,66.15
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13452 |goto Howling Fjord/0 25.44,59.82
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28986 |goto Abyssal Depths/0 51.35,60.55
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28984 |goto Shimmering Expanse/0 51.48,62.39
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28982 |goto Shimmering Expanse/0 49.18,41.87
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28981 |goto Kelp'thar Forest/0 63.50,60.16
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29019 |goto Deepholm/0 51.19,49.90
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28999 |goto Mount Hyjal/0 63.05,24.14
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29001 |goto Mount Hyjal/0 42.68,45.71
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29000 |goto Mount Hyjal/0 18.63,37.32
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28974 |goto Twilight Highlands 45.11,76.81
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28973 |goto Twilight Highlands 53.40,42.85
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28976 |goto Twilight Highlands 75.40,16.54
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 29017 |future
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29017 |goto Uldum/0 54.68,33.01
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29016 |goto Uldum/0 26.59,7.23
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32050 |goto The Jade Forest/0 28.45,13.27
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32021 |goto The Jade Forest/0 41.68,23.14
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32029 |goto The Jade Forest/0 48.09,34.62
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32027 |goto The Jade Forest/0 45.77,43.61
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32031 |goto The Jade Forest/0 55.72,24.41
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32032 |goto The Jade Forest/0 54.61,63.33
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32028 |goto The Jade Forest/0 28.01,47.39
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32051 |goto Kun-Lai Summit/0 62.50,28.90
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32037 |goto Kun-Lai Summit/0 57.45,59.95
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32041 |goto Kun-Lai Summit/0 64.21,61.27
step
click Candy Bucket##208144
|tip You must complete the quest "Challenge Accepted" to access this candy bucket.
|tip You can complete it by doing the few quests at Binan Village in Kun-Lai Summit.
|tip These quests will lead you to Eastwind Rest.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32040 |goto Kun-Lai Summit/0 62.77,80.50
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32039 |goto Kun-Lai Summit/0 72.73,92.28
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32026 |goto The Veiled Stair/0 55.10,72.23
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32022 |goto Shrine of Two Moons/2 58.84,78.38
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32044 |goto Vale of Eternal Blossoms/0 35.13,77.77
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32048 |goto Valley of the Four Winds/0 83.64,20.15
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32046 |goto Valley of the Four Winds/0 19.87,55.79
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32036 |goto Krasarang Wilds/0 75.92,6.87
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32047 |goto Krasarang Wilds/0 61.03,25.14
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32034 |goto Krasarang Wilds/0 51.40,77.29
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32020 |goto Krasarang Wilds/0 28.25,50.74
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32023 |goto Dread Wastes/0 55.22,71.19
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32024 |goto Dread Wastes 55.93,32.27
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32043 |goto Townlong Steppes/0 71.11,57.78
step
Enter the building |goto Dalaran L/10 49.93,37.69 < 10 |walk
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##43055 |goto Dalaran L/10 47.96,41.75
step
Enter the building |goto Dalaran L/10 63.12,33.13 < 10 |walk
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##43057 |goto Dalaran L/10 67.04,29.42
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##54709 |goto Dazar'alor/1 49.82,84.73
step
_Congratulations!_
You Earned the "Tricks and Treats" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Harvest Festival\\Harvest Festival Quest",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Harvest Festival') end,
condition_end=function() return completedq(8150) end,
description="\nComplete the quest \"Honoring a Hero\" for the Harvest Festival event.",
},[[
step
talk Javnir Nashak##15012
accept Honoring a Hero##8150 |goto Durotar/0 46.25,15.10
step
use Grom's Tribute##19851
Place a tribute at Grom's Monument |q 8150/1 |goto Ashenvale/0 82.85,79.04
step
talk Javnir Nashak##15012
turnin Honoring a Hero##8150 |goto Durotar/0 46.25,15.10
step
_Congratulations!_
You Completed the "Harvest Festival" Event.
|tip You can now use the food at the Harvest Festival table.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Warlords of Draenor\\Iron Horde Invasion",{
description="\nTake part in the opening event of the Warlords of Draenor!",
condition_end=function() return completedq(36940) end,
},[[
step
talk Zidormi##88206
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 36940 |future
step
talk Ameri Windblade##85734
fpath Shattered Landing |goto 72.96,48.64
step
talk Thrall##82851
accept Attack of the Iron Horde##35745 |goto 71.81,47.72
accept Under Siege##35746 |goto 71.81,47.72
step
talk Rokhan##85247
accept Peeking Into the Portal##36382 |goto 71.88,48.99
stickystart "Kill_Ironmarch_Grunts"
step
clicknpc Iron Demolisher##86091
Destroy #3# Iron Demolishers |q 35746/1 |goto 64.33,35.18
step
label "Kill_Ironmarch_Grunts"
kill 8 Ironmarch Grunt##76189 |q 35745/1 |goto 64.33,35.18
step
click Telescope##237144
Use the Telescope |q 36382/1 |goto 61.68,36.68
step
talk Rokhan##85247
turnin Peeking Into the Portal##36382 |goto 71.88,48.99
step
talk Thrall##82851
turnin Attack of the Iron Horde##35745 |goto 71.81,47.72
turnin Under Siege##35746
step
talk Thrall##82851
accept Subversive Scouts##35748 |goto 71.81,47.72
step
talk Rokhan##85247
accept Ending Executions##35744 |goto 71.88,48.99
step
kill Ironmarch Executioner##82774+
|tip They stand in front of kneeling Horde Prisoners around this area.
Stop #3# Executions |q 35744/1 |goto 59.37,27.80
step
kill 5 Ironmarch Scout##76886 |q 35748/1 |goto 71.78,48.53
|tip They are stealthed near hills and open areas around this area.
step
talk Rokhan##85247
turnin Ending Executions##35744 |goto 71.88,48.99
step
talk Thrall##82851
turnin Subversive Scouts##35748 |goto 71.81,47.72
accept Investigating the Invasion##36292 |goto 71.81,47.72
step
talk Thrall##84928
turnin Investigating the Invasion##36292 |goto 48.73,31.78
accept Attack on Nethergarde##35751 |goto 48.73,31.78
accept Lunatic Lieutenants##35750 |goto 48.73,31.78
step
talk Okrilla##76609
accept Ransacking Nethergarde##35761 |goto 48.74,31.89
step
kill Rukah the Machinist##73458
|tip She walks around this area.
collect Rukah's Battleplan##113400 |q 35750/2 |goto 57.00,17.96
step
click Neka's Poison Flask##233224
|tip On the corner of the table under the tent.
collect Neka's Poison Flask##113436 |q 35761/3 |goto 59.35,17.97
step
click Horde Flag
Plant the Horde Flag outside of the Main Keep |q 35751/3 |goto 59.86,15.81
step
kill Gar Steelcrush##73446
|tip Upstairs inside the keep.
collect Gar's Battleplan##113401 |q 35750/3 |goto 60.19,13.81
step
click Aitokk's Axe##233228
|tip Stuck in the wall inside the building.
collect Aitokk's Axe##113439 |q 35761/1 |goto 61.87,14.73
step
kill Mokrik Blackfingers##73459
collect Mokrik's Battleplan##113399 |q 35750/1 |goto 62.86,13.12
step
click Horde Flag
Plant the Horde Flag at the Center of Nethergarde |q 35751/2 |goto 61.60,18.49
step
click Overseer Struk's Shield##233227
collect Overseer Struk's Shield##113437 |q 35761/2 |goto 60.60,20.01
step
click Horde Flag
Plant the Horde Flag at the Entrance to Nethergarde |q 35751/1 |goto 62.97,22.51
step
talk Okrilla##76609
turnin Ransacking Nethergarde##35761 |goto 48.74,31.89
step
talk Thrall##84928
turnin Attack on Nethergarde##35751 |goto 48.73,31.78
turnin Lunatic Lieutenants##35750 |goto 48.73,31.78
step
talk Thrall##84928
accept Toothsmash the Annihilator##35760 |goto 48.73,31.78
accept Death to the Dreadmaul##35762 |goto 48.73,31.78
step
talk Okrilla##76609
accept Okrilla's Revenge##35764 |goto 48.74,31.89
stickystart "Slay_Dreadmaul_Ogres"
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35764/1 |goto 43.89,31.01 |count 1
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35764/1 |goto 44.32,35.60 |count 2
step
kill Toothsmash the Annihilator##82451 |q 35760/1 |goto 43.61,36.32
|tip He walks around this area.
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35764/1 |goto 43.40,36.99 |count 3
step
label "Slay_Dreadmaul_Ogres"
Kill Dreadmaul enemies around this area
Slay #8# Dreadmaul Ogres |q 35762/1 |goto 43.83,36.12
step
talk Okrilla##76609
turnin Okrilla's Revenge##35764 |goto 48.74,31.89
step
talk Thrall##84928
turnin Toothsmash the Annihilator##35760 |goto 48.73,31.78
turnin Death to the Dreadmaul##35762 |goto 48.73,31.78
accept Gar'mak Bladetwist##35763 |goto 48.73,31.78
step
kill Gar'mak Bladetwist##82918 |q 35763/1 |goto 40.05,11.41
|tip Upstairs inside the tower.
step
talk Thrall##84928
turnin Gar'mak Bladetwist##35763 |goto 48.73,31.78
accept Warning the Warchief##36940 |goto 48.73,31.78
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Warning Orgrimmar##36940 |goto Orgrimmar/1 48.53,70.73
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24576) end,
description="\nThis guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Detective Snap Snagglebolt##37172
accept Something Stinks##24536 |goto Orgrimmar/1 50.80,75.26
step
clicknpc Orgrimmar Grunt##3296+
|tip Look for Orgrimmar Grunts that have the Heavily Perfumed buff.
|tip They look like Orgrimmar Grunts with a glowing purple aura around them all over Orgrimmar.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Orgrimmar Grunts around this area.
Analyze #6# Perfumed Guards |q 24536/1 |goto 50.77,77.98
step
talk Detective Snap Snagglebolt##37172
turnin Something Stinks##24536 |goto 50.80,75.26
accept Pilfering Perfume##24541 |goto 50.80,75.26
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Detective Snap Snagglebolt##37172
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff spell:71450 |goto 50.80,75.26 |or
'|complete completedq(24541) |or
step
Leave Orgrimmar |goto Durotar/0 45.53,12.00 < 30 |only if walking
Get the Crown Chemical Co. Package |complete hasbuff("spell:71459") |q 24541 |goto Durotar/0 47.70,11.81 |or
|tip Quickly run by the boxes to get the package.
'|complete not hasbuff("spell:71450") and not readyq(24541) and not completedq(24541) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
Return the Crown Chemical Co. Package |complete readyq(24541) or completedq(24541) |goto Orgrimmar/1 50.80,75.26 |or
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
'|complete (not hasbuff("spell:71450") or not hasbuff("spell:71459")) and not readyq(24541) and not completedq(24541) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Detective Snap Snagglebolt##37172
turnin Pilfering Perfume##24541 |goto 50.80,75.26
accept Snivel's Sweetheart##24850 |goto 50.80,75.26
step
talk Roka##38328
|tip Inside the building.
turnin Snivel's Sweetheart##24850 |goto 57.60,60.79
accept Hot On The Trail##24851 |goto 57.60,60.79
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Auction House |q 24851/2 |goto 52.93,74.72
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Bank |q 24851/1 |goto 49.23,82.12
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Barber Shop |q 24851/3 |goto 40.53,60.70
step
talk Roka##38328
|tip Inside the building.
turnin Hot On The Trail##24851 |goto 57.58,60.81
accept A Friendly Chat...##24576 |goto 57.58,60.81
step
talk Snivel Rustrocket##37715
Tell him _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24576/1 |goto 51.65,56.72
step
talk Detective Snap Snagglebolt##37172
turnin A Friendly Chat...##24576 |goto 50.81,75.23
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not completedq(44546,24629,24635,24636,24612,44559,24614,24613,24615) end,
description="\nThis guide will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24576)
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto 53.07,77.14 |or
accept A Cloudlet of Classy Cologne##24635 |goto 53.07,77.14 |or
accept Bonbon Blitz##24636 |goto 53.07,77.14 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Warchief's Advisor##24612 |goto 53.01,76.81
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Cologne Samples |q 24635/1 |goto 51.64,77.81
|only if haveq(24635)
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Perfume Samples |q 24629/1 |goto 51.64,77.81
|only if haveq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Chocolate Samples |q 24636/1 |goto 51.64,77.81
|only if haveq(24636)
stickystart "Slay_Crown_Chemical_Co_Employees"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 44546/1 |goto Silverpine Forest/0 45.74,73.39
|only if haveq(44546)
step
click Love Potion Recipe
accept Follow the Recipe##44559 |goto 45.25,73.85
|only if haveq(44546)
step
Enter the building |goto 46.23,73.45 < 10 |walk
click Recipe Fragment##6478
|tip Upstairs inside the building.
Collect the 1st Fragment |q 44559/1 |goto 46.28,73.51
|only if haveq(44559)
step
Enter the building |goto 44.98,71.64 < 10 |walk
click Recipe Fragment##6478
|tip Inside the building.
Collect the 2nd Fragment |q 44559/2 |goto 45.14,71.52
|only if haveq(44559)
step
click Recipe Fragment##6478
Collect the 3rd Fragment |q 44559/3 |goto 42.70,71.16
|only if haveq(44559)
step
label "Slay_Crown_Chemical_Co_Employees"
Kill enemies around this area
Slay #12# Crown Chemical Co. Employees |q 44546/2 |goto 45.78,73.39
|only if haveq(44546)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24615 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24615 |future
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23 |only if haveq(44546) or completedq(44546)
turnin Follow the Recipe##44559 |goto 50.79,75.23 |only if haveq(44559) or completedq(44559)
|only if haveq(44546,44559) or completedq(44546,44559)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto 53.07,77.17 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto 53.07,77.17 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto 53.07,77.17 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
Enter the building |goto 49.86,75.50 < 10 |walk
talk Eitrigg##3144
|tip He will appear inside once you have a Lovely Charm Bracelet in your inventory.
|tip Phasing makes this tricky, so you may need to enter multiple times before he appears.
turnin A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/1 49.21,72.28
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61
step
talk Baine Bloodhoof##36648
|tip If Baine is not available, relogging will usually make him appear.
turnin A Gift for the High Chieftain##24614 |goto 60.25,51.68
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 24613 |future
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60
step
Enter the tunnel |goto 52.36,64.21 < 10 |walk
talk Lady Sylvanas Windrunner##10181
turnin A Gift for the Banshee Queen##24613 |goto 58.05,91.77
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto 53.81,20.27
step
You have completed all available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(44546,24629,24635,24636,24612,44559,24614,24613,24615) |next "Complete_Leveling_Guide"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Be Mine!",{
author="support@zygorguides.com",
description="\nEat the eight \"Bag of Candies\" heart candies listed below:\n\nBe Mine!\nAll yours.\nHot Lips.\n"..
"You're the best!\nI'll follow you all around Azeroth.\nI'm all yours!\nYou're Mine!\nI LOVE YOU",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1701) end,
achieveid={1701},
patch='30002',
},[[
step
talk Lovely Merchant##37674
buy Bag of Heart Candies##21813 |n |goto Orgrimmar/1 53.05,77.00
use the Bag of Heart Candies##21813
|tip Collect the 8 different types of Heart Candy from the Bag of Heart Candies.
Collect "Be Mine" |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
Collect "I'll Follow You All Around Azeroth" |collect 1 Heart Candy##21818 |only if not achieved(1701,2)
Collect "All Yours" |collect 1 Heart Candy##21819 |only if not achieved(1701,3)
Collect "I'm All Yours" |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
Collect "Hot Lips" |collect 1 Heart Candy##21823 |only if not achieved(1701,5)
Collect "You're Mine" |collect 1 Heart Candy##21822 |only if not achieved(1701,6)
Collect "You're the Best" |collect 1 Heart Candy##21820 |only if not achieved(1701,7)
Collect "I LOVE YOU" |collect 1 Heart Candy##21817 |only if not achieved(1701,8)
step
use Heart Candy##21816
Eat the "Be Mine!" Heart Candy |achieve 1701/1
step
use Heart Candy##21818
Eat the "I'll follow you all around Azeroth." Heart Candy |achieve 1701/2
step
use Heart Candy##21819
Eat the "All yours." Heart Candy |achieve 1701/3
step
use Heart Candy##21821
Eat the "I'm all yours!" Heart Candy |achieve 1701/4
step
use Heart Candy##21823
Eat the "Hot lips." Heart Candy |achieve 1701/5
step
use Heart Candy##21822
Eat the "You're mine!" Heart Candy |achieve 1701/6
step
use Heart Candy##21820
Eat the "You're the best!" Heart Candy |achieve 1701/7
step
use Heart Candy##21817
Eat the "I LOVE YOU" Heart Candy |achieve 1701/8
step
_Congratulations!_
You Have Earned the "Be Mine!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Charming",{
author="support@zygorguides.com",
description="\nCreate 12 Lovely Charm Bracelets.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(260) end,
achieveid={260},
patch='30001',
},[[
step
talk Kwee Q. Peddlefeet##38042
collect 1 Lovely Charm Collector's Kit##49661 |goto Orgrimmar/1 52.8,76.8 |or
'|complete achieved(260) |or
'|accept A Gift for High Overlord Saurfang##24612 |n
step
collect 120 Lovely Charm##49655
|tip They come from killing enemies that are at least green difficulty to you.
|tip They will not drop if they are grey difficulty.
|tip You can run dungeons or pick a zone of your choice and kill anything.
step
use the Lovely Charm##49655
collect 12 Lovely Charm Bracelet##49916 |or
'|complete achieved(260) |or
step
_Congratulations!_
You Have Earned the "Charming" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Dangerous Love",{
author="support@zygorguides.com",
description="\nAssist the Steamwheedle Cartel in stopping the sinister Crown Chemical Co. plot.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1695) end,
achieveid={1695},
patch='30003',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
Reach Level 7 |ding 7 |or
'|complete achieved(1695) |or
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23 |or
'|complete achieved(1695) |or
stickystart "Slay_Crown_Chemical_Co_Employees"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 44546/1 |goto Silverpine Forest/0 45.74,73.39 |or
'|complete achieved(1695) |or
step
label "Slay_Crown_Chemical_Co_Employees"
Kill enemies around this area
Slay #12# Crown Chemical Co. Employees |q 44546/2 |goto 45.78,73.39 |or
'|complete achieved(1695) |or
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##44546 |goto Orgrimmar/1 50.79,75.23 |or
'|complete achieved(1695) |or
step
Earn the "Dangerous Love" Achievement |achieve 1695
step
_Congratulations!_
You Have Earned the "Dangerous Love" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Fistful of Love",{
author="support@zygorguides.com",
description="\nUse a Handful of Rose Petals on each of the race/class combinations listed below:\n\nGnome Warlock\n"..
"Human Death Knight\nOrc Shaman\nUndead Warrior\nBlood Elf Mage\nDwarf Hunter\nOrc Death Knight\nNight Elf Priest"..
"\nTauren Druid\nTroll Rogue\nDraenei Paladin",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1699) end,
achieveid={1699},
patch='30003',
},[[
step
talk Lovely Merchant##37674
buy 15 Handful of Rose Petals##22218 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1699) |or
stickystart "Use_Petals_on_Gnome_Warlock"
stickystart "Use_Petals_on_Orc_Death_Knight"
stickystart "Use_Petals_on_Human_Death_Knight"
stickystart "Use_Petals_on_Night_Elf_Priest"
stickystart "Use_Petals_on_Orc_Shaman"
stickystart "Use_Petals_on_Tauren_Druid"
stickystart "Use_Petals_on_Undead_Warrior"
stickystart "Use_Petals_on_Troll_Rogue"
stickystart "Use_Petals_on_Blood_Elf_Mage"
stickystart "Use_Petals_on_Draenei_Paladin"
stickystart "Use_Petals_on_Dwarf_Hunter"
step
use the Handful of Rose Petals##22218
|tip Battlegrounds and capital cities are good locations.
Use them once on each of the following classes:
'|complete achieved(1699)
step
label "Use_Petals_on_Gnome_Warlock"
Use Rose Petals on a "Gnome Warlock" |achieve 1699/1
step
label "Use_Petals_on_Orc_Death_Knight"
Use Rose Petals on a "Orc Death Knight" |achieve 1699/2
step
label "Use_Petals_on_Human_Death_Knight"
Use Rose Petals on a "Human Death Knight" |achieve 1699/3
step
label "Use_Petals_on_Night_Elf_Priest"
Use Rose Petals on a "Night Elf Priest" |achieve 1699/4
step
label "Use_Petals_on_Orc_Shaman"
Use Rose Petals on a "Orc Shaman" |achieve 1699/5
step
label "Use_Petals_on_Tauren_Druid"
Use Rose Petals on a "Tauren Druid" |achieve 1699/6
step
label "Use_Petals_on_Undead_Warrior"
Use Rose Petals on a "Undead Warrior" |achieve 1699/7
step
label "Use_Petals_on_Troll_Rogue"
Use Rose Petals on a "Troll Rogue" |achieve 1699/8
step
label "Use_Petals_on_Blood_Elf_Mage"
Use Rose Petals on a "Blood Elf Mage" |achieve 1699/9
step
label "Use_Petals_on_Draenei_Paladin"
Use Rose Petals on a "Draenei Paladin" |achieve 1699/10
step
label "Use_Petals_on_Dwarf_Hunter"
Use Rose Petals on a "Dwarf Hunter" |achieve 1699/11
step
_Congratulations!_
You Have Earned the "Fistful of Love" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster",{
author="support@zygorguides.com",
description="\nGet completely smashed, put on your best perfume, throw a handful of rose petals "..
"on Jeremiah Payson and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1280) end,
achieveid={1280},
patch='30001',
},[[
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1280) |or
step
talk Barkeep Morag##5611
|tip Inside the building.
buy 6 Cup of Frog Venom Brew##44573 |goto 55.06,77.96 |or
'|complete achieved(1280) |or
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |or
'|complete achieved(1280) |or
step
use the "VICTORY" Perfume##49856
Gain the "'VICTORY' Perfume" Buff |havebuff spell:70233 |or
'|complete achieved(1280) |or
step
clicknpc Jeremiah Payson##8403
|tip He's under the stairs surrounded by cockroaches.
use the Cup of Frog Venom Brew##44573
|tip Use all 6 of your Cups of Frog Venom Brew to get Completely Smashed.
use the Handful of Rose Petals##22218
|tip Use them on Jeremiah Payson.
Use a Handful of Rose Petals on Jeremiah Payson |achieve 1280/1 |goto Undercity/0 67.59,44.13
step
clicknpc Jeremiah Payson##8403
"Kiss" Jeremiah Payson |script DoEmote("KISS")
Kiss Jeremiah Payson While Completely Smashed |achieve 1280/2 |goto 67.59,44.13
step
_Congratulations!_
You Have Earned the "Flirt With Disaster" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\I Pitied The Fool",{
author="support@zygorguides.com",
description="\nPity the Love Fool in the locations specified below:\n\nWintergrasp\nNaxxramas\n"..
"Arathi Basin Blacksmith\nBattle Ring of Gurubashi Arena\nThe Culling of Stratholme",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1704) end,
achieveid={1704},
patch='30002',
},[[
step
talk Lovely Merchant##37674
buy 5 Love Fool##22261 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1704) |or
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside Wintergrasp.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in Wintergrasp |achieve 1704/1 |goto Wintergrasp/0 70.30,32.28
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside the Gurubashi Arena.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Gurubashi Arena |achieve 1704/2 |goto The Cape of Stranglethorn/0 46.41,26.05
step
use the Love Fool##22261
|tip Use your Love Fool near the Blacksmith node inside of the Arathi Basin Battleground.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Arathi Basin Battleground |achieve 1704/3
step
use Love Fool##22261
|tip You can use your Love Fool anywhere inside the Culling of Stratholme Dungeon.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in The Culling of Stratholme Dungeon |achieve 1704/4 |goto The Culling of Stratholme/1 86.80,58.97
step
use Love Fool##22261
|tip You can use your Love Fool anywhere inside the Naxxramas Raid.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Naxxramas Raid |achieve 1704/5 |goto Naxxramas/5 51.79,51.58
step
_Congratulations!_
You Have Earned the "I Pitied The Fool" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lonely?",{
author="support@zygorguides.com",
description="\nEnjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1291) end,
achieveid={1291},
patch='30100',
},[[
step
talk Lovely Merchant##37674
buy 1 Romantic Picnic Basket##34480 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto 53.06,77.02 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |or
'|complete achieved(1291) |or
step
use the Romantic Picnic Basket##34480
|tip Find a player to have a picnic with you.
|tip It can be anywhere in Dalaran.
use the Buttermilk Delight##22236
|tip While having a picnic, use your Buttermilk Delight.
Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291 |goto Dalaran L/10 53.61,39.65
step
_Congratulations!_
You Have Earned the "Lonely?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lovely Luck Is On Your Side",{
author="support@zygorguides.com",
description="\nOpen a Lovely Dress Box and receive a Lovely Black Dress.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1694) end,
achieveid={1694},
patch='30002',
},[[
step
talk Lovely Merchant##37674
buy 1 Lovely Dress Box##50160 |n
|tip These cost 20 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Lovely Dress Box##50160
collect 1 Lovely Black Dress##22279 |goto Orgrimmar/1 53.04,77.04
'|complete achieved(1694) |or
step
Earn the "Lovely Luck Is On Your Side" Achievement |achieve 1694
step
_Congratulations!_
You Have Earned the "Lovely Luck Is On Your Side" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\My Love is Like a Red, Red Rose",{
author="support@zygorguides.com",
description="\nObtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1703) end,
achieveid={1703},
patch='30002',
},[[
step
collect 1 Bouquet of Red Roses##22206 |n
collect 1 Bouquet of Ebon Roses##44731 |n
|tip These come from specific bosses in dungeons.
|tip Corla, Herald of Twilight in Blackrock Caverns
|tip High Priestess Azil in Stonecore
|tip Admiral Ripsnarl in Deadmines
|tip Lord Godfrey in Shadowfang Keep
|tip You will need one or the other, not both.
Obtain a Bouquet of Red or Ebon Roses During the Love is in the Air Celebration |achieve 1703
step
_Congratulations!_
You Have Earned the "My Love is Like a Red, Red Rose" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Nation of Adoration",{
author="support@zygorguides.com",
description="\nComplete the Lovely Charm Bracelet daily quest for each Horde capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not achieved(1698) end,
achieveid={1698},
patch='30100',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/1 53.01,76.81 |or
'|complete achieved(1698,1) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |or
'|complete achieved(1698) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1698) |or
step
Enter the building |goto 49.86,75.50 < 10 |walk
talk Eitrigg##3144
|tip He will appear inside once you have a Lovely Charm Bracelet in your inventory.
|tip Phasing makes this tricky, so you may need to enter multiple times before he appears.
turnin A Gift for the Warchief's Advisor##24612 |goto 48.13,70.54 |or
'|complete achieved(1698,1) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61 |or
'|complete achieved(1698,2) |or
step
talk Baine Bloodhoof##36648
|tip If he isn't there, try to log out then back in.
turnin A Gift for the High Chieftain##24614 |goto 60.25,51.68 |or
'|complete achieved(1698,2) |or
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |or
'|complete achieved(1698,4) |or
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60 |or
'|complete achieved(1698,4) |or
step
Enter the tunnel |goto 52.36,64.21 < 10 |walk
talk Lady Sylvanas Windrunner##10181
turnin A Gift for the Banshee Queen##24613 |goto 58.05,91.77 |or
'|complete achieved(1698,4) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52 |or
'|complete achieved(1698,3) |or
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto 53.81,20.27 |or
'|complete achieved(1698,3) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1698
step
_Congratulations!_
You Have Earned the "Nation of Adoration" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Perma-Peddle",{
author="support@zygorguides.com",
description="\nObtain a permanent Peddlefeet pet by procuring a Truesilver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1700) end,
achieveid={1700},
patch='30003',
},[[
step
collect 40 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1700) |or
step
talk Lovely Merchant##37674
buy 1 Truesilver Shafted Arrow##22235 |goto Orgrimmar/1 53.04,77.04
'|complete achieved(1700) |or
step
Earn the "Perma-Peddle" Achievement |achieve 1700
step
_Congratulations!_
You Have Earned the "Perma-Peddle" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Shafted!",{
author="support@zygorguides.com",
description="\nShoot 10 players with a Silver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1188) end,
achieveid={1188},
patch='30003',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1188) |or
step
talk Lovely Merchant##37674
buy 10 Silver Shafted Arrow##22200 |goto Orgrimmar/1 53.05,77.03 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players inside Orgrimmar.
Shoot 10 Players with the Silver Shafted Arrow |achieve 1188 |goto 53.05,77.03
step
_Congratulations!_
You Have Earned the "Shafted!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Sweet Tooth",{
author="support@zygorguides.com",
description="\nSample the following holiday candy:\n\nButtermilk Delight\nDark Desire\n"..
"Sweet Surprise\nVery Berry Cream",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1702) end,
achieveid={1702},
patch='30008',
},[[
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto Orgrimmar/1 53.06,77.02 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |only if not achieved(1702,1)
collect 1 Dark Desire##22237 |only if not achieved(1702,2)
collect 1 Sweet Surprise##22239 |only if not achieved(1702,3)
collect 1 Very Berry Cream##22238 |only if not achieved(1702,4)
step
use the Buttermilk Delight##22236
Sample the "Buttermilk Delight" Candy |achieve 1702/1
|tip Save the remaining Buttermilk Delights for a later achievement.
step
use the Dark Desire##22237
Sample the "Dark Desire" Candy |achieve 1702/2
step
use the Sweet Surprise##22239
Sample the "Sweet Surprise" Candy |achieve 1702/3
step
use the Very Berry Cream##22238
Sample the "Very Berry Cream" Candy |achieve 1702/4
step
_Congratulations!_
You Have Earned the "Sweet Tooth" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\The Rocket's Pink Glare",{
author="support@zygorguides.com",
description="\nShoot off 10 Love Rockets in 20 seconds or less.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1696) end,
achieveid={1696},
patch='30002',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1696) |or
step
talk Lovely Merchant##37674
buy 10 Love Rocket##34258 |goto Orgrimmar/1 53.04,77.04 |or
'|complete achieved(1696) |or
step
use the Love Rocket##34258
|tip Use them quickly to set off all 10 in 20 seconds or less.
Shoot off 10 Love Rockets in 20 Seconds or Less |achieve 1696
step
_Congratulations!_
You Have Earned the "The Rocket's Pink Glare" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Main Questline",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the main questline for the Lunar Festival event.",
condition_suggested=function() return isevent('Lunar Festival') end,
condition_end=function() return completedq(56842) end,
},[[
step
talk Lunar Festival Herald##15891
accept The Lunar Festival##8873 |goto Orgrimmar/1 49.89,81.20
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8873 |goto 49.08,55.81
accept Lunar Fireworks##8867 |goto 49.08,55.81
step
talk Lunar Festival Vendor##47897
buy 8 Small Blue Rocket##21558 |goto 48.68,57.01 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto 48.68,57.01 |q 8867
step
use the Small Blue Rocket##21558
|tip Use it eight times.
Fire #8# Lunar Fireworks |q 8867/1 |goto 48.75,56.88
step
use the Blue Rocket Cluster##21571
|tip Use it two times.
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto 48.75,56.88
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto 49.08,55.81
accept Valadar Starsong##8883 |goto 49.08,55.81
step
use Lunar Festival Invitation##21711 |goto 49.12,54.73
|tip Stand in the beam of light.
Teleport to Moonglade |goto Moonglade/0 36.60,58.57 |c |noway |q 8883
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto 53.65,35.24
step
talk Myrael Lunarbloom##155759
accept Lunar Preservation##56842 |goto 53.09,36.02
|tip NOTE: If you currently have the quest "A Fresh Trauma" available from Magni in Chamber of Heart, you will need to do that first to complete the Hyjal step.
step
Gain the "Blessing of the Moon" Buff |havebuff spell:303601 |goto 48.65,32.93 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Two Stacks of the "Blessing of the Moon" Buff |havebuff 2 spell:303601 |goto Felwood/0 44.04,28.40 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Three Stacks of the "Blessing of the Moon" Buff |havebuff 3 spell:303601 |goto Ashenvale/0 53.75,46.01 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Four Stacks of the "Blessing of the Moon" Buff |havebuff 4 spell:303601 |goto 60.21,72.91 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Five Stacks of the "Blessing of the Moon" Buff |havebuff 5 spell:303601 |goto Stonetalon Mountains/0 41.60,18.97 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Six Stacks of the "Blessing of the Moon" Buff |havebuff 6 spell:303601 |goto Feralas/0 60.20,46.25 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Seven Stacks of the "Blessing of the Moon" Buff |havebuff 7 spell:303601 |goto Duskwood/0 49.18,33.25 |q 56842
|tip Stand in the moonwell and click the "Ritual of the Moon" ability that appears on-screen.
step
Gain Eight Stacks of the "Blessing of the Moon" Buff |complete readyq(56842) or completedq(56842) |goto Mount Hyjal/0 60.60,25.76 |q 56842
|tip Stand in the lake and click the "Ritual of the Moon" ability that appears on-screen.
step
use the Lunar Festival Invitation##21711 |goto Orgrimmar/1 49.12,54.71
Return to Moonglade |goto Moonglade/0 |c |noway |q 56842
step
talk Myrael Lunarbloom##155759
turnin Lunar Preservation##56842 |goto 53.09,36.02 |next "Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Crown Transmog Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the questline to unlock Lunar Festival crown transmogs year-round.",
condition_suggested=function() return isevent('Lunar Festival') end,
condition_end=function() return completedq(56906) end,
},[[
step
Complete the "Lunar Festival Main Questline" Event Guide |complete completedq(56842)
step
talk Valadar Starsong##15864
|tip These items cost 25 Coins of Ancestry each.
|tip Coins can be earned by completing the various Lunar Festival elder guides.
buy 1 Crown of Courage##151355 |goto Moonglade/0 53.61,35.40
buy 1 Crown of Prosperity##151354 |goto 53.61,35.40
buy 1 Crown of Dark Blossoms##151353 |goto 53.61,35.40
buy 1 Crown of Good Fortune##151352 |goto 53.61,35.40
_Or_
Click Here if you Have Already Purchased These on Another Character |confirm
|tip If Myrael Lunarbloom near you offers four quests, you have purchased them before.
step
talk Myrael Lunarbloom##155759
accept Crown of Courage##56903 |goto 53.09,36.02
accept Crown of Prosperity##56904 |goto 53.09,36.02
accept Crown of Dark Blossoms##56905 |goto 53.09,36.02
accept Crown of Good Fortune##56906 |goto 53.09,36.02
step
click Flower of Generosity##332294+
|tip They look like small blue flowers on the ground around this area.
collect 3 Flower of Generosity##170322 |q 56906/3 |goto Winterspring/0 57.48,32.53
step
click Flower of Wealth##332281+
|tip They look like small red flowers on the ground around this area.
collect 3 Flower of Wealth##170281 |q 56904/1 |goto Northern Barrens/0 37.20,45.62
step
click Flower of Sincerity##332279+
|tip They look like clusters of white flowers on the ground around this area.
collect 3 Flower of Sincerity##170279 |q 56903/2 |goto Mulgore/0 51.52,32.25
step
click Flower of Compassion##332287+
|tip They look like small red flowers on the ground around this area.
collect 3 Flower of Compassion##170296 |q 56905/1 |goto Desolace/0 52.38,48.27
step
click Flower of Felicity##332283+
|tip They look like clusters of red leaves on the ground around this area.
collect 3 Flower of Felicity##170283 |q 56904/3 |goto Un'Goro Crater/0 66.79,28.80
step
click Flower of Peace##332282+
|tip They look like clusters of green flowers on the ground around this area.
collect 3 Flower of Peace##170282 |q 56904/2 |goto The Cape of Stranglethorn/0 47.08,18.92
step
click Flower of Reflection##332288+
|tip They look like small purple flowers on the ground around this area.
collect 3 Flower of Reflection##170298 |q 56905/2 |goto Duskwood/0 64.56,25.44
step
click Flower of Luck##332293+
|tip They look like small blue flowers on the ground around this area.
collect 3 Flower of Luck##170321 |q 56906/2 |goto Dun Morogh/0 49.29,55.72
step
click Flower of Vigor##332280+
|tip They look like clusters of purple flowers on the ground around this area.
collect 3 Flower of Vigor##170280 |q 56903/3 |goto The Hinterlands/0 61.85,40.65
step
click Flower of Thoughtfulness##332292+
|tip They look like small blue flowers on the ground around this area.
collect 3 Flower of Thoughtfulness##170319 |q 56906/1 |goto Hillsbrad Foothills/0 49.62,22.33
step
click Flower of Solemnity##332289+
|tip They look like bell-shaped flowers on the ground around this area.
collect 3 Flower of Solemnity##170308 |q 56905/3 |goto Silverpine Forest/0 55.94,32.87
step
click Flower of Fortitude##332278+
|tip They look like glowing white and red flowers on the ground around this area.
collect 3 Flower of Fortitude##170278 |q 56903/1 |goto Eversong Woods/0 42.66,69.43
step
use the Lunar Festival Invitation##21711 |goto Orgrimmar/1 49.12,54.71
Return to Moonglade |goto Moonglade/0 |c |noway |q 56906
step
talk Myrael Lunarbloom##155759
turnin Crown of Courage##56903 |goto 53.09,36.02
turnin Crown of Prosperity##56904 |goto 53.09,36.02
turnin Crown of Dark Blossoms##56905 |goto 53.09,36.02
turnin Crown of Good Fortune##56906 |goto 53.09,36.02
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
description="\nThis guide section will walk you through an optimized path for honoring the elders that are spread out all over Azeroth for the Lunar Festival event.",
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 8648 |future
step
talk Elder Darkcore##15564
|tip Inside the entrance area building, before the Undercity elevators.
accept Darkcore the Elder##8648 |goto Undercity/0 66.64,38.23
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.97,41.14
step
talk Elder Graveborn##15568
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.86,53.91
step
Enter the cave |goto Western Plaguelands/0 64.69,38.62 < 15 |walk
Follow the path |goto 63.68,37.66 < 15 |walk
talk Elder Meadowrun##15602
|tip Inside the cave.
accept Meadowrun the Elder##8722 |goto 63.51,36.12
step
Leave the cave |goto 64.92,38.73 < 15 |only if walking
talk Elder Moonstrike##15594
|tip On top of the building.
accept Moonstrike the Elder##8714 |goto 69.19,73.45
step
Enter Stratholme |goto Stratholme/1 68.01,88.52 < 10000 |c |q 8727 |future
step
map Stratholme/1
path follow smart; loop off; ants curved; dist 25
path	66.29,73.98	67.15,58.93	59.97,53.76	60.26,31.18	72.74,20.65
talk Elder Farwhisper##15607
|tip Open the world map to see an ant trail guiding you to your destination.
accept Farwhisper the Elder##8727 |goto 78.91,20.00
step
Leave Stratholme |goto 78.91,20.00 > 10000 |c |noway |q 8650 |future
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.74,54.56
step
Enter the building |goto 35.35,68.76 < 10 |walk
talk Elder Windrun##15592
|tip Inside the building.
accept Windrun the Elder##8688 |goto 35.58,68.82
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 50.00,48.05
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto Twilight Highlands/0 51.88,33.07
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto 50.91,70.46
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.54
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.06
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.91,49.91
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.28,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 52.38,23.93
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto 70.11,45.38
step
Run up the ramp |goto Burning Steppes/14 65.92,41.83 < 10 |walk
Enter Lower Blackrock Spire |goto Blackrock Spire/4 37.91,43.32 < 10000 |c |q 8644 |future
|tip Inside Blackrock Mountain
step
map Blackrock Spire/3
path follow smart; loop off; ants curved; dist 20
path	38.59,48.17
map Blackrock Spire/4
path	42.47,44.95	48.35,41.94
map Blackrock Spire/2
path	59.97,43.01
talk Elder Stonefort##15560
|tip Open the world map to see an ant trail guiding you to your destination.
accept Stonefort the Elder##8644 |goto 61.84,39.79
step
map Blackrock Spire/2
path follow smart; loop off; ants curved; dist 20
path	59.97,43.01
map Blackrock Spire/4
path	42.47,44.95	48.35,41.94
map Blackrock Spire/3
path	38.59,48.17	37.73,40.86
Leave Lower Blackrock Spire |goto Burning Steppes/14 80.32,40.26 |c |noway |q 8619 |future
step
Run down the ramp |goto 69.89,40.46 < 10 |walk
Enter the building |goto Burning Steppes/16 55.35,84.18 < 10 |walk
Follow the path |goto 38.89,53.11 < 30 |only if walking
Enter Blackrock Depths |goto Blackrock Depths/1 34.71,77.82 < 10000 |c |q 8619 |future
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 20
path	38.45,75.70	48.78,72.26	51.36,67.96
talk Elder Morndeep##15549
|tip Open the world map to see an ant trail guiding you to your destination.
accept Morndeep the Elder##8619 |goto 50.50,62.91
step
Leave Blackrock Depths |goto 50.50,62.91 > 10000 |c |noway |q 8646 |future
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.25
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto 39.79,63.66
step
talk Elder Skychaser##15577
|tip At the top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.65,47.10
step
Enter The Temple of Atal'Hakkar |goto The Temple of Atal'Hakkar/1 50.01,15.82 < 10000 |c |q 8713 |future
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 20
path	49.93,32.90	58.54,37.64
talk Elder Starsong##15593
|tip Open the world map to see an ant trail guiding you to your destination.
accept Starsong the Elder##8713 |goto 62.84,34.19
step
Leave The Temple of Atal'Hakkar |goto 62.84,34.19 > 10000 |c |noway |q 8647 |future
step
talk Zidormi##88206
Tell her _"Show me the Blasted Lands before the invasion."_
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 8647 |future
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto 54.28,49.50
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Elder Winterhoof##15576
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
talk Elder Moonlance##55228
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.16
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 52.25,60.03
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 64.74,79.34
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring/0 59.96,49.94
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto 53.23,56.75
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto Mount Hyjal/0 62.54,22.82
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto 26.69,62.05
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.35,52.85
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 8718 |future
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto 49.54,18.95
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 56.85,53.10
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 39.18,31.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto Northern Barrens/0 48.52,59.27
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto 68.36,69.96
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto Southern Barrens/0 41.59,47.45
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.49,53.24
step
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.99,23.34
step
Enter Maraudon: Earth Song Falls |goto Maraudon/2 0.00,0.00 < 10000 |c |q 8635 |future
|tip As soon as you go into the purple side, jump down to your left and take the portal to Inner Mauradon.
step
map Maraudon/2
path follow smart; loop off; ants curved; dist 20
path	28.98,46.45	33.57,60.86	36.59,57.21	44.48,60.22	44.48,54.20
path	47.20,50.75	50.65,53.76	49.79,63.01	52.08,67.10	46.06,67.31
path	41.61,68.17	40.75,74.63	44.48,76.35	45.05,84.30	46.77,92.26
talk Elder Splitrock##15556
|tip Open the world map to see an ant trail guiding you to your destination.
accept Splitrock the Elder##8635 |goto 51.08,93.55
step
Leave Maraudon: Earth Song Falls |goto 51.08,93.55 < 10000 |c |noway |q 8685 |future
step
talk Elder Mistwalker##15587
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto 76.71,37.89
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto Thousand Needles/0 46.35,51.02
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto 77.09,75.61
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.40,28.81
step
Enter Zul'Farrak |goto Zul'Farrak/0 56.61,91.02 < 10000 |c |q 8676 |future
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 25
path	57.96,77.85	58.82,62.80	51.79,41.29	41.46,51.83	33.43,43.66
talk Elder Wildmane##15578
|tip Open the world map to see an ant trail guiding you to your destination.
accept Wildmane the Elder##8676 |goto 34.29,39.14
step
Leave Zul'Farrak |goto 34.29,39.14 < 10000 |c |noway |q 8671 |future
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 37.24,79.06
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 29742 |future
step
talk Elder Sekhemi##55210
accept Sekhemi the Elder##29741 |goto Uldum/0 31.59,62.98
step
talk Elder Menkhaf##55211
accept Menkhaf the Elder##29742 |goto Uldum/0 65.52,18.67
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.17
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 8719 |future
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto 53.02,35.47
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 30.80,13.32
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto 59.09,65.63
step
talk Elder Arp##30364
accept Arp the Elder##13033 |goto 57.40,43.72
step
talk Elder Northal##30360
accept Northal the Elder##13016 |goto 33.80,34.36
step
Enter the Nexus |goto The Nexus/1 27.51,26.02 < 10000 |c |q 13021 |future
|tip It's the lowest portal.
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto 55.38,64.73
step
Leave the Nexus |goto 55.38,64.73 > 10000 |c |noway |q 13018 |future
step
talk Elder Sandrene##30362
accept Sandrene the Elder##13018 |goto Sholazar Basin/0 49.78,63.62
step
talk Elder Wanikaya##30365
accept Wanikaya the Elder##13024 |goto 63.80,49.02
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip You can only get to this NPC when your faction controls Wintergrasp.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
If your faction does not control Wintergrasp, click here to continue |confirm |or
step
Enter Azjol-Nerub |goto Azjol-Nerub/3 9.41,93.32 < 10000 |c |q 13022 |future
step
map  Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map  Azjol-Nerub/2
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/1 21.81,43.23
step
Leave Azjol-Nerub |goto 21.81,43.23 > 10000 |c |noway |q 13014 |future
step
talk Elder Morthie##30358
accept Morthie the Elder##13014 |goto Dragonblight/0 29.75,55.91
step
talk Elder Skywarden##30373
accept Skywarden the Elder##13031 |goto 35.10,48.35
step
talk Elder Thoim##30363
accept Thoim the Elder##13019 |goto 48.77,78.18
step
Enter Drak'Tharon Keep |goto Drak'Tharon Keep/1 29.41,81.02 < 1000 |c |q 13023 |future
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto 68.87,78.93
step
Leave Drak'Tharon Keep |goto 68.87,78.93 > 1000 |c |noway |q 13028 |future
step
talk Elder Graymane##30370
accept Graymane the Elder##13028 |goto The Storm Peaks/0 41.16,84.72
step
talk Elder Fargal##30359
accept Fargal the Elder##13015 |goto 28.88,73.71
step
Enter the building |goto 30.64,37.02 < 15 |walk
talk Elder Stonebeard##30375
|tip Inside the building.
accept Stonebeard the Elder##13020 |goto 31.26,37.61
step
Enter the Halls of Stone |goto Halls of Stone/1 34.41,36.27 < 1000 |c |q 13066 |future
step
map  Halls of Stone/1
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto 29.27,61.72
step
Leave the Halls of Stone |goto 29.27,61.72 > 10000 |c |noway |q 13032 |future
step
talk Elder Muraco##30374
accept Muraco the Elder##13032 |goto The Storm Peaks/0 64.59,51.34
step
Enter Gundrak |goto Gundrak/1 59.01,30.92 < 1000 |c |q 13065 |future
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto 45.34,61.08
step
Leave Gundrak |goto 45.34,61.08 > 10000 |c |q 13027 |noway |future
step
talk Elder Tauros##30369
accept Tauros the Elder##13027 |goto Zul'Drak/0 58.91,55.97
step
talk Elder Beldak##30357
accept Beldak the Elder##13013 |goto Grizzly Hills/0 60.57,27.67
step
talk Elder Whurain##30372
accept Whurain the Elder##13030 |goto 64.18,46.99
step
talk Elder Lunaro##30367
accept Lunaro the Elder##13025 |goto 80.53,37.11
step
Enter Utgarde Keep |goto Utgarde Keep/1 69.15,73.98 < 10000 |c |q 13017 |future
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto 47.32,69.46
step
Leave Utgarde Keep |goto Utgarde Keep/1 47.32,69.46 > 10000 |c |noway |q 13067 |future
step
Enter Utgarde Pinnacle |goto Utgarde Pinnacle/2 44.33,14.84 < 10000 |c |q 13067 |future
step
map Utgarde Pinnacle/2
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/1
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/2
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/1
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto 48.71,23.12
step
Leave Utgarde Pinnacle |goto Utgarde Pinnacle/2 44.33,14.84 > 10000 |c |noway |q 29735 |future
step
talk Elder Stonebrand##55217
|tip Inside the building.
accept Stonebrand the Elder##29735 |goto Deepholm/0 49.70,54.89
step
talk Elder Deepforge##55216
accept Deepforge the Elder##29734 |goto 27.70,69.18
step
talk Elder Naladu##176253
accept Naladu the Elder##63213 |goto Ember Court/0 61.84,59.82
|only if  Venthyr and covenantfeature("Covenant Unique") >= 1
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\A Coin of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={605},
patch='40302',
description="\nReceive a Coin of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-2
step
|achieve 605
step
_Congratulations!_
You Earned the "A Coin of Ancestry" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\5 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={606},
patch='30001',
description="\nReceive 5 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-6
step
|achieve 606
step
_Congratulations!_
You Earned the "5 Coins of Ancestry" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\10 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={607},
patch='30001',
description="\nReceive 10 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-11
step
|achieve 607
step
_Congratulations!_
You Earned the "10 Coins of Ancestry" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\25 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={608},
patch='30001',
description="\nReceive 25 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-35
step
|achieve 608
step
_Congratulations!_
You Earned the "25 Coins of Ancestry" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\50 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={609},
patch='30002',
description="\nReceive 50 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-63
step
|achieve 609
step
_Congratulations!_
You Earned the "50 Coins of Ancestry" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Cataclysm",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={6006},
patch='40300',
description="\nHonor the Elders of the following zones:\n\nElder Stonebrand, Temple of Earth\n"..
"Elder Menkhaf, Uldum\nElder Sekhemi, Uldum\nElder Firebeard, Twilight Highlands\n"..
"Elder Darkfeather, Twilight Highlands\nElder Windsong, Hyjal\nElder Evershade, "..
"Nordrassil\nElder Moonlance, Vashj'ir\nElder Deepforge, Deepholm",
},[[
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto Twilight Highlands/0 51.88,33.07
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto 50.91,70.46
step
talk Elder Moonlance##55228
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.16
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto Mount Hyjal/0 62.54,22.82
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto 26.69,62.05
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 29742 |future
step
talk Elder Sekhemi##55210
accept Sekhemi the Elder##29741 |goto Uldum/0 31.59,62.98
step
talk Elder Menkhaf##55211
accept Menkhaf the Elder##29742 |goto 65.52,18.67
step
talk Elder Stonebrand##55217
|tip Inside the building.
accept Stonebrand the Elder##29735 |goto Deepholm/0 49.70,54.89
step
talk Elder Deepforge##55216
accept Deepforge the Elder##29734 |goto 27.70,69.18
step
|achieve 6006
step
_Congratulations!_
You Earned the "Elders of Cataclysm" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Eastern Kingdoms",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={912},
patch='30008',
description="\nHonor the Elders of the following zones:\n\nElder Goldwell, Kharanos\n"..
"Elder Bellowrage, Blasted Lands\nElder Stormbrow, Goldshire\nElder Meadowrun, "..
"Western Plaguelands\nElder Starglade, Zul'Gurub\nElder Winterhoof, Booty Bay\n"..
"Elder Silvervein, Thelsamar\nElder Skychaser, Sentinel Hill\nElder Rumblerock, "..
"Burning Steppes\nElder Dawnstrider, Flame Crest\nElder Highpeak, The Hinterlands\n"..
"Elder Ironband, Searing Gorge\nElder Graveborn, Brill\nElder Obsidian, The Sepulcher"..
"\nElder Windrun, Eastern Plaguelands\nElder Snowcrown, Light's Hope Chapel\n"..
"Elder Moonstrike, Scholomance",
},[[
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.97,41.14
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 8652 |future
step
talk Elder Graveborn##15568
accept Graveborn the Elder##8652 |goto 61.86,53.91
step
Enter the cave |goto Western Plaguelands/0 64.69,38.62 < 15 |walk
Follow the path |goto 63.68,37.66 < 15 |walk
talk Elder Meadowrun##15602
|tip Inside the cave.
accept Meadowrun the Elder##8722 |goto 63.51,36.12
step
Leave the cave |goto 64.92,38.73 < 15 |only if walking
talk Elder Moonstrike##15594
|tip On top of the building.
accept Moonstrike the Elder##8714 |goto 69.19,73.45
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.74,54.56
step
Enter the building |goto 35.35,68.76 < 10 |walk
talk Elder Windrun##15592
|tip Inside the building.
accept Windrun the Elder##8688 |goto 35.58,68.82
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 50.00,48.05
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.54
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.91,49.91
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.28,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 52.38,23.93
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto 70.11,45.38
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.66
step
talk Elder Skychaser##15577
|tip At the top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.65,47.10
step
talk Zidormi##88206
Tell her _"Show me the Blasted Lands before the invasion."_
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 8647 |future
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto 54.28,49.50
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Elder Winterhoof##15576
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
|achieve 912
step
_Congratulations!_
You Earned the "Elders of Eastern Kingdoms" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Kalimdor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={911},
patch='30008',
description="\nHonor the Elders of the following zones:\n\nElder Runetotem, Razor Hill\n"..
"Elder Skygleam, Azshara\nElder Moonwarden, The Crossroads\nElder High "..
"Mountain, Vendetta Point\nElder Windtotem, Ratchet\nElder Bladeleaf, "..
"Dolanaar\nElder Starweave, Lor'danel\nElder Bloodhoof, Bloodhoof Village\n"..
"Elder Riversong, Astranaar\nElder Grimtotem, Feralas\nElder Mistwalker, "..
"Dire Maul\nElder Nightwind, Felwood\nElder Skyseern Freewind Post\nElder"..
" Morningdew, Fizzle and Pozzik's Speedbarge\nElder Ragetotem, Tanaris\n"..
"Elder Dreamseer, Gadgetzan\nElder Thunderhorn, Un'Goro\nElder Brightspear,"..
" Winterspring\nElder Stonespire, Everlook\nElder Primestone, Silithus\n"..
"Elder Bladesing, Cenarion Hold",
},[[
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 64.74,79.34
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring/0 59.96,49.94
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto 53.23,56.75
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.35,52.85
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 8721 |future
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto 49.54,18.95
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 56.85,53.10
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto Northern Barrens/0 48.52,59.27
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto 68.36,69.96
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto Southern Barrens/0 41.59,47.45
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.49,53.24
step
talk Elder Mistwalker##15587
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto 76.71,37.89
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto Thousand Needles/0 46.35,51.02
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto 77.09,75.61
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.40,28.81
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto 37.24,79.06
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.17
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 8719 |future
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto 53.02,35.47
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 30.80,13.32
step
|achieve 911
step
_Congratulations!_
You Earned the "Elders of Kalimdor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Northrend",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1396},
patch='30008',
description="\nHonor the Elders of the following zones:\n\nElder Sardis, Valiance Keep\n"..
"Elder Morthie, Star's Rest\nElder Arp, D.E.H.T.A\nElder Sandrene, Lakeside"..
" Landing\nElder Lunaro, Ruins of Tethys\nElder Tauros, Zim'Torga\nElder "..
"Graymane, K3\nElder Pamuya, Warsong Hold\nElder Skywarden, Agmar's Hammer\n"..
"Elder Beldak, Westfall Brigade\nElder Fargal, Frosthold\nElder Northal, "..
"Transitus Shield\nElder Wanikaya, Rainspeaker Rapids\nElder Bluewolf, "..
"Wintergrasp\nElder Thoim, Moa'ki Harbor\nElder Stonebeard, Bouldercrag's "..
"Refuge\nElder Whurain, Camp Oneqwah\nElder Muraco, Camp Tunka'lo",
},[[
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto 59.09,65.63
step
talk Elder Arp##30364
accept Arp the Elder##13033 |goto 57.40,43.72
step
talk Elder Northal##30360
accept Northal the Elder##13016 |goto 33.80,34.36
step
talk Elder Sandrene##30362
accept Sandrene the Elder##13018 |goto Sholazar Basin/0 49.78,63.62
step
talk Elder Wanikaya##30365
accept Wanikaya the Elder##13024 |goto 63.80,49.02
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip You can only get to this NPC when your faction controls Wintergrasp.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
If your faction does not control Wintergrasp, click here to continue |confirm |or
step
talk Elder Morthie##30358
accept Morthie the Elder##13014 |goto Dragonblight/0 29.75,55.91
step
talk Elder Skywarden##30373
accept Skywarden the Elder##13031 |goto 35.10,48.35
step
talk Elder Thoim##30363
accept Thoim the Elder##13019 |goto 48.77,78.18
step
talk Elder Graymane##30370
accept Graymane the Elder##13028 |goto The Storm Peaks/0 41.16,84.72
step
talk Elder Fargal##30359
accept Fargal the Elder##13015 |goto 28.88,73.71
step
Enter the building |goto 30.64,37.02 < 15 |walk
talk Elder Stonebeard##30375
|tip Inside the building.
accept Stonebeard the Elder##13020 |goto 31.26,37.61
step
talk Elder Muraco##30374
accept Muraco the Elder##13032 |goto The Storm Peaks/0 64.59,51.34
step
talk Elder Tauros##30369
accept Tauros the Elder##13027 |goto Zul'Drak/0 58.91,55.97
step
talk Elder Beldak##30357
accept Beldak the Elder##13013 |goto Grizzly Hills/0 60.57,27.67
step
talk Elder Whurain##30372
accept Whurain the Elder##13030 |goto 64.18,46.99
step
talk Elder Lunaro##30367
accept Lunaro the Elder##13025 |goto 80.53,37.11
step
|achieve 1396
step
_Congratulations!_
You Earned the "Elders of Northrend" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Dungeons",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={910},
patch='30002',
description="\nHonor the Elders of the following dungeons:\n\nElder Wildmane, Zul'Farrak\nElder "..
"Splitrock, Maraudon\nElder Morndeep, Blackrock Depths\nElder Jarten, Utgarde "..
"Keep\nElder Nurgen, Azjol-Nerub\nElder Ohanzee, Gundrak\nElder Chogan'gada, "..
"Utgarde Pinnacle\nElder Starsong, the Sunken Temple\nElder Stonefort, Blackrock"..
" Spire\nElder Farwhisper, Stratholme\nElder Igasho, The Nexus\nElder Kilias, "..
"Drak'Tharon Keep\nElder Yurauk, the Halls of Stone",
},[[
step
Enter Stratholme |goto Stratholme/1 68.01,88.52 < 10000 |c |q 8727 |future
step
map Stratholme/1
path follow smart; loop off; ants curved; dist 25
path	66.29,73.98	67.15,58.93	59.97,53.76	60.26,31.18	72.74,20.65
talk Elder Farwhisper##15607
|tip Open the world map to see an ant trail guiding you to your destination.
accept Farwhisper the Elder##8727 |goto 78.91,20.00
step
Leave Stratholme |goto 78.91,20.00 > 10000 |c |noway |q 8644 |future
step
Run up the ramp |goto Burning Steppes/14 65.92,41.83 < 10 |walk
Enter Lower Blackrock Spire |goto Blackrock Spire/4 37.91,43.32 < 10000 |c |q 8644 |future
|tip Inside Blackrock Mountain
step
map Blackrock Spire/3
path follow smart; loop off; ants curved; dist 20
path	38.59,48.17
map Blackrock Spire/4
path	42.47,44.95	48.35,41.94
map Blackrock Spire/2
path	59.97,43.01
talk Elder Stonefort##15560
|tip Open the world map to see an ant trail guiding you to your destination.
accept Stonefort the Elder##8644 |goto 61.84,39.79
step
map Blackrock Spire/2
path follow smart; loop off; ants curved; dist 20
path	59.97,43.01
map Blackrock Spire/4
path	42.47,44.95	48.35,41.94
map Blackrock Spire/3
path	38.59,48.17	37.73,40.86
Leave Lower Blackrock Spire |goto Burning Steppes/14 80.32,40.26 |c |noway |q 8619 |future
step
Run down the ramp |goto 69.89,40.46 < 10 |walk
Enter the building |goto Burning Steppes/16 55.35,84.18 < 10 |walk
Follow the path |goto 38.89,53.11 < 30 |only if walking
Enter Blackrock Depths |goto Blackrock Depths/1 34.71,77.82 < 10000 |c |q 8619 |future
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 20
path	38.45,75.70	48.78,72.26	51.36,67.96
talk Elder Morndeep##15549
|tip Open the world map to see an ant trail guiding you to your destination.
accept Morndeep the Elder##8619 |goto 50.50,62.91
step
Leave Blackrock Depths |goto 50.50,62.91 > 10000 |c |noway |q 8713 |future
step
Enter The Temple of Atal'Hakkar |goto The Temple of Atal'Hakkar/1 50.01,15.82 < 10000 |c |q 8713 |future
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 20
path	49.93,32.90	58.54,37.64
talk Elder Starsong##15593
|tip Open the world map to see an ant trail guiding you to your destination.
accept Starsong the Elder##8713 |goto 62.84,34.19
step
Leave The Temple of Atal'Hakkar |goto 62.84,34.19 > 10000 |c |noway |q 8635 |future
step
Enter Maraudon: Earth Song Falls |goto Maraudon/2 0.00,0.00 < 10000 |c |q 8635 |future
|tip As soon as you go into the purple side, jump down to your left and take the portal to Inner Mauradon.
step
map Maraudon/2
path follow smart; loop off; ants curved; dist 20
path	28.98,46.45	33.57,60.86	36.59,57.21	44.48,60.22	44.48,54.20
path	47.20,50.75	50.65,53.76	49.79,63.01	52.08,67.10	46.06,67.31
path	41.61,68.17	40.75,74.63	44.48,76.35	45.05,84.30	46.77,92.26
talk Elder Splitrock##15556
|tip Open the world map to see an ant trail guiding you to your destination.
accept Splitrock the Elder##8635 |goto 51.08,93.55
step
Leave Maraudon: Earth Song Falls |goto 51.08,93.55 < 10000 |c |noway |q 8676 |future
step
Enter Zul'Farrak |goto Zul'Farrak/0 56.61,91.02 < 10000 |c |q 8676 |future
step
map Zul'Farrak/0
path follow smart; loop off; ants curved; dist 25
path	57.96,77.85	58.82,62.80	51.79,41.29	41.46,51.83	33.43,43.66
talk Elder Wildmane##15578
|tip Open the world map to see an ant trail guiding you to your destination.
accept Wildmane the Elder##8676 |goto 34.29,39.14
step
Leave Zul'Farrak |goto 34.29,39.14 < 10000 |c |noway |q 13021 |future
step
Enter the Nexus |goto The Nexus/1 27.51,26.02 < 10000 |c |q 13021 |future
|tip It's the lowest portal.
step
map The Nexus/1
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto 55.38,64.73
step
Leave the Nexus |goto 55.38,64.73 > 10000 |c |noway |q 13022 |future
step
Enter Azjol-Nerub |goto Azjol-Nerub/3 9.41,93.32 < 10000 |c |q 13022 |future
step
map  Azjol-Nerub/3
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map  Azjol-Nerub/2
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/1 21.81,43.23
step
Leave Azjol-Nerub |goto 21.81,43.23 > 10000 |c |noway |q 13023 |future
step
Enter Drak'Tharon Keep |goto Drak'Tharon Keep/1 29.41,81.02 < 1000 |c |q 13023 |future
step
map Drak'Tharon Keep/1
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto 68.87,78.93
step
Leave Drak'Tharon Keep |goto 68.87,78.93 > 1000 |c |noway |q 13066 |future
step
Enter the Halls of Stone |goto Halls of Stone/1 34.41,36.27 < 1000 |c |q 13066 |future
step
map  Halls of Stone/1
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto 29.27,61.72
step
Leave the Halls of Stone |goto 29.27,61.72 > 10000 |c |noway |q 13065 |future
step
Enter Gundrak |goto Gundrak/1 59.01,30.92 < 1000 |c |q 13065 |future
step
map Gundrak/1
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto 45.34,61.08
step
Leave Gundrak |goto 45.34,61.08 > 10000 |c |q 13017 |noway |future
step
Enter Utgarde Keep |goto Utgarde Keep/1 69.15,73.98 < 10000 |c |q 13017 |future
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto 47.32,69.46
step
Leave Utgarde Keep |goto Utgarde Keep/1 47.32,69.46 > 10000 |c |noway |q 13067 |future
step
Enter Utgarde Pinnacle |goto Utgarde Pinnacle/2 44.33,14.84 < 10000 |c |q 13067 |future
step
map Utgarde Pinnacle/2
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/1
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/2
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/1
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto 48.71,23.12
step
Leave Utgarde Pinnacle |goto Utgarde Pinnacle/2 44.33,14.84 > 10000 |c |noway |achieve 910 |future
step
|achieve 910
step
_Congratulations!_
You Earned the "Elders of the Dungeons" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Alliance",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={915},
patch='30003',
description="\nHonor the Elders of the following zones:\n\nElder Bladeswift, Darnassus\n"..
"Elder Bronzebeard, Ironforge\nElder Hammershout, Stormwind",
},[[
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.25
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.06
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 8718 |future
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 39.18,31.85
step
|achieve 915
step
_Congratulations!_
You Earned the "Elders of the Alliance" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Horde",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={914},
patch='30003',
description="\nHonor the Elders of the following zones:\n\nElder Darkhorn, Orgrimmar\n"..
"Elder Wheathoof, Thunder Bluff\nElder Darkcore, Undercity",
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 8648 |future
step
talk Elder Darkcore##15564
|tip Inside the entrance area building, before the Undercity elevators.
accept Darkcore the Elder##8648 |goto Undercity/0 66.64,38.23
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 52.25,60.03
step
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.99,23.34
step
|achieve 914
step
_Congratulations!_
You Earned the "Elders of the Horde" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={937},
patch='30003',
description="\nComplete the Elune's Blessing quest by defeating Omen.",
},[[
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade/0 53.60,35.40
step
kill Omen##15467
|tip This boss will require a raid group.
|tip Stand in the pillar of light after it dies.
|tip If it was already killed, quickly jump in the pillar of light before it disappears.
Gain Elune's Blessing |q 8868/1 |goto 64.31,62.67
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto 53.60,35.40
step
|achieve 937
step
_Congratulations!_
You Earned the "Elune's Blessing" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1552},
patch='30003',
description="\nShoot off 10 Festival Firecrackers in 30 seconds or less.",
},[[
step
talk Lunar Festival Vendor##47897
buy 10 Festival Firecracker##21747 |goto Orgrimmar/1 48.69,57.01 |achieve 1552 |future
step
use the Festival Firecracker##21747
|tip Spam it quickly until you use all 10.
|tip You will need to target the ground after using it.
|achieve 1552 |goto 48.69,57.01
step
_Congratulations!_
You Earned the "Frenzied Firecracker" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1281},
patch='30002',
description="\nShoot off 10 Red Rocket Clusters in 25 seconds or less.",
},[[
step
talk Lunar Festival Vendor##47897
buy 10 Red Rocket Cluster##21576 |goto Orgrimmar/1 48.69,57.01 |achieve 1281 |future
step
use the Red Rocket Cluster##21576
|tip Spam it quickly until you use all 10.
|achieve 1281 |goto 48.69,57.01
step
_Congratulations!_
You Earned the "The Rocket's Red Glare" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={626},
patch='30008',
description="\nPurchase a festive pant suit or festive dress with Coins of Ancestry.",
},[[
step
collect 5 Coin of Ancestry##21100 |achieve 626 |future
|tip Use the "Lunar Festival Optimized Elders Path" event guide to accomplish this.
step
talk Valadar Starsong##15864
Purchase any Pant Suit or Dress |achieve 626 |goto Moonglade/0 53.63,35.41
step
_Congratulations!_
You Earned the "Lunar Festival Finery" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\To Honor One's Elders",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={913},
patch='30001',
description="\nComplete the following Lunar Festival achievements:\n\nElders of Cataclysm\n"..
"Elders of Eastern Kingdoms\nElders of Kalimdor\nElders of the Dungeons\n"..
"Elders of the Horde\nElders of the Alliance\nElders of Northrend\n50 Coins of "..
"Ancestry\nLunar Festival Finery\nThe Rocket's Red Glare\nFrenzied Firecracker\n"..
"Elune's Blessing",
},[[
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of Cataclysm"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of Eastern Kingdoms"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of Kalimdor"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of the Dungeons"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of Northrend"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of the Alliance"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elders of the Horde"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker"
step
|achieve 913
step
_Congratulations!_
You Earned the "To Honor One's Elders" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
description="\nThis guide section will walk you through completing the quests for the Midsummer Fire Festival event.",
},[[
step
talk Innkeeper Gryshka##6929
home Orgrimmar |goto Orgrimmar/1 53.63,78.77
step
talk Flame Eater##25994
accept Playing with Fire##11915 |goto Durotar/0 52.41,47.32
step
talk Orc Commoner##19175
accept The Spinner of Summer Tales##11971 |goto Orgrimmar/1 51.54,75.15
step
talk Festival Talespinner##16818
turnin The Spinner of Summer Tales##11971 |goto 47.74,38.19
accept Incense for the Festival Scorchlings##11966 |goto 47.74,38.19
step
talk Master Flame Eater##26113
turnin Playing with Fire##11915 |goto 46.60,37.24
accept Torch Tossing##11922 |goto 46.60,37.24
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit #8# Braziers |q 11922/1 |goto 46.29,36.96
step
talk Master Flame Eater##26113
turnin Torch Tossing##11922 |goto 46.60,37.24
accept Torch Catching##11923 |goto 46.60,37.24
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 4 times in a row without it hitting the ground.
Catch 4 Torches in a Row |q 11923/1 |goto 46.42,37.19
step
talk Master Flame Eater##26113
turnin Torch Catching##11923 |goto 46.60,37.24
step
talk Earthen Ring Elder##26221
accept Unusual Activity##11886 |goto 47.26,37.89
step
talk Festival Scorchling##26520
|tip Under the tent.
turnin Incense for the Festival Scorchlings##11966 |goto Ashenvale/0 51.35,66.22
step
Kill Twilight enemies around this area
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale/0 15.58,19.99
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin Unusual Activity##11886 |goto 14.49,19.22
accept An Innocent Disguise##11891 |goto 14.49,19.22
step
use the Orb of the Crawler##35237
Gain the Crab Disguise Buff |havebuff spell:46337 |q 11891 |goto 9.37,12.71
step
Watch the dialogue
Listen to the Plan of the Twilight Cultists |q 11891/1 |goto 9.37,12.71
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin An Innocent Disguise##11891 |goto 9.37,12.71
accept Inform the Elder##12012 |goto 9.37,12.71
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##12012 |goto Orgrimmar/1 47.26,37.88
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
description="\nThis guide section will walk you through completing the dailies for the Midsummer Fire Festival event.",
},[[
step
label "Begin_Daily_Quests"
talk Master Flame Eater##26113
accept More Torch Tossing##11926 |goto Orgrimmar/1 46.60,37.25
accept More Torch Catching##11925 |goto 46.60,37.25
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 20 Braziers |q 11926/1 |goto 46.24,36.33
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 10 times in a row without it hitting the ground.
Catch 10 Torches in a Row |q 11925/1 |goto 46.16,36.90
step
talk Master Flame Eater##26113
turnin More Torch Tossing##11926 |goto 46.60,37.25
turnin More Torch Catching##11925 |goto 46.60,37.25
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto 47.26,37.88
accept Striking Back##11947 |goto 47.26,37.88
accept Striking Back##11948 |goto 47.26,37.88
accept Striking Back##11952 |goto 47.26,37.88
accept Striking Back##11953 |goto 47.26,37.88
accept Striking Back##11954 |goto 47.26,37.88
step
click Ice Stone##188149
|tip Inside the cave. |only if haveq(11952)
Choose _"Lay your hand on the stone"_
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale/0 9.62,12.20
|only if haveq(11917)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace/0 40.35,30.27
|only if haveq(11947)
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 11953
|only if haveq(11953)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Lieutenant##26215 |q 11953/1 |goto 68.88,20.44 |only if haveq(11953)
|only if haveq(11953)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Northern Stranglethorn/0 21.31,40.95
|only if haveq(11948)
step
Enter the cave |goto Searing Gorge/0 21.83,36.18 < 20 |walk
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Frigid Lieutenant##26214 |q 11952/1 |goto 16.02,36.86
|only if haveq(11952)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.64,47.09 |only if haveq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11947 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11948 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11952 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11953 |goto Orgrimmar/1 47.26,37.88
turnin Striking Back##11954 |goto Orgrimmar/1 47.26,37.88
step
You have completed all available dailies
|tip This guide will reset when more become available.
'|complete not completedq(11926,11925,11917,11947,11948,11952,11953,11954) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
description="\nThis guide section will walk you through finding all of the bonfires for the Midsummer Fire Festival event.",
},[[
step
Complete the "Do It the Azerite Way" Quest |q 55521 |future |or
|tip This quest is required to access the fires of Hyjal.
Click Here to Load the "Essential Empowerment" Leveling Guide |confirm |loadguide "Leveling Guides\\Battle for Azeroth (10-50)\\Heart of Azeroth\\Essential Empowerment"
step
talk Stranglethorn Vale Flame Keeper##25920
accept Honor the Flame##11837 |goto The Cape of Stranglethorn/0 50.40,70.38
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11761 |goto 51.82,67.44
step
talk Northern Stranglethorn Vale Flame Keeper##51582
accept Honor the Flame##28924 |goto Northern Stranglethorn/0 40.58,50.94
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28910 |goto 51.62,63.23
step
talk Zidormi##88206
Tell her: "_Show me the Blasted Lands before the invasion_"
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 11737 |future
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11737 |goto 55.17,14.98
step
talk Blasted Lands Flame Keeper##51603
accept Honor the Flame##28930 |goto 46.22,13.79
step
talk Swamp of Sorrows Flame Keeper##25941
accept Honor the Flame##11857 |goto Swamp of Sorrows/0 76.33,13.77
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28916 |goto 70.26,14.75
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11743 |goto Duskwood/0 73.48,54.93
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11581 |goto Westfall/0 44.93,62.41
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11745 |goto Elwynn Forest/0 43.21,62.96
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11751 |goto Redridge Mountains/0 24.69,53.77
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11739 |goto Burning Steppes/0 68.46,60.25
step
talk Burning Steppes Flame Keeper##25927
accept Honor the Flame##11844 |goto 51.11,29.20
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28912 |goto Badlands/0 18.77,55.91
step
talk Badlands Flame Keeper##25925
accept Honor the Flame##11842 |goto 23.09,37.43
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11749 |goto Loch Modan/0 32.34,40.33
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11742 |goto Dun Morogh/0 53.75,44.83
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11757 |goto Wetlands/0 13.32,47.23
step
talk Twilight Highlands Flame Keeper##51651
accept Honor the Flame##28946 |goto Twilight Highlands/0 53.12,46.18
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28943 |goto 47.23,28.35
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 11732 |future
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11732 |goto 44.59,46.03
step
talk Arathi Flame Keeper##25923
accept Honor the Flame##11840 |goto 69.36,42.57
step
talk Hillsbrad Flame Keeper##25935
accept Honor the Flame##11853 |goto Hillsbrad Foothills/0 54.66,50.08
step
talk Silverpine Forest Flame Keeper##25939
accept Honor the Flame##11584 |goto Silverpine Forest/0 49.63,38.21
step
talk Eversong Woods Flame Keeper##25931
accept Honor the Flame##11848 |goto Eversong Woods/0 46.40,50.60
step
talk Ghostlands Flame Keeper##25933
accept Honor the Flame##11850 |goto Ghostlands/0 46.90,26.34
step
talk The Hinterlands Flame Keeper##25944
accept Honor the Flame##11860 |goto The Hinterlands/0 76.63,74.97
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11755 |goto 14.52,49.91
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11756 |goto Western Plaguelands/0 43.55,82.49
step
talk Western Plaguelands Flame Keeper##51604
accept Honor the Flame##28931 |goto 29.16,57.34
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11862 |future
step
talk Tirisfal Glades Flame Keeper##25946
accept Honor the Flame##11862 |goto 57.04,51.84
step
talk Mulgore Flame Keeper##25936
accept Honor the Flame##11852  |goto Mulgore/0 51.82,59.25
step
talk Southern Barrens Flame Keeper##51587
accept Honor the Flame##28927 |goto Southern Barrens/0 40.85,67.79
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28913 |goto 48.23,72.40
step
talk Dustwallow Marsh Flame Keeper##25930
accept Honor the Flame##11847 |goto Dustwallow Marsh/0 33.43,30.92
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11744 |goto 62.00,40.50
step
talk Tanaris Flame Keeper##25921
accept Honor the Flame##11838 |goto Tanaris/0 49.82,27.87
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11762 |goto 52.68,30.11
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28921 |goto Un'Goro Crater/0 59.91,62.83
step
talk Un'Goro Flame Keeper##51607
accept Honor the Flame##28933 |goto 56.58,65.93
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 28949 |future
step
talk Uldum Flame Keeper##51652
accept Honor the Flame##28949 |goto Uldum/0 53.15,34.54
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28947 |goto 53.40,31.95
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 11836 |future
step
talk Silithus Flame Keeper##25919
accept Honor the Flame##11836 |goto 50.85,41.30
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11760 |goto 60.55,33.27
step
talk Feralas Flame Keeper##25932
accept Honor the Flame##11849 |goto Feralas/0 72.38,47.80
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11746 |goto 46.68,43.66
step
talk Desolace Flame Keeper##25928
accept Honor the Flame##11845 |goto Desolace/0 26.14,76.91
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11741 |goto 65.87,17.02
step
talk Stonetalon Flame Keeper##25940
accept Honor the Flame##11856 |goto Stonetalon Mountains/0 52.91,62.45
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28915 |goto 49.47,51.19
step
talk The Northern Barrens Flame Keeper##25943
accept Honor the Flame##11859 |goto Northern Barrens/0 49.96,54.62
step
talk Durotar Flame Keeper##25929
accept Honor the Flame##11846 |goto Durotar/0 52.24,47.40
step
talk Azshara Flame Keeper##51575
accept Honor the Flame##28923 |goto Azshara/0 60.43,53.51
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal/0 62.83,22.71
|only if completedq(55521)
step
talk Winterspring Flame Keeper##25922
accept Honor the Flame##11839 |goto Winterspring/0 58.14,47.51
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11763 |goto 61.34,47.11
step
talk Ashenvale Flame Keeper##25884
accept Honor the Flame##11841 |goto Ashenvale/0 51.35,66.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11734 |goto 86.78,41.59
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase("Old Darnassus") |goto Darkshore/0 48.86,24.46 |q 11740 |future
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11740 |goto 48.87,22.60
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11753 |goto Teldrassil/0 54.76,52.75
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11735 |goto Azuremyst Isle/0 44.69,52.61
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11738 |goto Bloodmyst Isle/0 55.94,68.39
step
talk Vashj'ir Flame Guardian##51697
|tip Inside the underwater cave.
accept Honor the Flame##29031 |goto Shimmering Expanse/0 49.35,41.99
step
click Earthen Ring Bonfire##208188
|tip Inside the underwater cave.
turnin Honor the Flame##29031 |goto 49.33,41.93
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm/0 49.39,51.33
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29036 |goto 49.37,51.39
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11747 |goto Hellfire Peninsula/0 62.02,58.43
step
talk Hellfire Peninsula Flame Keeper##25934
accept Honor the Flame##11851 |goto 57.12,42.04
step
talk Netherstorm Flame Keeper##25918
accept Honor the Flame##11835 |goto Netherstorm/0 32.11,68.32
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11759 |goto 31.09,62.76
step
talk Blade's Edge Flame Keeper##25926
accept Honor the Flame##11843 |goto Blade's Edge Mountains/0 49.92,58.66
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11736 |goto 41.76,65.96
step
talk Zangarmarsh Flame Keeper##25947
accept Honor the Flame##11863 |goto Zangarmarsh/0 35.44,51.62
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11758 |goto 68.63,52.00
step
talk Nagrand Flame Keeper##25937
accept Honor the Flame##11854 |goto Nagrand/0 50.91,34.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11750 |goto Nagrand 49.7,69.7
step
talk Terokkar Forest Flame Keeper##25942
accept Honor the Flame##11858 |goto Terokkar Forest/0 52.0,42.9
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11754 |goto 54.2,55.5
step
talk Shadowmoon Valley Flame Keeper##25938
accept Honor the Flame##11855 |goto Shadowmoon Valley/0 33.4,30.5
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11752 |goto 39.5,54.4
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13440 |goto Borean Tundra/0 55.2,20.2
step
talk Borean Tundra Flame Keeper##32809
accept Honor the Flame##13493 |goto 51.13,11.53
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13442 |goto Sholazar Basin/0 47.9,66.2
step
talk Sholazar Basin Flame Keeper##32810
accept Honor the Flame##13494 |goto 47.20,61.80
step
talk Dragonblight Flame Keeper##32811
accept Honor the Flame##13495 |goto Dragonblight/0 38.26,48.47
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13443 |goto 75.1,43.8
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13447 |goto Crystalsong Forest/0 77.6,75.2
step
talk Crystalsong Forest Flame Keeper##32815
accept Honor the Flame##13499 |goto 80.0,53.2
step
talk Storm Peaks Flame Keeper##32814
accept Honor the Flame##13498 |goto The Storm Peaks/0 40.27,85.35
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13446 |goto The Storm Peaks/0 41.4,87.0
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13449 |goto Zul'Drak/0 40.5,61.0
step
talk Zul'Drak Flame Keeper##32816
accept Honor the Flame##13500 |goto Zul'Drak/0 43.38,71.74
step
talk Grizzly Hills Flame Keeper##32813
accept Honor the Flame##13497 |goto Grizzly Hills/0 19.32,61.16
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13445 |goto Grizzly Hills/0 34.2,60.6
step
talk Howling Fjord Flame Keeper##32812
accept Honor the Flame##13496 |goto Howling Fjord/0 48.62,13.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13444 |goto Howling Fjord/0 57.8,15.8
step
talk Jade Forest Flame Guardian##69529
accept Honor the Flame##32498 |goto The Jade Forest/0 47.18,47.19
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32498 |goto 47.2,47.2
step
talk Krasarang Wilds Flame Guardian##69533
accept Honor the Flame##32499 |goto Krasarang Wilds/0 74.0,9.5
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32499 |goto 74.0,9.6
step
talk Valley of the Four Winds Flame Guardian##69550
accept Honor the Flame##32502 |goto Valley of the Four Winds/0 51.82,51.33
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32502 |goto 51.8,51.4
step
talk Dread Wastes Flame Guardian##69522
accept Honor the Flame##32497 |goto Dread Wastes/0 56.07,69.57
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32497 |goto 56.1,69.5
step
talk Townlong Steppes Flame Guardian##69536
accept Honor the Flame##32501 |goto Townlong Steppes/0 71.5,56.3
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32501 |goto 71.5,56.3
step
talk Kun-Lai Summit Flame Guardian##69535
accept Honor the Flame##32500 |goto Kun-Lai Summit/0 71.15,90.87
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32500 |goto 71.1,90.9
step
talk Zidormi##163463
|tip She is on the platform next to the Cloud Serpent Mishi.
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Travel to the Past |complete ZGV.InPhase("Old Vale") |goto Vale of Eternal Blossoms New/0 80.97,29.48 |q 32509 |future
step
talk Vale of Eternal Blossoms Flame Keeper##69551
accept Honor the Flame##32509 |goto Vale of Eternal Blossoms/0 77.76,34.01
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##32503 |goto 79.7,37.1
step
talk Frostfire Ridge Flame Keeper##114499
accept Honor the Flame##44580 |goto Frostfire Ridge/0 72.61,65.08
step
talk Gorgrond Flame Guardian##114491
accept Honor the Flame##44573 |goto Gorgrond/0 43.92,93.78
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44573 |goto 43.92,93.83
step
click Alliance Bonfire##259871
accept Desecrate this Fire!##44582 |goto Shadowmoon Valley D/0 42.72,35.88
step
talk Spires of Arak Flame Guardian##114488
accept Honor the Flame##44570 |goto Spires of Arak/0 48.01,44.72
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44570 |goto 48.03,44.76
step
talk Talador Flame Guardian##114489
accept Honor the Flame##44571 |goto Talador/0 43.46,71.81
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44571 |goto 43.51,71.81
step
talk Nagrand Flame Guardian##114490
accept Honor the Flame##44572 |goto Nagrand D/0 80.54,47.71
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44572 |goto 80.58,47.67
step
talk Azsuna Flame Guardian##114492
accept Honor the Flame##44574 |goto Azsuna/0 48.26,29.69
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44574 |goto 48.29,29.66
step
talk Val'Sharah Flame Guardian##114493
accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.94
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44575 |goto 44.85,57.90
step
click Alliance Bonfire##259927
accept Desecrate this Fire!##44624 |goto Suramar/0 22.90,58.26
step
talk Suramar Flame Keeper##114518
accept Honor the Flame##44614 |goto 30.47,45.38
step
talk Highmountain Flame Guardian##114494
accept Honor the Flame##44576 |goto Highmountain/0 55.51,84.45
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44576 |goto 55.55,84.45
step
talk Stormheim Flame Guardian##114496
accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.14
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44577 |goto 32.51,42.09
step
Jump down here |goto Zuldazar/0 51.26,45.18 < 15 |only if walking
Jump down here |goto 52.32,48.58 < 15 |only if walking
talk Zuldazar Flame Keeper##148944
accept Honor the Flame##54745 |goto 53.31,48.11
step
talk Nazmir Flame Keeper##148950
accept Honor the Flame##54747 |goto Nazmir/0 40.03,74.30
step
talk Vol'dun Flame Keeper##148986
accept Honor the Flame##54750 |goto Vol'dun/0 56.01,47.76
step
Jump down carefully here |goto Tiragarde Sound/0 72.77,52.47 < 10 |only if walking
Cross the water |goto 75.21,53.19 < 15 |only if walking
click Alliance Bonfire
accept Desecrate this Fire!##54736 |goto 76.34,49.83
step
Follow the path |goto Drustvar/0 37.65,32.38 < 30 |only if walking
Continue up the path |goto 40.53,43.37 < 30 |only if walking
click Alliance Bonfire
accept Desecrate this Fire!##54742 |goto 40.18,47.30
step
Follow the path |goto Stormsong Valley/0 40.14,49.41 < 30 |only if walking
click Alliance Bonfire
accept Desecrate this Fire!##54739 |goto 36.02,51.48
step
_Congratulations!_
You Earned "The Flame Keeper" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Midsummer Achievement Guide",{
author="support@zygorguides.com",
achieveid={271,263,1036,1037,1145},
patch='30002',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"The","Flame","Warden","Ice","the","Frost","Lord","Burning","Hot","Pole","Dance","King","of","the","Fire","Festival","Torch","Juggler","Fires","of","Azeroth","Desecration","of","the","Alliance"},
description="\nThis guide section will walk you through completing the Achievements for the Midsummer Fire Festival event: - Ice the Frost Lord - Burning Hot Pole Dance - King of the Fire Festival - The Fires of Azeroth - Desecration of the Alliance",
},[[
step
talk Midsummer Merchant##26124
|tip If you can't buy these be sure to complete the quests Torch Tossing and More Torch Tossing in our Midsummer Fire Festival Main Questline and Dailies guides.
buy 15 Juggling Torch##34599 |goto Orgrimmar 47.6,37.8
|only if not achieved(272)
step
|use the Juggling Torch##34599
|tip You will need to juggle torches 40 times.
|tip Place the Juggling Torches on your action bar.
|tip Place the marker over your character and spam toss as fast as you can.
|tip You must juggle them all in under 15 seconds.
Earn the "Torch Juggler" Achievement |achieve 272 |goto Dalaran 36.8,44.1
step
kill Lord Ahune##25740
|tip Open up your Dungeon Finder [I], and queue for The Frost Lord Ahune battle.
|tip You will need to be high enough to enter the dungeon queue.
Earn the "Ice the Frost Lord" Achievement |achieve 263
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 9332 |future
step
talk Midsummer Merchant##26124
buy 1 Mantle of the Fire Festival##23324 |goto Undercity 68.1,11.2
step
talk Midsummer Merchant##26124
buy 1 Vestment of Summer##34685 |goto 68.1,11.2
step
talk Midsummer Merchant##26124
buy 1 Sandals of Summer##34683 |goto 68.1,11.2
step
Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
Equip your Vestment of Summer |use Vestment of Summer##34685
Equip your Sandals of Summer |use Sandals of Summer##34683
click Ribbon Pole##181605
|tip It looks like a tall metal pole with a small fire on top of it
|tip Let your character spin around for 1 minute.
Earn the "Burning Hot Pole Dance" Achievement |achieve 271 |goto Undercity 68.0,14.4
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 9332 |future
step
click Flame of Darnassus##181334
collect Flame of Darnassus##23184 |n
|use the Flame of Darnassus##23184
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Darnassus's Flame##9332 |goto Darnassus 64.0,47.1
step
click Flame of the Exodar##188128
collect Flame of the Exodar##35569 |n
|use the Flame of the Exodar##35569
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing the Exodar's Flame##11933 |goto The Exodar 41.6,26.9
step
click Flame of Stormwind##181332
collect Flame of Stormwind##23182 |n
|use the Flame of Stormwind##23182
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Stormwind's Flame##9330 |goto Stormwind City 50.0,72.6
step
click Flame of Ironforge##181333
collect Flame of Ironforge##23183 |n
|use the Flame of Ironforge##23183
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Ironforge's Flame##9331 |goto Ironforge 64.3,26.0
step
talk Festival Talespinner##16818
turnin Stealing Darnassus's Flame##9332 |goto Orgrimmar 47.8,38.6
turnin Stealing the Exodar's Flame##11933 |goto 47.8,38.6
turnin Stealing Stormwind's Flame##9330 |goto 47.8,38.6
turnin Stealing Ironforge's Flame##9331 |goto 47.8,38.6
accept A Thief's Reward##9339
Earn the "King of the Fire Festival" Achievement |achieve 1145
step
Load the "Flame Keeper of Eastern Kingdoms" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Eastern Kingdoms"
|tip Click the line above to load the guide.
Earn the "Flame Keeper of Eastern Kingdoms" Achievement |achieve 1025
step
Load the "Flame Keeper of Kalimdor" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Kalimdor"
|tip Click the line above to load the guide.
Earn the "Flame Keeper of Kalimdor" Achievement |achieve 1026
step
Load the "Flame Keeper of Outland" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Outland"
|tip Click the line above to load the guide.
Earn the "Flame Keeper of Outland" Achievement |achieve 1027
step
Load the "Flame Keeper of Northrend" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Northrend"
|tip Click the line above to load the guide.
Earn the "Flame Keeper of Northrend" Achievement |achieve 6009
step
Load the "Flame Keeper of Cataclysm" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Cataclysm"
|tip Click the line above to load the guide.
Earn the "Flame Keeper of Cataclysm" Achievement |achieve 6012
step
Earn the "Fires of Azeroth" Achievement |achieve 1036
step
Load the "Extinguishing Eastern Kingdoms" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms"
|tip Click the line above to load the guide.
Earn the "Extinguishing Eastern Kingdoms" Achievement |achieve 1031
step
Load the "Extinguishing Kalimdor" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor"
|tip Click the line above to load the guide.
Earn the "Extinguishing Kalimdor" Achievement |achieve 1032
step
Load the "Extinguishing Outland" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland"
|tip Click the line above to load the guide.
Earn the "Extinguishing Outland" Achievement |achieve 1033
step
Load the "Extinguishing Northrend" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend"
|tip Click the line above to load the guide.
Earn the "Extinguishing Northrend" Achievement |achieve 6010
step
Load the "Extinguishing the Cataclysm" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm"
|tip Click the line above to load the guide.
Earn the "Extinguishing the Cataclysm" Achievement |achieve 6014
step
Earn the "Desecration of the Alliance" Achievement |achieve 1037
step
_Congratulations!_
You Earned "The Flame Keeper" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms",{
achieveid={1031},
patch='30008',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Eastern","Kingdoms"},
description="\nThis guide will walk you through obtaining the Extinguishing Eastern Kingdoms achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Eastern Kingdoms"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor",{
achieveid={1032},
patch='30200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Kalimdor"},
description="\nThis guide will walk you through obtaining the Extinguishing Kalimdor achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland",{
achieveid={1033},
patch='30200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Outland"},
description="\nThis guide will walk you through obtaining the Extinguishing Outland achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Outland"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend",{
achieveid={6010},
patch='40300',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Northrend"},
description="\nThis guide will walk you through obtaining the Extinguishing Northrend achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm",{
achieveid={6014},
patch='40300',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","the","Cataclysm"},
description="\nThis guide will walk you through obtaining the Extinguishing the Cataclysm achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Cataclysm"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Pandaria",{
achieveid={8043},
patch='50200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Pandaria"},
description="\nThis guide will walk you through obtaining the Extinguishing Pandaria achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Pandaria"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Draenor",{
achieveid={11277},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","Draenor"},
description="\nThis guide will walk you through obtaining the Extinguishing Draenor achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Draenor"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Broken Isles",{
achieveid={11279},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","the","Broken","Isles"},
description="\nThis guide will walk you through obtaining the Extinguishing the Broken Isles achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of the Broken Isles" 6-6
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kul Tiras",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={13342},
patch='80105',
description="\nThis guide section will walk you through completing the Extinguishing Kul Tiras achievement for the Midsummer Fire Festival event.",
},[[
step
Jump down carefully here |goto Tiragarde Sound/0 72.77,52.47 < 10 |only if walking
Cross the water |goto 75.21,53.19 < 15 |only if walking
click Alliance Bonfire
accept Desecrate this Fire!##54736 |goto 76.34,49.83
step
Follow the path |goto Drustvar/0 37.65,32.38 < 30 |only if walking
Continue up the path |goto 40.53,43.37 < 30 |only if walking
click Alliance Bonfire
accept Desecrate this Fire!##54742 |goto 40.18,47.30
step
Follow the path |goto Stormsong Valley/0 40.14,49.41 < 30 |only if walking
click Alliance Bonfire
accept Desecrate this Fire!##54739 |goto 36.02,51.48
step
_Congratulations!_
You Earned the "Extinguishing Kul Tiras" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Eastern Kingdoms",{
achieveid={1025},
patch='30200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","Eastern","Kingdoms"},
description="\nThis guide will walk you through obtaining the Flame Keeper of Eastern Kingdoms achievement.",
},[[
step
talk Stranglethorn Vale Flame Keeper##25920
accept Honor the Flame##11837 |goto The Cape of Stranglethorn/0 50.40,70.38
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11761 |goto 51.82,67.44
step
talk Northern Stranglethorn Vale Flame Keeper##51582
accept Honor the Flame##28924 |goto Northern Stranglethorn/0 40.58,50.94
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28910 |goto 51.62,63.23
step
talk Zidormi##88206
Tell her: "_Show me the Blasted Lands before the invasion_"
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 11737 |future
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11737 |goto 55.17,14.98
step
talk Blasted Lands Flame Keeper##51603
accept Honor the Flame##28930 |goto 46.22,13.79
step
talk Swamp of Sorrows Flame Keeper##25941
accept Honor the Flame##11857 |goto Swamp of Sorrows/0 76.33,13.77
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28916 |goto 70.26,14.75
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11743 |goto Duskwood/0 73.48,54.93
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11581 |goto Westfall/0 44.93,62.41
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11745 |goto Elwynn Forest/0 43.21,62.96
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11751 |goto Redridge Mountains/0 24.69,53.77
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11739 |goto Burning Steppes/0 68.46,60.25
step
talk Burning Steppes Flame Keeper##25927
accept Honor the Flame##11844 |goto 51.11,29.20
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28912 |goto Badlands/0 18.77,55.91
step
talk Badlands Flame Keeper##25925
accept Honor the Flame##11842 |goto 23.09,37.43
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11749 |goto Loch Modan/0 32.34,40.33
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11742 |goto Dun Morogh/0 53.75,44.83
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11757 |goto Wetlands/0 13.32,47.23
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 11732 |future
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11732 |goto 44.59,46.03
step
talk Arathi Flame Keeper##25923
accept Honor the Flame##11840 |goto 69.36,42.57
step
talk Hillsbrad Flame Keeper##25935
accept Honor the Flame##11853 |goto Hillsbrad Foothills/0 54.66,50.08
step
talk Silverpine Forest Flame Keeper##25939
accept Honor the Flame##11584 |goto Silverpine Forest/0 49.63,38.21
step
talk Eversong Woods Flame Keeper##25931
accept Honor the Flame##11848 |goto Eversong Woods/0 46.40,50.60
step
talk Ghostlands Flame Keeper##25933
accept Honor the Flame##11850 |goto Ghostlands/0 46.90,26.34
step
talk The Hinterlands Flame Keeper##25944
accept Honor the Flame##11860 |goto The Hinterlands/0 76.63,74.97
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11755 |goto 14.52,49.91
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11756 |goto Western Plaguelands/0 43.55,82.49
step
talk Western Plaguelands Flame Keeper##51604
accept Honor the Flame##28931 |goto 29.16,57.34
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11862 |future
step
talk Tirisfal Glades Flame Keeper##25946
accept Honor the Flame##11862 |goto 57.04,51.84
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Kalimdor",{
achieveid={1026},
patch='30200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","Kalimdor"},
description="\nThis guide will walk you through obtaining the Flame Keeper of Kalimdor achievement.",
},[[
step
talk Mulgore Flame Keeper##25936
accept Honor the Flame##11852  |goto Mulgore/0 51.82,59.25
step
talk Southern Barrens Flame Keeper##51587
accept Honor the Flame##28927 |goto Southern Barrens/0 40.85,67.79
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28913 |goto 48.23,72.40
step
talk Dustwallow Marsh Flame Keeper##25930
accept Honor the Flame##11847 |goto Dustwallow Marsh/0 33.43,30.92
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11744 |goto 62.00,40.50
step
talk Tanaris Flame Keeper##25921
accept Honor the Flame##11838 |goto Tanaris/0 49.82,27.87
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11762 |goto 52.68,30.11
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28921 |goto Un'Goro Crater/0 59.91,62.83
step
talk Un'Goro Flame Keeper##51607
accept Honor the Flame##28933 |goto 56.58,65.93
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 11836 |future
step
talk Silithus Flame Keeper##25919
accept Honor the Flame##11836 |goto 50.85,41.30
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11760 |goto 60.55,33.27
step
talk Feralas Flame Keeper##25932
accept Honor the Flame##11849 |goto Feralas/0 72.38,47.80
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11746 |goto 46.68,43.66
step
talk Desolace Flame Keeper##25928
accept Honor the Flame##11845 |goto Desolace/0 26.14,76.91
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11741 |goto 65.87,17.02
step
talk Stonetalon Flame Keeper##25940
accept Honor the Flame##11856 |goto Stonetalon Mountains/0 52.91,62.45
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28915 |goto 49.47,51.19
step
talk The Northern Barrens Flame Keeper##25943
accept Honor the Flame##11859 |goto Northern Barrens/0 49.96,54.62
step
talk Durotar Flame Keeper##25929
accept Honor the Flame##11846 |goto Durotar/0 52.24,47.40
step
talk Azshara Flame Keeper##51575
accept Honor the Flame##28923 |goto Azshara/0 60.43,53.51
step
talk Winterspring Flame Keeper##25922
accept Honor the Flame##11839 |goto Winterspring/0 58.14,47.51
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11763 |goto 61.34,47.11
step
talk Ashenvale Flame Keeper##25884
accept Honor the Flame##11841 |goto Ashenvale/0 51.35,66.15
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11734 |goto 86.78,41.59
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 11740 |future
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11740 |goto 48.87,22.60
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11753 |goto Teldrassil/0 54.76,52.75
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11735 |goto Azuremyst Isle/0 44.69,52.61
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11738 |goto Bloodmyst Isle/0 55.94,68.39
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Outland",{
achieveid={1027},
patch='30200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","Outland"},
description="\nThis guide will walk you through obtaining the Flame Keeper of Outland achievement.",
},[[
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11747 |goto Hellfire Peninsula 61.9,58.5
step
talk Hellfire Peninsula Flame Keeper##25934
accept Honor the Flame##11851 |goto Hellfire Peninsula 57.1,42.0
step
talk Netherstorm Flame Keeper##25918
accept Honor the Flame##11835 |goto Netherstorm 32.1,68.3
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11759 |goto Netherstorm 31.1,62.9
step
talk Blade's Edge Flame Keeper##25926
accept Honor the Flame##11843 |goto Blade's Edge Mountains 49.9,58.7
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11736 |goto Blade's Edge Mountains 41.8,66.0
step
talk Zangarmarsh Flame Keeper##25947
accept Honor the Flame##11863 |goto Zangarmarsh 35.4,51.6
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11758 |goto Zangarmarsh 68.6,52.1
step
talk Nagrand Flame Keeper##25937
accept Honor the Flame##11854 |goto Nagrand 50.9,34.1
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11750 |goto Nagrand 49.7,69.7
step
talk Terokkar Forest Flame Keeper##25942
accept Honor the Flame##11858 |goto Terokkar Forest 52.0,42.9
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11754 |goto Terokkar Forest 54.2,55.5
step
talk Shadowmoon Valley Flame Keeper##25938
accept Honor the Flame##11855 |goto Shadowmoon Valley 33.4,30.5
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##11752 |goto Shadowmoon Valley 39.5,54.4
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Northrend",{
achieveid={6009},
patch='40300',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","Northrend"},
description="\nThis guide will walk you through obtaining the Flame Keeper of Northrend achievement.",
},[[
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13440 |goto Borean Tundra 55.2,20.2
step
talk Borean Tundra Flame Keeper##32809
accept Honor the Flame##13493 |goto Borean Tundra 51.1,11.5
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13442 |goto Sholazar Basin 47.9,66.2
step
talk Sholazar Basin Flame Keeper##32810
accept Honor the Flame##13494 |goto Sholazar Basin 47.1,61.5
step
talk Dragonblight Flame Keeper##32811
accept Honor the Flame##13495 |goto Dragonblight 38.3,48.5
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13443 |goto Dragonblight 75.1,43.8
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13447 |goto Crystalsong Forest 77.6,75.2
step
talk Crystalsong Forest Flame Keeper##32815
accept Honor the Flame##13499 |goto Crystalsong Forest 80.0,53.2
step
talk Storm Peaks Flame Keeper##32814
accept Honor the Flame##13498 |goto The Storm Peaks 40.3,85.3
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13446 |goto The Storm Peaks 41.4,87.0
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13449 |goto Zul'Drak 40.5,61.0
step
talk Zul'Drak Flame Keeper##32816
accept Honor the Flame##13500 |goto Zul'Drak 43.4,71.70
step
talk Grizzly Hills Flame Keeper##32813
accept Honor the Flame##13497 |goto Grizzly Hills 19.3,61.2
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13445 |goto Grizzly Hills 34.2,60.6
step
talk Howling Fjord Flame Keeper##32812
accept Honor the Flame##13496 |goto Howling Fjord 48.6,13.1
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##13444 |goto Howling Fjord 57.8,15.8
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Cataclysm",{
achieveid={6012},
patch='40300',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","Cataclysm"},
description="\nThis guide will walk you through obtaining the Flame Keeper of Cataclysm achievement.",
},[[
step
Complete the "Do It the Azerite Way" Quest |q 55521 |future |or
|tip This quest is required to access the fires of Hyjal.
Click Here to Load the "Essential Empowerment" Leveling Guide |confirm |loadguide "Leveling Guides\\Battle for Azeroth (10-50)\\Heart of Azeroth\\Essential Empowerment"
step
talk Vashj'ir Flame Guardian##51697
accept Honor the Flame##29031 |goto Shimmering Expanse/0 49.4,42.0
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29031 |goto Shimmering Expanse 49.4,41.9
step
talk Twilight Highlands Flame Keeper##51651
accept Honor the Flame##28946 |goto Twilight Highlands 53.1,46.2
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28943 |goto 47.3,28.3
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm 49.4,51.3
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29036 |goto Deepholm 49.4,51.4
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal 62.8,22.7
|only if completedq(55519)
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29030 |goto 62.8,22.9
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 28949 |future
step
talk Uldum Flame Keeper##51652
accept Honor the Flame##28949 |goto Uldum 53.15,34.54
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##28947 |goto 53.5,32.0
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Pandaria",{
achieveid={8044},
patch='50200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","Pandaria"},
description="\nThis guide will walk you through obtaining the Flame Keeper of Pandaria achievement.",
},[[
step
talk Jade Forest Flame Guardian##69529
accept Honor the Flame##32498 |goto The Jade Forest 47.2,47.2
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32498 |goto The Jade Forest 47.2,47.2
step
talk Krasarang Wilds Flame Guardian##69533
accept Honor the Flame##32499 |goto Krasarang Wilds 74.0,9.5
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32499 |goto Krasarang Wilds 74.0,9.6
step
talk Valley of the Four Winds Flame Guardian##69550
accept Honor the Flame##32502 |goto Valley of the Four Winds 51.8,51.4
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32502 |goto Valley of the Four Winds 51.8,51.4
step
talk Dread Wastes Flame Guardian##69522
accept Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32497 |goto Dread Wastes 56.1,69.5
step
talk Townlong Steppes Flame Guardian##69536
accept Honor the Flame##32501 |goto Townlong Steppes 71.5,56.3
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32501 |goto Townlong Steppes 71.5,56.3
step
talk Kun-Lai Summit Flame Guardian##69535
accept Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32500 |goto Kun-Lai Summit 71.1,90.9
step
talk Vale of Eternal Blossoms Flame Keeper##69551
accept Honor the Flame##32509 |goto Vale of Eternal Blossoms 77.8,33.9
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##32503 |goto Vale of Eternal Blossoms 79.7,37.1
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of the Broken Isles",{
achieveid={11282},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","the","Broken","Isles"},
description="\nThis guide will walk you through obtaining the Flame Keeper of the Broken Isles achievement.",
},[[
step
talk Azsuna Flame Guardian##114492
accept Honor the Flame##44574 |goto Azsuna/0 48.29,29.66
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44574 |goto 48.29,29.66
step
talk Val'Sharah Flame Guardian##114493
accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.94
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44575 |goto 44.85,57.90
step
talk Suramar Flame Keeper##114518
accept Honor the Flame##44614 |goto Suramar/0 30.47,45.38
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##44624 |goto 22.85,58.23
step
talk Highmountain Flame Guardian##114494
accept Honor the Flame##44576 |goto Highmountain/0 55.51,84.45
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44576 |goto 55.55,84.45
step
talk Stormheim Flame Guardian##114496
accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.14
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44577 |goto 32.51,42.09
step
_Congratulations!_
You have earned the Flame Keeper of the Broken Isles Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of the Broken Isles",{
achieveid={11282},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Flame","Keeper","of","the","Broken","Isles"},
description="\nThis guide will walk you through obtaining the Flame Keeper of the Broken Isles achievement.",
},[[
step
talk Azsuna Flame Guardian##114492
accept Honor the Flame##44574 |goto Azsuna/0 48.29,29.66
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44574 |goto 48.29,29.66
step
talk Val'Sharah Flame Guardian##114493
accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.94
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44575 |goto 44.85,57.90
step
talk Suramar Flame Keeper##114518
accept Honor the Flame##44614 |goto Suramar/0 30.47,45.38
step
click Alliance Bonfire##194036
accept Desecrate this Fire!##44624 |goto 22.85,58.23
step
talk Highmountain Flame Guardian##114494
accept Honor the Flame##44576 |goto Highmountain/0 55.51,84.45
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44576 |goto 55.55,84.45
step
talk Stormheim Flame Guardian##114496
accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.14
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44577 |goto 32.51,42.09
step
_Congratulations_
You haved eared the Flame Keeper of the Broken Isles Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Keeper of Zandalar",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={13340},
patch='80105',
description="\nThis guide section will walk you through completing the Flame Keeper of Zandalar achievement for the Midsummer Fire Festival event.",
},[[
step
Jump down here |goto Zuldazar/0 51.26,45.18 < 15 |only if walking
Jump down here |goto 52.32,48.58 < 15 |only if walking
talk Zuldazar Flame Keeper##148944
accept Honor the Flame##54745 |goto 53.31,48.11
step
talk Nazmir Flame Keeper##148950
accept Honor the Flame##54747 |goto Nazmir/0 40.03,74.30
step
talk Vol'dun Flame Keeper##148986
accept Honor the Flame##54750 |goto Vol'dun/0 56.01,47.76
step
_Congratulations!_
You Earned the "Flame Keeper of Zandalar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the quests for the Noblegarden event.",
condition_suggested=function() return isevent('Noblegarden') end,
condition_end=function() return completedq(13503) end,
},[[
step
talk Tauren Commoner##19176
accept Spring Gatherers##13483 |goto Thunder Bluff/0 40.85,56.12
step
talk Spring Gatherer##32798
turnin Spring Gatherers##13483 |goto Mulgore/0 46.93,59.53
step
talk Noblegarden Merchant##32837
accept A Tisket, a Tasket, a Noblegarden Basket##13503 |goto 47.11,59.89
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 10 Noblegarden Chocolate##44791 |q 13503/1 |goto 47.35,59.19
step
talk Noblegarden Merchant##32837
turnin A Tisket, a Tasket, a Noblegarden Basket##13503 |goto 47.11,59.89
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Noblegarden') end,
description="\nThis guide section will walk you through completing the dailies for the Noblegarden event.",
},[[
step
label "Begin_Daily_Quests"
talk Tauren Commoner##19176
accept Spring Gatherers##13483 |goto Thunder Bluff/0 40.85,56.12
step
talk Spring Gatherer##32798
turnin Spring Gatherers##13483 |goto Mulgore/0 46.93,59.53
accept The Great Egg Hunt##13479 |goto 46.93,59.53
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 20 Brightly Colored Shell Fragment##44806 |q 13479/1 |goto 47.35,59.19
step
talk Spring Gatherer##32798
turnin The Great Egg Hunt##13479 |goto 46.93,59.53
step
You have completed all Noblegarden daily quests
|tip This guide will reset when more become available.
'|complete not completedq(13479) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Blushing Bride",{
author="support@zygorguides.com",
description="\nKiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2576},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2576) |or
step
talk Noblegarden Merchant##32837
buy 1 Black Tuxedo Pants##151804 |goto 47.11,59.89 |or
'|complete achieved(2576) |or
step
talk Noblegarden Merchant##32837
buy 1 White Tuxedo Shirt##6833 |goto 47.11,59.89 |or
'|complete achieved(2576) |or
step
Equip the Black Tuxedo Pants |equipped Black Tuxedo Pants##151804 |or
'|complete achieved(2576) |or
step
Equip the White Tuxedo Shirt |equipped White Tuxedo Shirt##6833 |or
'|complete achieved(2576) |or
step
|script DoEmote("KISS")
Earn the "Blushing Bride" Achievement |achieve 2576
|tip Use the kiss emote on a player wearing an Elegant Dress.
|tip The Elegant Dress looks like a long pink dress when worn.
step
_Congratulations!_
You Earned the "Blushing Bride" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Chocoholic",{
author="support@zygorguides.com",
description="\nEat 100 Noblegarden Chocolates during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2418},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2418) |or
step
use the Noblegarden Chocolate##44791+
Eat #100# Noblegarden Chocolates |achieve 2418
step
_Congratulations!_
You Earned the "Chocoholic" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Chocolate Lover",{
author="support@zygorguides.com",
description="\nEat 25 Noblegarden Chocolates during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2417},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 25 Noblegarden Chocolate##44791 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2417) |or
step
use the Noblegarden Chocolate##44791+
Eat #25# Noblegarden Chocolates |achieve 2417
step
_Congratulations!_
You Earned the "Chocolate Lover" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Desert Rose",{
author="support@zygorguides.com",
description="\nUse Spring Robes to plant a flower in each of the deserts listed below:\n\n"..
"The Badlands\nDesolace\nSilithus\nTanaris\nThousand Needles",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2436},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2436) |or
step
talk Noblegarden Merchant##32837
buy 1 Spring Robes##44800 |goto 47.11,59.89 |or
'|complete achieved(2436) |or
step
Equip the Spring Robes |equipped Spring Robes##44800 |or
'|complete achieved(2436) |or
step
use the Spring Robes##44800
Plant a Flower in Desolace |achieve 2436/2 |goto Desolace/0 64.67,10.44
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |or
'|complete achieved(2436) |or
step
use Spring Robes##44800
Plant a Flower in Silithus |achieve 2436/3 |goto 78.93,21.97
step
use Spring Robes##44800
Plant a Flower in Tanaris |achieve 2436/4 |goto Tanaris/0 51.38,29.43
step
use Spring Robes##44800
Plant a Flower in Thousand Needles |achieve 2436/5 |goto Thousand Needles/0 79.09,71.89
step
use Spring Robes##44800
Plant a Flower in the Badlands |achieve 2436/1 |goto Badlands/0 21.71,57.73
step
Earn the "Desert Rose" Achievement |achieve 2436
step
_Congratulations!_
You Earned the "Desert Rose" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Dressed for the Occasion",{
author="support@zygorguides.com",
description="\nDiscover an Elegant Dress by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={249},
patch='30002',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip You may need to loot hundreds, if not thousands of these eggs.
use the Brightly Colored Egg##45072+
collect 1 Elegant Dress##151806 |achieve 249 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(249) |or
step
Earn the "Dressed for the Occasion" Achievement |achieve 249
step
_Congratulations!_
You Earned the "Dressed for the Occasion" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Hard Boiled",{
author="support@zygorguides.com",
description="\nLay an egg in Un'Goro Crater's Golakka Hot Springs as a rabbit during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2416},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
talk Innkeeper Dreedle##38488
|tip Setting your hearthstone here will greatly reduce your travel time.
|tip You cannot take flight paths or use your mount after getting the buff.
home Marshal's Stand |goto Un'Goro Crater/0 55.38,62.26 |or
'|complete achieved(2416) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
Gain the "Noblegarden Bunny" Buff |havebuff 237000 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2416) |or
step
Earn the "Hard Boiled" Achievement |achieve 2416 |goto Un'Goro Crater/0 35.74,54.21
|tip Avoid enemies, as being hit will cause you to lose your disguise.
|tip Stand in this spot until you lay an egg.
step
_Congratulations!_
You Earned the "Hard Boiled" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\I Found One!",{
author="support@zygorguides.com",
description="\nFind a Brightly Colored Egg.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2676},
patch='30101',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
collect 1 Brightly Colored Egg##113768 |achieve 2676 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2676) |or
step
Earn the "I Found One!" Achievement |achieve 2676
step
_Congratulations!_
You Earned the "I Found One!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Noble Garden",{
author="support@zygorguides.com",
description="\nHide a Brightly Colored Egg in Silvermoon City.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2420},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |or
'|complete achieved(2420) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 5 Noblegarden Chocolate##44791 |goto 61.00,52.74 |or
'|complete achieved(2420) |or
step
talk Noblegarden Merchant##32837
buy 1 Noblegarden Egg##44818 |goto 61.36,52.98 |or
'|complete achieved(2420) |or
step
use Noblegarden Egg##44818
Earn the "Noble Garden" Achievement |achieve 2420 |goto Silvermoon City/0 50.62,16.45
step
_Congratulations!_
You Earned the "Noble Garden" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker",{
author="support@zygorguides.com",
description="\nUse Spring Flowers to place rabbit ears upon players of at least 20th level of the following races:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nGoblin\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead\nWorgen",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2422},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2422) |or
step
talk Noblegarden Merchant##32837
buy 1 Spring Flowers##45073 |goto 47.11,59.89 |or
'|complete achieved(2422) |or
step
Equip the Spring Flowers |equipped Spring Flowers##45073 |or
'|complete achieved(2422) |or
step
use the Spring Flowers##45073
|tip Use it on level 20+ characters.
|tip Check around capital cities.
Place Bunny Ears on a Blood Elf |achieve 2422/1
Place Bunny Ears on a Tauren |achieve 2422/9
Place Bunny Ears on a Draenei |achieve 2422/2
Place Bunny Ears on a Human |achieve 2422/6
Place Bunny Ears on a Troll |achieve 2422/10
Place Bunny Ears on a Dwarf |achieve 2422/3
Place Bunny Ears on a Night Elf |achieve 2422/7
Place Bunny Ears on a Gnome |achieve 2422/4
Place Bunny Ears on an Orc |achieve 2422/8
Place Bunny Ears on a Goblin |achieve 2422/5
Place Bunny Ears on an Undead |achieve 2422/11
Place Bunny Ears on a Worgen |achieve 2422/12
step
Earn the "Shake Your Bunny-Maker" Achievement |achieve 2422
step
_Congratulations!_
You Earned the "Shake Your Bunny-Maker" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Spring Fling",{
author="support@zygorguides.com",
description="\nFind your pet Spring Rabbit another one to love in each of the towns listed below:\n\n"..
"Bloodhoof Village\nBrill\nFalconwing Square\nRazor Hill",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2497},
patch='30100',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(2497) |or
step
talk Noblegarden Merchant##32837
buy 1 Spring Rabbit's Foot##44794 |goto 47.11,59.89 |or
'|complete achieved(2497) |or
step
use the Spring Rabbit's Foot##44794
Learn the "Spring Rabbit" Battle Pet |learnpet 61725 |or
'|complete achieved(2497) |or
step
Find Your Spring Rabbit Another to Love in Bloodhoof Village |achieve 2497/1 |goto Mulgore/0 47.44,59.15
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Razor Hill |achieve 2497/4 |goto Durotar/0 52.61,42.44
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |or
'|complete achieved(2497) |or
step
Find Your Spring Rabbit Another to Love in Brill |achieve 2497/2 |goto 61.00,52.74
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Falconwing Square |achieve 2497/3 |goto Eversong Woods/0 46.82,46.25
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Earn the "Spring Fling" Achievement |achieve 2497
step
_Congratulations!_
You Earned the "Spring Fling" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest",{
author="support@zygorguides.com",
description="\nDiscover the White Tuxedo Shirt and Black Tuxedo Pants by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={248},
patch='30008',
keywords={"Noblegarden, Achievement, Noble, Garden"},
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip You may need to loot hundreds, if not thousands of these eggs.
use the Brightly Colored Egg##45072+
collect 1 White Tuxedo Shirt##6833 |achieve 248/1 |goto Mulgore/0 47.35,59.19 |or
'|complete achieved(248) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip You may need to loot hundreds, if not thousands of these eggs.
use the Brightly Colored Egg##45072+
collect 1 Black Tuxedo Pants##151804 |achieve 248/2 |goto 47.35,59.19 |or
'|complete achieved(248) |or
step
Earn the "Sunday's Finest" Achievement |achieve 248
step
_Congratulations!_
You Earned the "Sunday's Finest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="\nThis guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.",
},[[
step
talk Troll Commoner##19177
accept Pilgrim's Bounty##14036 |goto Orgrimmar/1 49.08,61.49
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 14036
step
talk Miles Standish##34677
turnin Pilgrim's Bounty##14036 |goto 61.39,67.48
step
talk Bountiful Feast Hostess##34654
accept Sharing a Bountiful Feast##14065 |goto 61.72,66.78
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast on Turkey" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Turkey |complete hasbuff("spell:61842",5) or hasbuff("spell:61849") |goto 62.20,66.82 |q 14065
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast on Cranberries" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Cranberries |complete hasbuff("spell:61841",5) or hasbuff("spell:61849") |goto 62.16,66.71 |q 14065
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast on Sweet Potatoes" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Sweet Potatoes |complete hasbuff("spell:61844",5) or hasbuff("spell:61849") |goto 62.22,66.61 |q 14065
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast on Stuffing" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Stuffing |complete hasbuff("spell:61843",5) or hasbuff("spell:61849") |goto 62.30,66.68 |q 14065
step
Leave the Chair |outvehicle |script VehicleExit()
step
clicknpc The Pie Chair##34822
|tip Use the "Feast on Pie" ability on your vehicle bar.
|tip If the seat is occupied you can wait or try another table.
Eat the Pie |complete hasbuff("spell:61845",5) or hasbuff("spell:61849") |goto 62.29,66.80 |q 14065
step
Leave the Chair |outvehicle |script VehicleExit()
step
talk Bountiful Feast Hostess##34654
turnin Sharing a Bountiful Feast##14065 |goto 61.72,66.78
step
talk Roberta Carter##34712
Train Cooking |skillmax Cooking,300 |goto 61.23,66.94
step
talk Roberta Carter##34712
learn Spice Bread##37836 |goto 61.23,66.94
step
talk Rose Standish##34683
buy 1 Bountiful Cookbook##46810 |goto 61.37,67.40 |q 14037 |future |or
'|learn Slow-Roasted Turkey##66037 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Spice Bread Stuffing##46803 |q 14037 |future |or
'|learn Spice Bread Stuffing##66038 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Pumpkin Pie##46804 |q 14040 |future |or
'|learn Pumpkin Pie##66036 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Cranberry Chutney##46805 |q 14041 |future |or
'|learn Cranberry Chutney##66035 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Candied Sweet Potato##46806 |q 14043 |future |or
'|learn Candied Sweet Potato##66034 |or
step
use the Bountiful Cookbook##46810
collect Recipe: Slow-Roasted Turkey##46807 |q 14047 |future |or
'|learn Slow-Roasted Turkey##66037 |or
step
use the Recipe: Spice Bread Stuffing##46803
learn Spice Bread Stuffing##66038
step
talk Miles Standish##34677
accept Spice Bread Stuffing##14037 |goto 61.37,67.48
step
talk Rose Standish##34683
buy 10 Simple Flour##30817 |goto 61.37,67.40 |q 14037
buy 10 Mild Spices##2678 |goto 61.37,67.40 |q 14037
buy 10 Autumnal Herbs##44835 |goto 61.37,67.40 |q 14037
step
create 10 Spice Bread##37836,Cooking,10 total |goto 61.24,66.81 |q 14037
|tip Click the line to open your cooking panel and create them.
step
create 10 Spice Bread Stuffing##66038,Cooking,10 total |goto 61.24,66.81 |q 14037
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Spice Bread Stuffing##66038,Cooking,100 |goto 61.24,66.81
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk William Mullins##34768
turnin Spice Bread Stuffing##14037 |goto 61.65,68.07
accept Pumpkin Pie##14040 |goto 61.65,68.07
step
use the Recipe: Pumpkin Pie##46804
learn Pumpkin Pie##66036
step
talk Rose Standish##34683
buy 10 Ripe Tirisfal Pumpkin##46796 |goto 61.37,67.40 |q 14040
buy 10 Honey##44853 |goto 61.37,67.40 |q 14040
step
create 10 Pumpkin Pie##66036,Cooking,10 total |goto 61.24,66.81 |q 14040
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Pumpkin Pie##66036,Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Tirisfal Pumpkin and 1 Honey.
step
talk Francis Eaton##34679
turnin Pumpkin Pie##14040 |goto Durotar/0 46.59,13.79
accept Cranberry Chutney##14041 |goto 46.59,13.79
step
use the Recipe: Cranberry Chutney##46805
learn Cranberry Chutney##66035
step
talk Dalni Tallgrass##34685
buy 5 Tangy Southfury Cranberries##46793 |goto 46.62,13.79 |q 14041
buy 5 Honey##44853 |goto 46.62,13.79 |q 14041
step
create 5 Cranberry Chutney##66035,Cooking,5 total |goto 46.43,13.86 |q 14041
|tip Click the line to open your cooking panel and create them.
|tip Save these for later.
step
create Cranberry Chutney##66035,Cooking,220 |goto 46.43,13.86
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Dokin Farplain##34678
turnin Cranberry Chutney##14041 |goto Thunder Bluff/0 30.85,63.71
accept Candied Sweet Potatoes##14043 |goto 30.85,63.71
step
use the Recipe: Candied Sweet Potato##46806
learn Candied Sweet Potato##66034
step
talk Laha Farplain##34684
buy 5 Mulgore Sweet Potato##46797 |goto 31.03,63.32 |q 14043
buy 5 Honey##44853 |goto 31.03,63.32 |q 14043
buy 5 Autumnal Herbs##44835 |goto 31.03,63.32 |q 14043
step
create 5 Candied Sweet Potato##66034,Cooking,5 total |goto 30.57,69.91 |q 14043
|tip Click the line to open your cooking panel and create them.
step
create Candied Sweet Potato##66034,Cooking,280
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Mulgore Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Francis Eaton##34679
turnin Candied Sweet Potatoes##14043 |goto Durotar/0 46.58,13.80
accept Undersupplied in the Undercity##14044 |goto 46.58,13.80
step
collect 5 Spice Bread Stuffing##44837 |q 14044/1
|tip You should have these from a previous step.
step
collect 5 Cranberry Chutney##44840 |q 14044/2
|tip You should have these from a previous step.
step
talk Miles Standish##34677
turnin Undersupplied in the Undercity##14044 |goto Tirisfal Glades/0 61.38,67.48
accept Slow-Roasted Turkey##14047 |goto 61.38,67.48
step
use the Recipe: Slow-Roasted Turkey##46807
learn Slow-Roasted Turkey##66037
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 5 Wild Turkey##44834 |goto Tirisfal Glades/0 62.2,56.4 |q 14047
step
talk Rose Standish##34683
buy 10 Honey##44853 |goto 61.37,67.41 |q 14047
buy 5 Autumnal Herbs##44835 |goto 61.37,67.41 |q 14047
step
create 5 Slow-Roasted Turkey##66037,Cooking,5 total |goto 61.24,66.81 |q 14047
|tip Click the line to open your cooking panel and create them.
step
talk Francis Eaton##34679
turnin Slow-roasted Turkey##14047 |goto Durotar/0 46.58,13.80
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |complete completedq(14047)
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 14058 |future
step
talk William Mullins##34768
accept She Says Potato##14058 |goto 61.65,68.08
step
talk Roberta Carter##34712
accept We're Out of Cranberry Chutney Again?##14059 |goto 61.22,66.95
step
talk Rose Standish##34683
buy 20 Ripe Tirisfal Pumpkin##46796 |goto 61.37,67.42 |q 14060 |future
buy 20 Simple Flour##30817 |goto 61.37,67.42 |q 14062 |future
buy 20 Mild Spices##2678 |goto 61.37,67.42 |q 14062 |future
buy 60 Autumnal Herbs##44835 |goto 61.37,67.42 |q 14062 |future
buy 100 Honey##44853 |goto 61.37,67.42 |q 14060 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 20 Wild Turkey##44834 |goto 62.25,56.43 |q 14061 |future
step
talk Ondani Greatmill##34713
accept Don't Forget The Stuffing!##14062 |goto Durotar/0 46.36,13.85
accept Can't Get Enough Turkey##14061 |goto 46.36,13.85
step
talk Dalni Tallgrass##34685
buy 20 Tangy Southfury Cranberries##46793 |goto 46.61,13.78 |q 14059
step
talk Laha Farplain##34684
buy 20 Mulgore Sweet Potato##46797 |q 14058 |goto Thunder Bluff/0 31.02,63.31
step
talk Mahara Goldwheat##34714
accept Easy As Pie##14060 |goto 30.97,69.84
step
create 20 Pumpkin Pie##66036,Cooking,20 total |goto 30.42,69.97 |q 14060
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread##37836,Cooking,20 total |goto 30.42,69.97 |q 14062
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread Stuffing##66038,Cooking,20 total |goto 30.42,69.97 |q 14062
|tip Click the line to open your cooking panel and create them.
step
create 20 Slow-Roasted Turkey##66037,Cooking,20 total |goto 30.42,69.97 |q 14061
|tip Click the line to open your cooking panel and create them.
step
create 20 Candied Sweet Potato##66034,Cooking,20 total |goto 30.42,69.97 |q 14058
|tip Click the line to open your cooking panel and create them.
step
create 20 Cranberry Chutney##66035,Cooking,20 total |goto 30.42,69.97 |q 14059
|tip Click the line to open your cooking panel and create them.
step
talk Mahara Goldwheat##34714
turnin Easy As Pie##14060 |goto 30.97,69.84
step
talk Ondani Greatmill##34713
turnin Can't Get Enough Turkey##14061 |goto Durotar/0 46.36,13.87
turnin Don't Forget The Stuffing!##14062 |goto 46.36,13.87
step
talk Roberta Carter##34712
turnin We're Out of Cranberry Chutney Again?##14059 |goto Tirisfal Glades/0 61.21,66.94
step
talk William Mullins##34768
turnin She Says Potato##14058 |goto 61.66,68.08
step
Click Here to Repeat the Daily Quests |confirm |next "Guide_Start"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!",{
author="support@zygorguides.com",
description="\nBounce food off a fellow feaster's head at a Bountiful Table.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3579},
patch='30202',
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |achieve 3579 |future
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass The Cranberries" ability to pass the food to other players at the table.
|tip You must target the other players and use the "Pass the Cranberries" ability.
|tip Do this repeatedly until you earn the "FOOD FIGHT!" achievement.
Start a Food Fight! |achieve 3579 |goto Tirisfal Glades/0 61.44,66.81
step
_Congratulations!_
You Earned the "FOOD FIGHT!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'",{
author="support@zygorguides.com",
description="\nCook up each of the following Pilgrim's Bounty dishes:\n\n"..
"Candied Sweet Potato\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3577},
patch='30200',
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |achieve 3577 |future
step
talk Rose Standish##34683
buy 1 Bountiful Cookbook##46810 |goto Tirisfal Glades/0 61.37,67.40
|only if not achieved(3577)
step
talk Roberta Carter##34712
Train Cooking |skillmax Cooking,300 |goto 61.23,66.94
step
talk Roberta Carter##34712
learn Spice Bread##37836 |goto 61.23,66.94
step
use the Bountiful Cookbook##46810
collect Recipe: Spice Bread Stuffing##46803
|only if not achieved(3577)
step
use the Bountiful Cookbook##46810
collect Recipe: Pumpkin Pie##46804
|only if not achieved(3577)
step
use the Bountiful Cookbook##46810
collect Recipe: Cranberry Chutney##46805
|only if not achieved(3577)
step
use the Bountiful Cookbook##46810
collect Recipe: Candied Sweet Potato##46806
|only if not achieved(3577)
step
use the Bountiful Cookbook##46810
collect Recipe: Slow-Roasted Turkey##46807
|only if not achieved(3577)
step
use the Recipe: Spice Bread Stuffing##46803
learn Spice Bread Stuffing##66038
step
talk Rose Standish##34683
buy 1 Simple Flour##30817 |goto 61.37,67.40
buy 1 Mild Spices##2678 |goto 61.37,67.40
buy 1 Autumnal Herbs##44835 |goto 61.37,67.40
|only if not achieved(3577)
step
create 1 Spice Bread##37836,Cooking,1 total |goto 61.24,66.81 |achieve 3577/5
|tip Click the line to open your cooking panel and create them.
|only if not achieved(3577)
step
create 1 Spice Bread Stuffing##62050,Cooking,1 total |goto 61.24,66.81 |achieve 3577/5
|tip Click the line to open your cooking panel and create them.
step
use the Recipe: Pumpkin Pie##46804
learn Pumpkin Pie##66036
step
talk Rose Standish##34683
buy 1 Ripe Tirisfal Pumpkin##46796 |goto 61.37,67.40
buy 1 Honey##44853 |goto 61.37,67.40
|only if not achieved(3577)
step
create 1 Pumpkin Pie##66036,Cooking,1 total |goto 61.24,66.81 |achieve 3577/3
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Cranberry Chutney##46805
learn Cranberry Chutney##66035
step
talk Dalni Tallgrass##34685
buy 1 Tangy Southfury Cranberries##46793 |goto Durotar/0 46.62,13.79
buy 1 Honey##44853 |goto 46.62,13.79
|only if not achieved(3577)
step
create 1 Cranberry Chutney##66035,Cooking,1 total |goto 46.43,13.86 |achieve 3577/2
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Candied Sweet Potato##46806
learn Candied Sweet Potato##66034
step
talk Laha Farplain##34684
buy 1 Mulgore Sweet Potato##46797 |goto Thunder Bluff/0 31.03,63.32
buy 1 Honey##44853 |goto 31.03,63.32
buy 1 Autumnal Herbs##44835 |goto 31.03,63.32
|only if not achieved(3577)
step
create 1 Candied Sweet Potato##66034,Cooking,1 total |goto 30.57,69.91 |achieve 3577/1
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Slow-Roasted Turkey##46807
learn Slow-Roasted Turkey##66037
step
kill Wild Turkey##32820+
|tip You can find these all over Tirisfal Glades.
collect 1 Wild Turkey##44834 |goto Tirisfal Glades/0 62.25,56.43
|only if not achieved(3577)
step
talk Rose Standish##34683
buy 2 Honey##44853 |goto 61.37,67.41
buy 1 Autumnal Herbs##44835 |goto 61.37,67.41
|only if not achieved(3577)
step
create 1 Slow-Roasted Turkey##66037,Cooking,1 total |goto 61.24,66.81 |achieve 3577/4
|tip Click the line to open your cooking panel and create it.
step
Cook a Pilgrim's Bounty Feast |achieve 3577
step
_Congratulations!_
You Earned the "Now We're Cookin'" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim",{
author="support@zygorguides.com",
description="\nComplete the following Pilgrim's Bounty achievements:\n\n"..
"\"FOOD FIGHT!\"\nNow We're Cookin'\nPilgrim's Paunch\n"..
"Pilgrim's Peril\nPilgrim's Progress\nSharing is Caring\n"..
"Terokkar Turkey Time\nThe Turkinator\nTurkey Lurkey",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3478},
patch='30200',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests"
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-21
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!" 1-3
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch" 1-43
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril" 1-11
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring" 1-12
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time" 1-5
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator" 1-3
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey" 1-11
step
Earn the "Pilgrim" Achievement |achieve 3478
step
_Congratulations!_
You Earned the "Pilgrim" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch",{
author="support@zygorguides.com",
description="\nAcquire the Spirit of Sharing from a complete Bountiful Table feast at the following capital cities:\n\n"..
"Orgrimmar\nSilvermoon City\n"..
"Thunder Bluff\nUndercity",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3557},
patch='30300',
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |acheive 3557 |future
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Tirisfal Glades/0 61.52,66.80 |or
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 61.44,66.81 |or
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 61.41,66.70 |or
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 61.47,66.60 |or
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 61.54,66.67 |or
'|achieve 3557 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Durotar/0 46.58,14.61 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 46.61,14.50 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 46.68,14.50 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 46.70,14.61 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 46.64,14.68 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Eversong Woods/0 55.62,53.05 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 55.70,53.11 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 55.70,53.21 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 55.62,53.25 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 55.57,53.15 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Thunder Bluff/0 28.96,62.75 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 28.56,62.79 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 28.43,62.31 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 28.70,61.91 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 29.04,62.19 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
label "Earn_Pilgrim's_Paunch"
Acquire the Spirit of Sharing |achieve 3557
step
_Congratulations!_
You Earned the "Pilgrim's Paunch" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril",{
author="support@zygorguides.com",
description="\nWhile wearing either a Pilgrim's Dress, Robe, or Attire, take a seat at the following enemy capital cities:\n\n"..
"Darnassus\nThe Exodar\n"..
"Ironforge\nStormwind",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3581},
patch='30202',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1 |achieve 3581 |future
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |achieve 3581 |future
step
click Portal to Exodar |goto Teldrassil/0 52.28,89.48
Teleport to the Exodar |goto The Exodar/0 29.35,28.25 |c |noway
|only if not achieved(3581)
step
use Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
use Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
use Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
|only if not achieved(3581)
step
clicknpc The Turkey Chair##34812
Take a Seat at the Exodar's Bountiful Table |achieve 3581/2 |goto The Exodar/0 77.46,52.86
step
click Portal to Darnassus |goto 29.34,28.25
Teleport to Darnassus |goto Teldrassil/0 52.38,89.47 |c |noway
|only if not achieved(3581)
step
clicknpc The Turkey Chair##34812
Take a Seat at Darnassus' Bountiful Table |achieve 3581/1 |goto Darnassus/0 64.14,46.69
step
clicknpc The Turkey Chair##34812
Take a Seat at Ironforge's Bountiful Table |achieve 3581/3 |goto Dun Morogh/0 59.90,35.37
step
clicknpc The Turkey Chair##34812
Take a Seat at Stormwind's Bountiful Table |achieve 3581/4 |goto Elwynn Forest/0 34.78,50.55
step
Earn the "Pilgrim's Peril" Achievement |achieve 3581
step
_Congratulations!_
You Earned the "Pilgrim's Peril" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress",{
author="support@zygorguides.com",
description="\nComplete the following Pilgrim's Bounty dailies:\n\n"..
"Can't Get Enough Turkey\nDon't Forget The Stuffing!\nEasy As Pie\n"..
"She Says Potato\nWe're Out of Cranberry Chutney Again?",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3597},
patch='30200',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-21
step
Earn the "Pilgrim's Progress" Achievement |achieve 3597
step
_Congratulations!_
You Earned the "Pilgrim's Progress" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring",{
author="support@zygorguides.com",
description="\nPass each of the following dishes at a Bountiful Table:\n\n"..
"Candied Sweet Potatoes\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3558},
patch='30300',
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |achieve 3558 |future
step
clicknpc The Pie Chair##34822
|tip Use the "Pass the Pie" ability on your action bar five times.
Pass the Pie |achieve 3558/3 |goto 61.52,66.80
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass the Turky" ability on your action bar five times.
Pass the Turkey |achieve 3558/4 |goto 61.44,66.81
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Pass the Cranberries" ability on your action bar five times.
Pass the Cranberries |achieve 3558/2 |goto 61.41,66.70
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Pass the Sweet Potatoes" ability on your action bar five times.
Pass the Sweet Potatoes |achieve 3558/1 |goto 61.47,66.60
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Pass the Stuffing" ability on your action bar five times.
Pass the Stuffing |achieve 3558/5 |goto 61.54,66.67
step
label "Earn_Sharing_Is_Caring"
Earn the "Sharing is Caring" Achievement |achieve 3558
step
_Congratulations!_
You Earned the "Sharing is Caring" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time",{
author="support@zygorguides.com",
description="\nDefeat Talon King Ikiss while wearing a Pilgrim's Hat and either a Pilgrim's Dress, Robe, or Attire.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3582},
patch='30200',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3582)
step
collect 1 Pilgrim's Hat##46723
|tip You can choose this as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3582)
step
use Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
Equip a Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
use Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
Equip a Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
use Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
Equip a Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
|only if not achieved(3582)
step
use Pilgrim's Hat##46723 |only if itemcount (46723) >= 1
Equip a Pilgrim's Hat |equipped Pilgrim's Attire##46723 |only if itemcount (46723) >= 1
|only if not achieved(3582)
step
kill Talon King Ikiss##18473
Earn the "Terokkar Turkey Time" Achievement |achieve 3582 |goto Sethekk Halls/2 32.50,39.50
|tip Use the "Auchindoun: Sethekk Halls" dungeon guide to accomplish this.
step
_Congratulations!_
You Earned the "Terokkar Turkey Time" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey",{
author="support@zygorguides.com",
description="\nBlast the following dirty, sneaking Rogues with your Turkey Shooter:\n\n"..
"Blood Elf Rogue\nDwarf Rogue\nGnome Rogue\nGoblin Rogue\n"..
"Human Rogue\nNight Elf Rogue\nOrc Rogue\nTroll Rogue\n"..
"Undead Rogue\nWorgen Rogue",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3559},
patch='30200',
},[[
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar/0 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Orc Rogue |achieve 3559/7 |goto 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Troll Rogue |achieve 3559/8 |goto 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Undead Rogue |achieve 3559/9 |goto 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Goblin Rogue |achieve 3559/4 |goto 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Dwarf Rogue |achieve 3559/2 |goto Elwynn Forest/0 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Gnome Rogue |achieve 3559/3 |goto 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Human Rogue |achieve 3559/5 |goto 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Night Elf Rogue |achieve 3559/6 |goto 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Worgen Rogue |achieve 3559/10 |goto 34.63,51.22
step
Earn the "Turkey Lurkey" Achievement |achieve 3559
step
_Congratulations!_
You Earned the "Turkey Lurkey" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator",{
author="support@zygorguides.com",
description="\nHunt enough Wild Turkeys quickly enough to gain Turkey Triumph.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3578},
patch='30200',
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |achieve 3578 |future
step
kill Wild Turkey##32820+
|tip Kill 40 turkeys without letting your Turkey Tracker Buff expire.
|tip You will need to fly around Tirisfal Glades.
|tip You will be given 30 seconds for each kill to find a new turkey.
|tip Use your "Track Beast" ability and look for yellow dots on the minimap. |only Hunter
Earn the "Turkinator" Achievement |achieve 3578 |goto 62.53,57.85
step
_Congratulations!_
You Earned the "The Turkinator" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\Incursions",{
author="support@zygorguides.com",
description="\nDefend various Horde assets against Alliance incursions.",
},[[
step
label "Guide_Start"
No Incursions Currently Available |confirm |only if default
'Incursion Detected - Tiragarde Sound |complete invasion(5896,876) |next "Breaching_Boralus" |only if invasion(5896,876) and not completedq(53939)
'Incursion Detected - Vol'dun |complete invasion(5970,875) |next "Isolated_Victory" |only if invasion(5970,875) and not completedq(53885)
'Incursion Detected - Stormsong Valley |complete invasion(5966,876) |next "Horde_of_Heroes" |only if invasion(5966,876) and not completedq(54132)
'Incursion Detected - Nazmir |complete invasion(5969,875) |next "Romp_In_The_Swamp" |only if invasion(5969,875) and not completedq(54135)
'Incursion Detected - Zuldazar |complete invasion(5973,875) |next "Shores_Of_Zuldazar" |only if invasion(5973,875) and not completedq(53883)
'Incursion Detected - Drustvar |complete invasion(5964,876) |next "In_Every_Dark_Corner" |only if invasion(5964,876) and not completedq(54137)
step
label "Breaching_Boralus"
accept Breaching Boralus##53939 |goto Tiragarde Sound/0 88.20,51.16
|tip You will accept this quest automatically.
step
Attack #4# Alliance Targets |q 53939/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Tiragarde Sound.
step
click Azerite Iron Star
Use the Azerite Iron Star |q 53939/2 |goto Tiragarde Sound/0 81.98,36.84
step
Destroy the Alliance Army |q 53939/3 |goto 81.54,41.00
|tip Roll over enemies in your path.
step
Destroy the Barricades |q 53939/5 |goto 79.88,41.78 |count 1
|tip Roll over it.
step
Destroy the Barricades |q 53939/5 |goto 79.31,42.23 |count 2
|tip Roll over it.
step
Destroy the Barricades |q 53939/5 |goto 78.44,42.93 |count 3
|tip Roll over it.
step
Destroy the Barricades |q 53939/5 |goto 77.39,43.42 |count 4
|tip Roll over it.
step
Destroy the Barricades |q 53939/5 |goto 77.42,43.07 |count 5
|tip Roll over it.
step
Destroy the Barricades |q 53939/5 |goto 77.09,41.88 |count 6
|tip Roll over it.
step
Destroy the Gate to Boralus |q 53939/4 |goto Boralus/0 79.14,75.91
|tip Roll into it.
step
kill Captain Briggs##147072 |q 53939/6 |goto 78.33,74.67
step
talk Ransa Greyfeather##135447
turnin Breaching Boralus##53939 |goto Zuldazar/0 58.07,62.65
|next "Guide_Start"
step
label "Isolated_Victory"
accept Isolated Victory##53885 |goto Vol'dun/0 56.97,49.38
|tip You will accept this quest automatically.
step
Repel #4# Alliance Attacks |q 53885/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Vol'dun.
step
Cross the bridge |goto Vol'dun/0 30.65,50.21 < 20 |only if walking
Locate Aviash |goto Vol'dun/0 32.50,46.54 < 20 |c |q 53885
step
clicknpc Aviash##145670
Fly with Aviash |invehicle |goto 32.50,46.54 |q 53885
step
Watch the dialogue
Ride Aviash to the Target |q 53885/2 |goto 42.17,32.03 |notravel
stickystart "Sabotage_The_Alliance_Airship_53885"
step
kill Captain Granger##145753 |q 53885/4 |goto 41.31,31.05
|tip Inside the airship, on the deck level.
step
label "Sabotage_The_Alliance_Airship_53885"
Kill enemies around this area
|tip On the airship.
clicknpc Alliance Gyrocopter##145804+
|tip They look like helicopters around this area on the deck of the airship.
click Engine Gearing+
|tip They look like gold-colored machines around this area on the deck of the airship.
click Azerite Cannon Balls+
|tip They look like piles of dark grey metal balls on tables around this area downstairs inside the airship.
click Cannon Ammo+
|tip They look like pile f huge silver bullets around this area downstairs inside the airship.
Sabotage the Alliance Airship |q 53885/3 |goto 41.98,32.08
step
clicknpc Aviash##145675
|tip On the deck of the airship, where you landed.
Watch the dialogue
Ride Aviash to Safety |q 53885/5 |goto 42.27,31.91
step
talk Hoarder Jena##135804
turnin Isolated Victory##53885 |goto 56.69,49.74
|next "Guide_Start"
step
label "Horde_of_Heroes"
accept Horde of Heroes##54132 |goto Stormsong Valley/0 51.06,31.07
|tip You will accept this quest automatically.
step
Attack #4# Alliance Targets |q 54132/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Stormsong Valley.
step
talk Usha Eyegouge##147157
Tell her _"Let's begin the attack."_
Meet Up with Usha Eyegouge |q 54132/2 |goto Stormsong Valley/0 49.54,48.68
stickystart "Destroy_Siege_Engines_54132"
stickystart "Slay_7th_Legion_Troops_54132"
step
Follow the path up |goto 49.10,47.38 < 20 |only if walking
Continue up the path |goto 47.72,43.22 < 20 |only if walking
kill Bennel Swiftstrike##148746 |q 54132/5 |goto 50.46,36.34
|tip He sometimes moves around this area fighting.
step
label "Destroy_Siege_Engines_54132"
click Azerite Charge+
|tip They look like yellow clusters of bombs on the ground around this area.
Destroy #5# Siege Engines |q 54132/3 |goto 49.31,37.98
step
label "Slay_7th_Legion_Troops_54132"
Kill enemies around this area
Slay #15# 7th Legion Troops |q 54132/4 |goto 49.31,37.98
step
talk Ransa Greyfeather##135447
turnin Horde of Heroes##54132 |goto Zuldazar/0 58.06,62.65
|next "Guide_Start"
step
label "Romp_In_The_Swamp"
accept Romp in the Swamp##54135 |goto Nazmir/0 38.94,78.06
|tip You will accept this quest automatically.
step
Repel #4# Alliance Attacks |q 54135/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Nazmir.
step
clicknpc Bon Voyage 6000##147898
Get to the Aircraft Carrier |q 54135/2 |goto Nazmir/0 43.75,19.58
step
Fly to the Horde Ship |goto 39.99,13.37 < 10 |c |q 54135 |notravel
step
clicknpc Pozzik's Experimental Bomber##147944
Ride Pozzik's Experimental Bomber |q 54135/3 |goto 39.84,14.29
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Obliterate the Alliance Army |q 54135/4 |goto 76.85,19.29 |notravel
step
Find the Alliance Flagship Nearby |q 54135/5 |goto 87.16,12.50 |notravel
|tip You will automatically land.
step
kill Captain Beamwind##148116 |q 54135/6 |goto 86.70,10.96
|tip Upstairs inside the ship.
step
clicknpc Pozzik's Experimental Bomber##148127
|tip On the deck of the ship, where you landed.
Escape the Ship |invehicle |goto 87.16,12.48 |q 54135
step
Return to the Horde Ship |goto 39.95,14.25 < 10 |c |q 54135 |notravel
step
talk Provisioner Lija##135459
turnin Romp in the Swamp##54135 |goto 39.09,79.47
|next "Guide_Start"
step
label "Shores_Of_Zuldazar"
accept Shores of Zuldazar##53883 |goto Dazar'alor/0 51.80,41.29
|tip You will accept this quest automatically.
step
Repel #4# Alliance Attacks |q 53883/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Zuldazar.
step
Locate the Pterrordax |goto Zuldazar/0 66.46,44.50 < 30 |c |q 53883
step
clicknpc Trained Pterrordax##145710
Mount the Pterrordax |invehicle |goto 66.46,44.50 |q 53883
step
Ride the Pterrordax to the Target |q 53883/2 |goto 63.51,46.31
step
click Alliance Cage+
|tip They look like brown wooden cages around this area on the airship.
|tip You can find more downstairs inside the airship.
Free #6# Prisoners |q 53883/3 |goto 63.66,46.62
step
click Fuel Barrel
|tip Inside, on the bottom deck of the airship.
Sabotage the Fuel Stores |q 53883/4 |goto 63.27,47.10 |count 1
step
click Fuel Barrel
|tip Inside, on the bottom deck of the airship.
Sabotage the Fuel Stores |q 53883/4 |goto 63.68,47.37 |count 2
step
clicknpc Trained Pterrordax##145742
|tip On the top deck of the ship, where you landed.
Watch the dialogue
Ride the Pterrordax to Saftey |q 53883/5 |goto 63.50,46.32
step
talk Ransa Greyfeather##135447
turnin Shores of Zuldazar##53883 |goto 58.07,62.65
|next "Guide_Start"
step
label "In_Every_Dark_Corner"
accept In Every Dark Corner##54137 |goto Drustvar/0 20.61,43.69
|tip You will accept this quest automatically.
step
Attack #4# Alliance Targets |q 54137/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Drustvar.
step
talk Rokhan##148142
Tell him _"I'm ready to begin the ritual."_
Complete Rokhan's Ritual |q 54137/2 |goto Drustvar/0 36.90,26.46
step
Watch the dialogue
Complete Rokhan's Ritual |invehicle |goto 36.85,26.51 |q 54137
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Crush the Alliance Army |q 54137/3 |goto 38.23,35.90
step
Follow the road |goto 41.27,42.04 < 40 |only if walking
kill Vindicator Caeduum##148380 |q 54137/4 |goto 40.23,48.76
|tip Use the abilities on your action bar.
step
Return to Krazzlefrazz Outpost |outvehicle |q 54137
|tip Click the yellow arrow on your action bar.
step
talk Ransa Greyfeather##135447
turnin In Every Dark Corner##54137 |goto Zuldazar/0 58.07,62.65
|next "Guide_Start"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Fate of Saurfang",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Fate of Saurang storyline.",
},[[
step
Complete "The Return of Derek Proudmoore" Quest |complete completedq(54165)
|tip Use the "War Campaign" guide to accomplish this.
step
talk Dark Ranger Alina##146013
accept The Dark Lady Calls##54097 |goto Zuldazar/0 58.40,62.72
step
Enter the building |goto Orgrimmar/1 49.96,75.75 < 15 |walk
talk Lady Sylvanas Windrunner##146654
|tip Inside the building.
turnin The Dark Lady Calls##54097 |goto Orgrimmar/1 48.32,71.09
accept The High Overlord##54099 |goto Orgrimmar/1 48.32,71.09
step
talk Lady Sylvanas Windrunner##146654
|tip Inside the building.
Choose _<Simply nod.>_
|tip Or
Ask her _"Yes, my queen?"_
Listen to Sylvanas |q 54099/1 |goto 48.32,71.09
step
Watch the dialogue
talk Lady Sylvanas Windrunner##146654
|tip Inside the building.
turnin The High Overlord##54099 |goto 48.32,71.09
accept A Way Out##54100 |goto 48.32,71.09
step
talk Dark Ranger Lyana##146010
turnin A Way Out##54100 |goto Elwynn Forest/0 30.55,57.66
accept On Track##54101 |goto Elwynn Forest/0 30.55,57.66
step
Investigate the Area |q 54101/1 |goto 28.62,61.32
step
click Old Lock
Inspect the Lock |q 54101/2 |goto 28.62,61.32
step
click Loose Mud
Continue Searching |q 54101/3 |goto 33.07,64.20
step
click Muddy Tracks
Follow the Muddy Tracks |q 54101/4 |goto 34.57,63.28
step
Watch the dialogue
kill 3 SI:7 Agent##146702 |q 54101/5 |goto 34.57,63.28
step
_Next to you:_
talk Dark Ranger Lyana
turnin On Track##54101
accept Eastern Escape##54102
step
talk Dark Ranger Lyana##146806
turnin Eastern Escape##54102 |goto Redridge Mountains/0 11.36,66.82
accept Corner Crossing##54103 |goto Redridge Mountains/0 11.36,66.82
step
use the Humanizing Potion##165638
Drink the Humanizing Potion |q 54103/1 |goto 11.36,66.82
step
Question the Guards |q 54103/2 |goto 14.48,63.79
|tip Use the Humanizing Potion again if you lose your disguise.
step
Enter the building |goto 15.88,65.15 < 15 |walk
talk Darcy Parker##379
|tip Inside the building.
|tip Use the Humanizing Potion again if you lose your disguise.
Ask her _"What happened last night?"_
Question Darcy Parker |q 54103/3 |goto 15.62,65.33
step
Enter the building |goto 26.05,42.80 < 15 |walk
talk Innkeeper Brianna##6727
|tip Inside the building.
|tip Use the Humanizing Potion again if you lose your disguise.
Ask her _"Are any guards staying at this inn?"_
Question Innkeeper Brianna |q 54103/4 |goto 26.39,41.43
step
click Official-Looking Note
|tip Upstairs inside the building.
Search the Rooms for Clues |q 54103/5 |goto 25.87,39.72
step
_Next to you:_
talk Marion Sutton
turnin Corner Crossing##54103
accept Signs of Saurfang##54104
step
Investigate the Area |q 54104/1 |goto 24.06,66.90
step
click Ripped Webbing
Find the Ripped Webbing |q 54104/2 |goto 26.39,65.78
step
clicknpc Dead Tarantula Broodling##146715
Inspect the Dead Tarantula |q 54104/3 |goto 27.97,67.46
step
click Spider Ichor
Inspect the Ichor |q 54104/4 |goto 29.10,68.30
step
Watch the dialogue
kill Injured Bristlequeen##146716 |q 54104/5 |goto 29.10,68.30
step
_Next to you:_
talk Dark Ranger Lyana
turnin Signs of Saurfang##54104
accept Ever Eastward##54105
step
talk Dark Ranger Lyana##147210
turnin Ever Eastward##54105 |goto 80.65,46.97
accept Tracking Tipoff##54106 |goto 80.65,46.97
step
use the Humanizing Potion##165638
Drink the Humanizing Potion |q 54106/1 |goto 80.65,46.97
step
Question the Hunter |q 54106/2 |goto 81.41,52.65
|tip Use the Humanizing Potion again if you lose your disguise.
step
Watch the dialogue
kill Hunter McAlister##146717 |q 54106/3 |goto 81.41,52.65
step
_Next to you:_
talk Dark Ranger Lyana
turnin Tracking Tipoff##54106
step
Watch the dialogue
talk Zekhan##146012
Accept Grim Tidings |complete haveq(54107) or completedq(54107) |goto 81.63,50.89 |or |next "Side_With_Saurfang"
|tip Choosing this quest will cause you to side with Saurfang.
|tip
_Or_
|tip
Tell him _"I will not betray my Warchief, troll."_
Accept For the Queen |complete haveq(54754) or completedq(54754) |goto 81.63,50.89 |or |next "Side_With_Sylvanas"
|tip Choosing this quest will cause you to side with Sylvanas.
|tip NOTE: If you choose this option, you will not receive the Worn Cloak toy.
step
label "Side_With_Saurfang"
talk Zekhan##147297
turnin Grim Tidings##54107 |goto Swamp of Sorrows/0 79.79,74.73
accept A Warrior's Death##54108 |goto Swamp of Sorrows/0 79.79,74.73
step
Watch the dialogue
talk Varok Saurfang##146011
Tell him _"I will."_
Kill the enemies that attack in waves
Defend Saurfang |q 54108/1 |goto 80.80,78.74
step
talk Varok Saurfang##146011
turnin A Warrior's Death##54108 |goto 80.79,78.71
step
talk Varok Saurfang##146011
accept Queen's Favor##54109 |goto 80.79,78.71
step
talk Varok Saurfang##146011
Tell him _"I am ready."_
Take the Hit |q 54109/1 |goto 80.79,78.71
step
Enter the building |goto Orgrimmar/1 49.96,75.72 < 15 |walk
talk Lady Sylvanas Windrunner##134711
|tip Inside the building.
turnin Queen's Favor##54109 |goto 48.33,71.15 |next "End"
step
label "Side_With_Sylvanas"
Enter the building |goto Orgrimmar/1 49.96,75.72 < 15 |walk
talk Lady Sylvanas Windrunner##134711
|tip Inside the building.
turnin For the Queen##54754 |goto Orgrimmar/1 48.33,71.15 |next "End"
step
label "End"
_Congratulations!_
You completed "The Fate of Saurang" storyline.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\Trouble in Darkshore (Darkshore Warfront Unlock)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the Trouble in Darkshore storyline to unlock the Darkshore warfront in Patch 8.1.",
},[[
step
talk Dark Ranger Velonara##149471
accept Trouble in Darkshore##54042 |goto Dazar'alor/0 52.98,94.33
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Send me to Darkshore."_
Speak with Dread-Admiral Tattersail to Travel to Darkshore |q 54042/1 |goto Zuldazar/0 58.46,62.99
step
Arrive in Darkshore |goto Darkshore H/0 53.64,20.41 < 1000 |c |noway |q 54042
step
talk Nathanos Blightcaller##146323
turnin Trouble in Darkshore##54042 |goto 53.64,20.41
accept Black Moon Rising##54044 |goto 53.64,20.41
accept Dark Ranger Round-Up##54043 |goto 53.64,20.41
step
talk Shredmaster Blix##146324
accept Quit Vining!##54045 |goto 54.71,21.96
stickystart "Raise_Dark_Rangers"
stickystart "Free_Goblin_Harvesters"
step
kill Lieutenant Golras##146456
Interrogate Lieutenant Golras |q 54044/1 |goto 56.35,35.34
step
kill Lieutenant Maliyra##146458
Interrogate Lieutenant Maliyra |q 54044/3 |goto 46.91,42.17
step
kill Lieutenant Ivyth##146457
Interrogate Lieutenant Ivyth |q 54044/2 |goto 45.53,26.79
step
_Next to you:_
talk Lost Wisp##146536
turnin Black Moon Rising##54044
accept We're Not Out of the Woods Yet##54046
step
label "Raise_Dark_Rangers"
Kill Vindictive enemies around this area
|tip Use the "Command Brynja" ability on their corpses.
|tip It appears as a button on the screen.
|tip It won't work on all of them.
Raise #6# Dark Rangers |q 54043/1 |goto 51.63,37.14
step
label "Free_Goblin_Harvesters"
clicknpc Goblin Harvester##146460+
|tip They look like metal goblin machines stuck in vines on the ground around this area.
Free #6# Goblin Harvesters |q 54045/1 |goto 51.63,37.14
step
talk Shredmaster Blix##146324
turnin Quit Vining!##54045 |goto 54.70,21.98
step
Bring the Lost Wisp to Nathanos |q 54046/1 |goto 53.63,20.41
step
talk Nathanos Blightcaller##146323
turnin We're Not Out of the Woods Yet##54046 |goto 53.63,20.41
turnin Dark Ranger Round-Up##54043 |goto 53.63,20.41
accept The Night Warrior##54059 |goto 53.63,20.41
step
talk Lost Wisp##146539
Tell it _"Show me what happened."_
Watch the dialogue
See the Lost Wisp's Memory |q 54059/1 |goto 53.51,21.33
step
talk Nathanos Blightcaller##146323
turnin The Night Warrior##54059 |goto 53.63,20.41
accept Where Hope Dies##54047 |goto 53.63,20.41
step
Signal Nathanos at Delaryn's Corpse |q 54047/1 |goto 47.49,20.59
|tip Use the "Signal Nathanos" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
kill Sira Moonwarden##146505
Defeat Sira Moonwarden |q 54047/2 |goto 47.78,21.09
step
Watch the dialogue
talk Sira Moonwarden##146758
Choose _"[Kill Sira] I'll take care of it."_
|tip
_Or_
|tip
talk Nathanos Blightcaller##149143
|tip He's standing nearby.
Choose _"[Spare Sira] I won't do it."_
Decide Sira's Fate |q 54047/3 |goto 47.78,21.09
|tip It doesn't matter which you choose.
step
talk Nathanos Blightcaller##149143
turnin Where Hope Dies##54047 |goto 47.89,21.23
accept The Dead of Night##54049 |goto 47.89,21.23
step
Watch the dialogue
talk Nathanos Blightcaller##147187
Choose _<Stand ready to defend the ritual.>_
Speak to Nathanos when Ready |q 54049/1 |goto 47.89,21.23
step
Watch the dialogue
Kill the enemies that attack in waves
kill Tyrande Whisperwind##146989
|tip Use the "Break Free" ability when you become rooted.
|tip It appears as a button on the screen.
clicknpc Dire Bat##147698
|tip It appears nearby after Brynja the Val'kyr dies.
Survive the Val'kyr Ritual |q 54049/2 |goto 47.89,21.23
step
Return to Lor'danel Landing |goto 54.46,21.04 < 20 |c |q 54049
step
talk Sira Moonwarden##146601
turnin The Dead of Night##54049 |goto 54.63,20.83
accept Aftermath##54050 |goto 54.63,20.83
step
talk Nathanos Blightcaller##146323
Ask him _"What did you want to show me?"_
Watch the dialogue
Speak to Nathanos |q 54050/1 |goto 51.76,21.65
step
talk Nathanos Blightcaller##146323
turnin Aftermath##54050 |goto 51.76,21.65
accept Warfront Preparations##54416 |goto 51.76,21.65
step
click Portal to Port of Zandalar
Take the Portal to Zandalar |q 54416/1 |goto 52.71,21.28
step
talk Throk##138949
turnin Warfront Preparations##54416 |goto Dazar'alor/0 52.91,94.52
step
_Congratulations!_
You unlocked the Darkshore warfront.
]])
ZGV.DevEnd()
