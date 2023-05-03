local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brawler's Guild\\Battle for Azeroth Brawler's Guild", {
startlevel=50,
description="\nThis guide will help you achieve rank 8 in the Brawler's Guild.",
},[[
step
collect Blood-Soaked Invitation##166805 |goto Deeprun Tram/2 72.64,18.96
|tip This comes from killing enemies in Zuldazar or Kul Tiras zones.
|tip If you aren't having luck with the drop, you can buy one for 100g from A. Shady.
|tip A. Shady randomly spawns in Bizmo's Brawlpub and exits via the ramp.
|only if not achieved(11558)
step
use the Blood-Soaked Invitation##166805
Earn "The First Rule of Brawler's Guild" Achievement |achieve 11558
step
label "Queue_For_Bruce"
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
only if ZGV:GetReputation(2011).friendRep<500
step
kill Thog Hammerspace##149717
|tip He will drop his hammers during the fight.
|tip Stepping on them will cause you to take massive shadow damage, so avoid them.
Defeat Thog Hammerspace |complete ZGV:GetReputation(2011).friendRep>=500 |or
'|complete isdead |next "Queue_For_Thog" |or
step
label "Queue_For_Grandpa_Grumplefloot"
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
only if ZGV:GetReputation(2011).friendRep<750
step
kill Grandpa Grumplefloot##70678
|tip During the fight, avoid Red and Yellow Luckydos.
|tip When he casts "Cantata of Flooting", interrupt it as soon as possible.
Defeat Grandpa Grumplefloot |complete ZGV:GetReputation(2011).friendRep>=750 |or
'|complete isdead |next "Queue_For_Grandpa_Grumplefloot" |or
step
label "Queue_For_Ash'katzuum"
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
talk Bizmo's Brawlpub Bouncer##68408
Tell him _"Yes, sign me up for a fight!"_
|tip You will be queued to enter the arena.
Queue for a Match |havebuff 458971 |goto 62.12,34.89
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
condition_end=function() return completedq(12491) end,
description="\nThis guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Dwarf Commoner##19148
accept Brewfest!##11441 |goto Ironforge/0 30.87,71.97
step
talk Ipfelkofer Ironkeg##24710
turnin Brewfest!##11441 |goto Dun Morogh/0 55.12,38.08
step
talk Boxey Boltspinner##27215
accept Chug and Chuck!##12022 |goto 54.71,38.04
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They look like mugs of beer on the small tables inside this tent.
collect Alcohol-Free Brewfest Sampler##169219 |n
use the Alcohol-Free Brewfest Sampler##169219
|tip Face yourself towards the Self-Turning and Oscillating Utility Target behind the tent.
Hit the S.T.O.U.T. #5# Times |q 12022/1 |goto 54.74,37.92
step
talk Boxey Boltspinner##27215
turnin Chug and Chuck!##12022 |goto 54.71,38.04
step
talk Neill Ramstein##23558
accept Now This is Ram Racing... Almost.##11318 |goto 53.65,38.55
step
As you run around on the ram:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so.
Maintain a Trot for 8 Seconds |q 11318/1
step
As you run around on the ram:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Giddyup! ability a little more often than when you made the ram Trot.
Maintain a Canter for 8 Seconds |q 11318/2
step
As you run around on the ram:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Giddyup! ability.
Maintain a Gallop for 8 Seconds |q 11318/3
step
Stop Riding the Ram |nobuff spell:43883 |q 11318
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin Now This is Ram Racing... Almost.##11318
accept There and Back Again##11122 |goto 53.65,38.55
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 25
path	53.51,38.58	53.37,39.66	54.07,41.82	54.42,43.28	54.16,47.85
path	53.49,49.07	53.50,50.89	53.68,51.80
Follow the waypoint path:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver #3# Kegs in Under 4 Minutes |q 11122/1
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
Stop Riding the Ram |nobuff spell:43880 |q 11122
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin There and Back Again##11122 |goto 53.65,38.55
step
talk Pol Amberstill##24468
accept A New Supplier of Souvenirs##29397 |goto 53.54,38.57
step
talk Goldark Snipehunter##23486
accept Catch the Wild Wolpertinger!##11117 |goto 55.06,37.71
step
talk Goldark Snipehunter##23486
Ask him _"What are Synthebrew Goggles?"_
Tell him _"I'd like a pair of Synthebrew Goggles."_
collect Synthebrew Goggles##46735 |goto 55.06,37.71 |q 11117
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11117
step
use the Wolpertinger Net##32907
|tip Use it on Wild Wolpertingers.
|tip They look like small rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11117/1 |goto 54.5,38.5
step
Equip your Helm |nobuff spell:65607 |q 11117
|tip Remove the Synthebrew Goggles.
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto 55.06,37.71
accept Pink Elekks On Parade##11118 |goto 55.06,37.71
step
talk Belbi Quikswitch##23710
turnin A New Supplier of Souvenirs##29397 |goto 56.44,37.64
step
Equip your Helm |nobuff spell:65607 |q 11118
|tip Remove the Synthebrew Goggles.
step
Go to Elwynn Forest |goto Elwynn Forest/0 33.59,51.44 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Elwynn Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Elwynn Pink Elekk |q 11118/2 |goto 33.59,51.44
step
Equip your Helm |nobuff spell:65607 |q 11118
|tip Remove the Synthebrew Goggles.
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 11118
step
Go to Darnassus |goto Darnassus/0 67.00,46.37 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Teldrassil Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Teldrassil Pink Elekks |q 11118/3 |goto Darnassus/0 67.00,46.37
step
Equip your Helm |nobuff spell:65607 |q 11118
|tip Remove the Synthebrew Goggles.
step
Go to The Exodar |goto The Exodar/0 79.18,57.47 < 100 |c |q 11118
|tip Go to this spot at the entrance to The Exodar before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Azuremyst Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Azuremyst Pink Elekks |q 11118/1 |goto The Exodar/0 79.18,57.47
step
Equip your Helm |nobuff spell:65607 |q 11118
|tip Remove the Synthebrew Goggles.
step
talk Goldark Snipehunter##23486
turnin Pink Elekks On Parade##11118 |goto Dun Morogh/0 55.06,37.71
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
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto Dun Morogh/0 55.13,38.07
step
talk Britta Steinheart##153574
accept Brewfest Chowdown##56764 |goto 54.81,38.59
step
click Chowdown Participant's Seat
|tip Use the first ability to eat sausages until your Choke Meter starts to fill
|tip When it is near full, use the "Refreshing Brew" ability to lower the bar.
|tip When your plate is empty, use the "New Plate" ability to call for more sausages.
Participate in the Brewfest Chowdown |q 56764/1 |goto 54.89,38.56
step
talk Britta Steinheart##153574
turnin Brewfest Chowdown##56764 |goto 54.81,38.59
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="\nThis guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(11118)
|tip Complete the quest "Pink Elekks On Parade."
step
label "Begin_Dailies"
talk Becan Barleybrew##23627
accept Bark for the Barleybrews!##11293 |goto Dun Morogh/0 55.99,38.06 |or
talk Daran Thunderbrew##23628
accept Bark for the Thunderbrews!##11294 |goto 56.52,36.85 |or
|tip You will only be able to accept one of these quests per day.
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 16.27,84.45 |c |q 11293
|only if haveq(11293) or completedq(11293)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 16.27,84.45 |c |q 11294
|only if haveq(11294) or completedq(11294)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11293/1 |goto Ironforge/0 31.76,66.83
|only if haveq(11293) or completedq(11293)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11293/2 |goto 61.12,80.00
|only if haveq(11293) or completedq(11293)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11293/3 |goto 65.54,24.24
|only if haveq(11293) or completedq(11293)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11293/4 |goto 29.46,14.44
|only if haveq(11293) or completedq(11293)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11294/1 |goto 31.76,66.83
|only if haveq(11294) or completedq(11294)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11294/2 |goto 61.12,80.00
|only if haveq(11294) or completedq(11294)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11294/3 |goto 65.54,24.24
|only if haveq(11294) or completedq(11294)
step
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11294/4 |goto 29.46,14.44
|only if haveq(11294) or completedq(11294)
step
Stop Riding the Ram |nobuff spell:43883
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Becan Barleybrew##23627
turnin Bark for the Barleybrews!##11293 |goto Dun Morogh/0 55.99,38.06
|only if haveq(11293) or completedq(11293)
step
talk Daran Thunderbrew##23628
turnin Bark for the Thunderbrews!##11294 |goto 56.52,36.85
|only if haveq(11294) or completedq(11294)
step
talk Neill Ramstein##23558
accept Brew For Brewfest##29394 |goto 53.65,38.55
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 25
path	53.51,38.58	53.37,39.66	54.07,41.82	54.42,43.28	54.16,47.85
path	53.49,49.07	53.50,50.89	53.68,51.80
Follow the waypoint path:
Use the _"Giddyup!"_ ability
|tip It appears as a button on the screen.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can Within 4 Minutes |nobuff spell:43880
step
Wait for the event to start
|tip Every 30 minutes an event will start.
|tip You will be able to complete one of these event quests each day.
|tip Completing a quest will make you ineligible to accept the others until the following daily reset.
Kill enemies that attack in waves
|tip Participate or watch the event and chase off the invaders.
|tip Afterwards, one of the following objects will be left on the ground.
click Hozen Totem
accept Hozen Totem##56372 |goto 55.55,37.65 |or
click Direbrew Cog
accept Direbrew Cog##56341 |goto 55.55,37.65 |or
click Pandaren Keg
accept Contained Alemental##56322 |goto 55.55,37.65 |or
step
talk Arcti##152829
turnin Hozen Totem##56372 |goto 55.36,38.32
|only if haveq(56372)
step
talk Verra Fireblood##152941
turnin Direbrew Cog##56341 |goto 56.24,37.79
|only if haveq(56341)
step
talk Brewmaster Tsing##73913
turnin Contained Alemental##56322 |goto 56.02,36.45
|only if haveq(56322)
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11293,11294,56372,56341,56322) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return achieved(1185) and achieved(303) and achieved(2796) and achieved(1936) and achieved(295) and achieved(1683) and achieved(1260) and achieved(293) and achieved(1183) end,
description="\nThis guide section will walk you through completing the achievements for the Brewfest event.",
},[[
step
talk Arlen Lochlan##23522
buy 1 The Essential Brewfest Pretzel##33043 |n
use The Essential Brewfest Pretzel##33043
Eat "The Essential Brewfest Pretzel" |achieve 1185/7 |goto Dun Morogh/0 55.60,38.32
step
talk Anne Summers##23521
buy 1 Spiced Onion Cheese##34065 |n
use Spiced Onion Cheese##34065
Eat the "Spiced Onion Cheese" |achieve 1185/4 |goto 56.20,36.62
step
talk Keiran Donoghue##23481
buy 1 Dried Sausage##34063 |n
use Dried Sausage##34063
Eat the "Dried Sausage" |achieve 1185/1 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Succulent Sausage##34064 |n
use Succulent Sausage##34064
Eat the "Succulent Sausage" |achieve 1185/6 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Savory Sausage##33023 |n
use Savory Sausage##33023
Eat the "Savory Sausage" |achieve 1185/3 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Pickled Sausage##33024 |n
use Pickled Sausage##33024
Eat the "Pickled Sausage" |achieve 1185/2 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Spicy Smoked Sausage##33025 |n
use Spicy Smoked Sausage##33025
Eat Spicy "Smoked Sausage" |achieve 1185/5 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 The Golden Link##33026 |n
use The Golden Link##33026
Eat The Golden Link |achieve 1185/8 |goto 55.33,37.16
step
Earn "The Brewfest Diet" Achievement |achieve 1185 |goto 55.33,37.16
step
talk Belbi Quikswitch##23710
buy 1 Fresh Brewfest Hops##37750 |n
|tip You must be at least level 10 to buy this.
use the Fresh Brewfest Hops##37750
Make your Mount Festive for Brewfest! |achieve 303 |goto 56.44,37.64
step
Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
collect 200 Brewfest Prize Token##37829 |achieve 2796
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |n
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420 |goto 56.43,37.64
step
Enter the building |goto Ironforge/0 20.67,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto 18.77,53.29
step
Earn the "Brew of the Month" Achievement |achieve 2796 |goto 18.77,53.29
step
If you are on the EU servers go here to buy your Wolpertinger Pet
buy Wolpertinger's Tankard##32233 |n
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936 |goto Dun Morogh/0 56.43,37.64
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
collect 350 Brewfest Prize Token##37829
talk Belbi Quikswitch##23710 |goto Dun Morogh/0 56.43,37.64
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
description="\nThis guide will help to defend Teldrassil against the incoming Horde attack..",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(53310) end,
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |complete not ZGV.InPhase('Old Darnassus') or not completedq(53310) |goto 48.86,24.46 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Kul Tiras Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Kul Tiras questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(53865) end,
startlevel=10,
},[[
step
Run up the stairs |goto Boralus/0 44.22,57.84 < 15 |only if walking
Run down the stairs |goto 41.65,44.93 < 15 |only if walking
Enter the building |goto 48.16,39.43 < 10 |walk
talk Orphan Matron Westerson##145291
|tip Inside the building.
accept Children's Week##53811 |goto 48.00,40.26
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin Children's Week##53811 |goto 48.00,40.26
accept The Mountain Folk##53859 |goto 48.00,40.26
accept Yo Ho, Yo Ho!##53861 |goto 48.00,40.26
accept The Squid Shrine##53862 |goto 48.00,40.26
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit the Roughnecks |q 53859/1 |goto Tiragarde Sound/0 42.46,22.61
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Shrine of the Storm |q 53862/1 |goto Stormsong Valley/0 72.59,49.92
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Freehold |q 53861/1 |goto Tiragarde Sound/0 79.82,82.50
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin The Mountain Folk##53859 |goto 79.82,82.50
turnin Yo Ho, Yo Ho!##53861 |goto 79.82,82.50
turnin The Squid Shrine##53862 |goto 79.82,82.50
accept Bird Friends##53863 |goto 79.82,82.50
accept Shapeshifters!##53864 |goto 79.82,82.50
step
Follow the path |goto Drustvar/0 38.93,49.78 < 20 |only if walking
Continue following the path |goto 43.87,41.79 < 20 |only if walking
Continue up the path |goto 46.61,39.29 < 15 |only if walking
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Ulfar's Den |q 53864/1 |goto 46.31,44.59
step
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Visit Arom's Stand |q 53863/1 |goto Drustvar/0 36.03,51.19
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin Bird Friends##53863 |goto 36.03,51.19
turnin Shapeshifters!##53864 |goto 36.03,51.19
accept Return to the Orphanage##53865 |goto 36.03,51.19
step
Run up the stairs |goto Boralus/0 44.22,57.84 < 15 |only if walking
Run down the stairs |goto 41.65,44.93 < 15 |only if walking
Enter the building |goto 48.16,39.43 < 10 |walk
use the Kul Tiran Orphan Whistle##164772
|tip Ensure that you have your orphan, Liam, summoned.
Return to the Orphanage |q 53865/1 |goto 48.00,40.26
step
use the Kul Tiran Orphan Whistle##164772
_Next to you:_
talk Liam##145394
turnin Return to the Orphanage##53865 |goto 48.00,40.26
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Stormwind Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Stormwind questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(171) end,
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
accept Children's Week##1468 |goto Stormwind City/0 56.31,54.00
step
use the Human Orphan Whistle##18598
_Next to you:_
talk Human Orphan##14305
turnin Children's Week##1468 |goto 56.31,54.00
accept Cruisin' the Chasm##29093 |goto 56.31,54.00
accept The Biggest Diamond Ever!##29106 |goto 56.31,54.00
accept Our New Friends##54130 |goto 56.31,54.00
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Visit the Stormwind Embassy with your Orphan |q 54130/1 |goto 53.35,15.36
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
clicknpc Rental Chopper##52189
Jump in the Chopper |invehicle |q 29093 |goto Westfall/0 57.76,53.04
step
Watch the dialogue
Take a Chopper Tour of the Raging Chasm |q 29093/1
step
Run down the ramp |goto Ironforge/0 44.16,51.94 < 5 |walk
Run up the stairs |goto Ironforge/1 58.29,49.21 < 5 |walk
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Visit King Magni in Old Ironforge |q 29106/1 |goto 34.40,51.26
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin The Biggest Diamond Ever!##29106 |goto 34.40,51.26
turnin Cruisin' the Chasm##29093 |goto 34.40,51.26
turnin Our New Friends##54130 |goto 34.40,51.26
accept Let's Go Fly a Kite##29117 |goto 34.40,51.26
accept You Scream, I Scream...##29119 |goto 34.40,51.26
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Dragon Kite 2-Pack##68890 |q 29117 |goto Stormwind City/0 57.33,65.64
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use the Dragon Kite 2-Pack##68890
Fly Dragon Kites with Your Orphan |q 29117/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin Let's Go Fly a Kite##29117
step
talk Hans Coldhearth##52421
buy 1 Cone of Cold##69027 |q 29119 |goto 48.97,89.74
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Cone of Cold##69027
Take Your Orphan Out for Ice Cream |q 29119/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin You Scream, I Scream...##29119
accept A Warden of the Alliance##171
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Foam Sword Rack##69057 |q 171/1 |goto 57.33,65.64
step
talk Orphan Matron Nightingale##51988
turnin A Warden of the Alliance##171 |goto 56.31,54.00
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Shattrath questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(10966) end,
startlevel=10,
},[[
step
talk Orphan Matron Mercy##22819
accept Children's Week##10943 |goto Shattrath City/0 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan.
_Next to you:_
talk Draenei Orphan##22818
turnin Children's Week##10943 |goto 75.08,47.90
accept Auchindoun and the Ring of Observance##10950 |goto 75.08,47.90
accept A Trip to the Dark Portal##10952 |goto 75.08,47.90
accept Jheel is at Aeris Landing!##10954 |goto 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Aeris Landing |q 10954/1 |goto Nagrand/0 31.47,57.49
step
talk Jheel##22836
turnin Jheel is at Aeris Landing!##10954 |goto 31.49,57.61
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Ring of Observance |q 10950/1 |goto Terokkar Forest/0 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Auchindoun and the Ring of Observance##10950 |goto 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Dark Portal |q 10952/1 |goto Hellfire Peninsula/0 88.68,50.22
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin A Trip to the Dark Portal##10952 |goto 88.68,50.22
accept The Seat of the Naaru##10956 |goto 88.68,50.22
accept Time to Visit the Caverns##10962 |goto 88.68,50.22
step
Follow the path down |goto Tanaris/17 63.40,30.36 < 15 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Caverns of Time |q 10962/2 |goto Tanaris/18 53.14,56.80
step
talk Alurmi##21643
buy 1 Toy Dragon##31951 |q 10962/1 |goto Tanaris/17 39.94,77.30
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Time to Visit the Caverns##10962 |goto 39.94,77.30
step
Follow the path |goto The Exodar/0 63.31,41.65 < 10 |only if walking
Run down the ramp |goto 59.68,33.99 < 10 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Seat of the Naaru |q 10956/1 |goto 57.59,41.21
step
talk O'ros##17538
turnin The Seat of the Naaru##10956
accept Call on the Farseer##10968 |goto 57.94,41.42
step
Run up the ramp |goto 54.69,36.29 < 10 |only if walking
Follow the path |goto 42.78,32.19 < 10 |only if walking
Continue following the path |goto 36.91,31.41 < 10 |only if walking
Continue following the path |goto 31.63,36.27 < 10 |only if walking
Run up the ramp |goto 26.97,29.79 < 7 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Farseer Nobundo |q 10968/1 |goto 31.09,28.11
step
talk Farseer Nobundo##17204
|tip He walks around this area.
turnin Call on the Farseer##10968 |goto 30.82,30.80
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
accept Back to the Orphanage##10966
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10966 |goto Shattrath City/0 75.08,47.90
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) or completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.36,63.26
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13926/1 |goto 49.36,63.26
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
turnin Little Orphan Roo Of The Oracles##13926 |goto 49.36,63.26
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
accept The Biggest Tree Ever!##13929 |goto 49.36,63.26
accept The Bronze Dragonshrine##13933 |goto 49.36,63.26
accept Playmates!##13950 |goto 49.36,63.26
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Grizzlemaw |q 13929/1 |goto 50.68,44.09
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Biggest Tree Ever!##13929 |goto 50.68,44.09
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
Follow the path up |goto 69.51,44.06 < 10 |only if walking
Continue up the path |goto 69.77,42.63 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit the Bronze Dragonshrine |q 13933/1 |goto 71.11,41.10
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Bronze Dragonshrine##13933 |goto 71.11,41.10
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Winterfin Retreat |q 13950/1 |goto Borean Tundra/0 43.55,13.65
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Playmates!##13950 |goto 43.55,13.65
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept The Dragon Queen##13954 |goto 43.55,13.65
accept Meeting a Great One##13956 |goto 43.55,13.65
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit The Etymidian |q 13956/1 |goto Un'Goro Crater/0 47.60,9.17
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Meeting a Great One##13956 |goto 47.60,9.17
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Roo to Visit Alexstrasza the Life-Binder |q 13954/1 |goto Dragonblight/0 59.84,54.59
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Dragon Queen##13954 |goto 59.84,54.59
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept A Trip To The Wonderworks##13937 |goto 59.84,54.59
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13937 |goto 44.82,45.63
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
use the Small Paper Zeppelin##46693
|tip Use it on your Oracle Orphan.
Throw the Small Paper Zeppelin to Roo |q 13937/1 |goto 44.82,45.63
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin A Trip To The Wonderworks##13937 |goto 44.82,45.63
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept Back To The Orphanage##28879 |goto 44.82,45.63 |or
accept Back To The Orphanage##13959 |goto 44.82,45.63 |or
step
Leave the building |goto 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28879 |goto 49.35,63.25 |only if haveq(28879) or completedq(28879)
turnin Back To The Orphanage##13959 |goto 49.35,63.25 |only if haveq(13959) or completedq(13959)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) or completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.35,63.25
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13927/1 |goto 49.35,63.25
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
turnin Little Orphan Kekek Of The Wolvar##13927 |goto 49.35,63.25
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
accept Home Of The Bear-Men##13930 |goto 49.35,63.25
accept The Bronze Dragonshrine##13934 |goto 49.35,63.25
accept Playmates!##13951 |goto 49.35,63.25
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Grizzlemaw |q 13930/1 |goto 50.68,44.09
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Home Of The Bear-Men##13930 |goto 50.68,44.09
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
Follow the path up |goto 69.51,44.06 < 10 |only if walking
Continue up the path |goto 69.77,42.63 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit the Bronze Dragonshrine |q 13934/1 |goto 71.11,41.10
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Bronze Dragonshrine##13934 |goto 71.11,41.10
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Snowfall Glade |q 13951/1 |goto Dragonblight/0 45.28,63.29
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Playmates!##13951 |goto 45.28,63.29
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept The Dragon Queen##13955 |goto 45.28,63.29
accept The Mighty Hemet Nesingwary##13957 |goto 45.28,63.29
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Kekek to Visit Alexstrasza the Life-Binder |q 13955/1 |goto Dragonblight/0 59.84,54.59
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Dragon Queen##13955 |goto 59.84,54.59
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Hemet Nesingwary |q 13957/1 |goto Sholazar Basin/0 27.13,59.23
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Mighty Hemet Nesingwary##13957 |goto 27.13,59.23
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept A Visit To The Wonderworks##13938 |goto 27.13,59.23
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13938 |goto 44.82,45.63
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
use Small Paper Zeppelin##46693
|tip Use it on your Wolvar Orphan.
Throw the Small Paper Zeppelin to Kekek |q 13938/1 |goto 44.82,45.63
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin A Visit To The Wonderworks##13938 |goto 44.82,45.63
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept Back To The Orphanage##28880 |goto 44.82,45.63 |or
accept Back To The Orphanage##13960 |goto 44.82,45.63 |or
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
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Aw, Isn't It Cute?" Achievement.
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
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
talk Emmithue Smails##14481
buy 1 Tigule's Strawberry Ice Cream##7228 |achieve 1788 |goto Stormwind City/0 61.30,75.02
step
talk Auctioneer Fitch##8719
|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
collect 1 Tasty Cupcake##43490 |achieve 1788 |goto 61.16,70.78
collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto 61.16,70.78
step
talk Aimee##29548
buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.17,29.07
buy 1 Lovely Cake##42438 |achieve 1788 |goto 51.17,29.07
buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto 51.17,29.07
buy 1 Dalaran Brownie##42431 |achieve 1788 |goto 51.17,29.07
step
use the Lovely Cake##42438
|tip Use it to place a cake on the ground.
click Lovely Cake
collect 1 Lovely Cake Slice##42434 |achieve 1788
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
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
You Earned the "Bad Example" Achievement.
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
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Complete any 5 daily quests of your choice:
|tip World Quests do not count for this achievement.
|tip Use the various daily quest guides to complete this.
|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
|achieve 1789
step
_Congratulations!_
You Earned the "Daily Chores" Achievement.
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
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
kill King Ymiron##26861
|tip Inside the Utgarde Pinnacle dungeon.
|tip He's the final boss of the instance.
|achieve 1790 |goto Utgarde Pinnacle/2 42.60,53.50
step
_Congratulations!_
You Earned the "Hail To The King, Baby" Achievement.
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
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Hearthstone##6948
|tip Use it while your Orphan is standing next to you.
|achieve 1791
step
_Congratulations!_
You Earned the "Home Alone" Achievement.
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
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Eye of the Storm battleground and capture the flag.
Capture the flag in Eye of the Storm |achieve 1786/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Alterac Valley battleground and assault a tower.
Assault a Tower in Alterac Valley |achieve 1786/2
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Arathi Basin battleground and assault a flag.
Assault a Flag in Arathi Basin |achieve 1786/3
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Warsong Gulch battleground and return a fallen flag.
Return a fallen Flag in Warsong Gulch |achieve 1786/4
step
_Congratulations!_
You Earned the "School of Hard Knocks" Achievement.
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
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Veteran Nanny" Achievement.
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
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
leechsteps "Events Guides\\Children's Week\\Achievements\\Bad Example" 2-12
leechsteps "Events Guides\\Children's Week\\Achievements\\Daily Chores" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Home Alone" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\School of Hard Knocks" 2-5
step
|achieve 1793
step
_Congratulations!_
You Earned the "For the Children" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests",{
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="\nThis guide will help you navigate through the Darkmoon Faire Event",
},[[
step
talk Darkmoon Faire Mystic Mage##54334
accept The Darkmoon Faire##7905 |goto Stormwind City/0 62.26,72.96
step
talk Innkeeper Farley##295
|tip Inside the building.
buy 5 Moonberry Juice##1645 |goto Elwynn Forest/0 43.77,65.81 |q 29506 |future
|only if skill("Alchemy") >= 75
step
talk Tharynn Bouden##66
buy 5 Light Parchment##39354 |goto 41.89,67.08 |q 29515 |future
|only if skill("Inscription") >= 75
step
talk Tharynn Bouden##66
buy 1 Coarse Thread##2320 |goto 41.89,67.08 |q 29520 |future
buy 1 Blue Dye##6260 |goto 41.89,67.08 |q 29520 |future
buy 1 Red Dye##2604 |goto 41.89,67.08 |q 29520 |future
|only if skill("Tailoring") >= 75
step
talk Tharynn Bouden##66
buy 5 Coarse Thread##2320 |goto 41.89,67.08 |q 29517 |future
buy 5 Blue Dye##6260 |goto 41.89,67.08 |q 29517 |future
buy 10 Shiny Bauble##6529 |goto 41.89,67.08 |q 29517 |future
|only if skill("Leatherworking") >= 75
step
talk Tharynn Bouden##66
buy 5 Simple Flour##30817 |goto 41.89,67.08 |q 29509 |future
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
collect 20 Darkmoon Faire Game Token##71083 |q 7905
step
talk Gelvas Grimegate##14828
turnin The Darkmoon Faire##7905 |goto 47.90,64.74
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
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Darkmoon Faire Achievements", {
condition_suggested=function() return isevent('Darkmoon Faire') end,
description="\nThis guide will help you navigate through the Darkmoon Faire Event",
},[[
step
label "main"
To earn Achievements for the Darkmoon Faire, you will need to complete Dailies, Quests and other tasks
Click here to do the Dailies Achievements |confirm always |next "dailies"
or
Click here to do the Profession Quests Achievements |confirm always |next "professions"
or
Click here for the Non-Questing Achievements |confirm always |next "no_quest"
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
You still need to earn the Achievement Darkmoon Despoiler |achieve 6029 |only if not achieved(6029) |tip
confirm always
leechsteps "Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests"
step
These next 3 items have to be _obtained from Battlegrounds_
When you kill an opponent, _loot_ their body for a chance to get _each item_
collect Adventurer's Journal##71953 |n
accept The Captured Journal##29458 |use Adventurer's Journal##71953
collect Banner of the Fallen##71951 |n
accept A Captured Banner##29456 |use Banner of the Fallen##71951
collect Captured Insignia##71952 |n
accept The Enemy's Insignia##29457 |use Captured Insignia##71952
step
These next 5 items have to be _obtained from Dungeons_ listed below
collect Mysterious Grimoire##71637 |n
|tip You can get this in Heroic Scholomance from Darkmaster Gandling.
accept An Inriguing Grimoire##29445 |use Mysterious Grimoire##71637
collect Monstrous Egg##71636 |n
|tip You can get this in Stormstout Brewery from Hoptallus.
accept An Exotic Egg##29444 |use Monstrous Egg##71636
collect A Treatise on Strategy##71715 |n
|tip You can get this in Stormstout Brewery from Hoptallus.
accept The Master Strategist##29451 |use A Treatise on Strategy##71715
collect Ornate Weapon##71638 |n
|tip You can get this in Heroic Scarlet Monastery from Brother Korloff.
accept A Wondrous Weapon##29446 |use Ornate Weapon##71638
collect Imbued Crystal##71635 |n
|tip You can get this in Heroic Scarlet Monastery from High Inquisitor Whitemane.
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
You have earned the Achievement Taking the Show on the Road! |achieve 6030 |only if achieved(6030)
You still need to earn the Taking the Show on the Road! |achieve 6030 |only if not achieved(6030)
You have earned the Achievement I Was Promised a Pony! |achieve 6025 |only if achieved(6025)
You still need to earn the I Was Promised a Pony! |achieve 6025 |only if not achieved(6025) |tip
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
buy 1 Darkmoon Dog##19223 |n |goto Darkmoon Island/0 52.89,67.94
Eat Darkmoon Dog |achieve 6026/3 |use Darkmoon Dog##19223
buy 1 Spiced Beef Jerky##19304 |n |goto Darkmoon Island/0 52.89,67.94
Eat Spiced Beef Jerky |achieve 6026/10 |use Spiced Beef Jerky##19304
buy 1 Pickled Kodo Foot##19305 |n |goto Darkmoon Island/0 52.89,67.94
Eat Pickled Kodo Foot |achieve 6026/7 |use Pickled Kodo Foot##19305
buy 1 Red Hot Wings##19224 |n |goto Darkmoon Island/0 52.89,67.94
Eat Red Hot Wings |achieve 6026/8 |use Red Hot Wings##19224
buy 1 Crunchy Frog##19306 |n |goto Darkmoon Island/0 52.89,67.94
Eat Crunchy Frog |achieve 6026/2 |use Crunchy Frog##19306
buy 1 Deep Fried Candybar##19225 |n |goto Darkmoon Island/0 52.89,67.94
Eat Deep Fried Candybar |achieve 6026/4 |use Deep Fried Candybar##19225
buy 1 Funnel Cake##33246 |n |goto Darkmoon Island/0 52.89,67.94
Eat Funnel Cake |achieve 6026/6 |use Funnel Cake##33246
buy 1 Forest Strider Drumstick##33254 |n |goto Darkmoon Island/0 52.89,67.94
Eat Forest Strider Drumstick |achieve 6026/5 |use Forest Strider Drumstick##33254
buy 1 Corn-Breaded Sausage##44940 |n |goto Darkmoon Island/0 52.89,67.94
Eat Corn-Breaded Sausage |achieve 6026/1 |use Corn-Breaded Sausage##44940
buy 1 Salty Sea Dog##73260 |n |goto Darkmoon Island/0 52.89,67.94
Eat Salty Sea Dog |achieve 6026/9 |use Salty Sea Dog##73260
Earn the Achievement Fairegoer's Feast |achieve 6026
step
clicknpc Darkmoon Pony##55715
Earn the Achievement I Was Promised a Pony |achieve 6025 |goto Darkmoon Island/0 56.8,81.4
step
talk Boomie Sparks##55278
buy 6 Darkmoon Firework##74142 |goto Darkmoon Island/0 48.4,71.9
step
Use your Darkmoon Firework |achieve 6030/6 |use Darkmoon Firework##74142 |goto Stormwind City 55,55
step
Use your Darkmoon Firework |achieve 6030/4 |use Darkmoon Firework##74142|goto Ironforge 56,47
step
Use your Darkmoon Firework |achieve 6030/2 |use Darkmoon Firework##74142 |goto Darnassus 46,44
step
Use your Darkmoon Firework |achieve 6030/3 |use Darkmoon Firework##74142|goto The Exodar 53,38
step
Use your Darkmoon Firework |achieve 6030/5 |use Darkmoon Firework##74142 |goto Shattrath City 62,42
step
Use your Darkmoon Firework |achieve 6030/1 |use Darkmoon Firework##74142 |goto Dalaran 71,45
step
Click Darkmoon Deathmatch Gate and enter the Deathmatch Arena
Once inside, you will need to fight anyone inside, if you win, you will earn an achievement
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
|tip Spam 1 on your action bar as soon as you get in the arena.
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
Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |goto Darkmoon Island/0 48.4,87.7
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
Choose the _Racing Strider_ |havebuff Interface\Icons\Ability_Hunter_Pet_TallStrider |goto Darkmoon Island/0 48.4,87.7
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
In order to earn the Big Rocketeer set of achievements, you will need to complete the Real Big Race quest within 30, 25, and 20 tolls, WHILE using the Rocketeer mount
confirm
stickystart "rbr"
step
talk Patti Earnhard##90473
accept The Real Big Race##37911 |goto 53.18,87.56
step
Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |goto Darkmoon Island/0 48.4,87.7
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
Choose the _Rocketeer_ |havebuff Interface\Icons\ability_mount_blackbattlestrider |goto Darkmoon Island/0 48.4,87.7
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
Fly through the rings in order to stack _Blazing Ring_ buffs
|tip Zoom your camera out as far as you can, so you can see how high or low the rings are.
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
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\\Blight Boar Concert", {
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
collect Gently Shaken Gift##187520 |goto Ironforge/0 33.65,66.04 |or
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
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7045) or achieved(277) |or |only if level >= 15
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7063) or achieved(277) |or |only if default
step
#include "auctioneer_ironforge"
buy 1 Red Winter Clothes##151790 |next "Collect_Winter_Boots" |or
buy 1 Green Winter Clothes##151792 |next "Collect_Winter_Boots" |or
|tip You only need one of these.
|tip They need to be uncommon (green) quality set items.
_Or_ |only if skill("Tailoring") >= 250
Click Here to Craft Clothes with Tailoring |confirm |next "Craft_Winter_Clothes" |only if skill("Tailoring") >= 250 |or
'|complete achieved(277) |or
step
label "Craft_Winter_Clothes"
talk Wulmort Jinglepocket##13433
buy 1 Pattern: Red Winter Clothes##34319 |goto Ironforge/0 33.60,67.92 |or
'|complete achieved(277) |or
step
use the Pattern: Red Winter Clothes##34319
learn Red Winter Clothes##44958 |or
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
talk Bombus Finespindle##5128
|tip Inside the building.
buy 1 Rune Thread##14341 |goto 39.61,34.47
buy 2 Red Dye##2604 |goto 39.61,34.47
|only if not achieved(277)
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total |or
'|complete achieved(277) |or
step
create 4 Bolt of Runecloth##18401,Tailoring,4 total |or
'|complete achieved(277) |or
step
create 1 Red Winter Clothes##44958,Tailoring,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Boots"
#include "auctioneer_ironforge"
buy 1 Winter Boots##151791 |next "Collect_Winter_Hat" |or
|tip They need to be uncommon (green) quality set boots.
_Or_ |only if skill("Leatherworking") >= 285
Click Here to Craft Boots with Leatherworking |confirm |next "Create_Winter_Boots" |only if skill("Leatherworking") >= 285 |or
'|complete achieved(277) |or
step
label "Create_Winter_Boots"
talk Wulmort Jinglepocket##13433
buy Pattern: Winter Boots##34262 |goto 33.60,67.92 |or
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
achieveid={1690},
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
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7043) or achieved(1690)
step
collect 1 Winter Veil Disguise Kit##17712 |or
|tip This should appear in your mailbox within 24 hours of completing the quest guide.
'|complete hastoy(17712) |or
step
talk Wulmort Jinglepocket##13433
buy 1 Snowball##17202 |goto Ironforge/0 33.57,67.94 |or
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
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(4436) end,
achieveid={4436},
patch='30300',
description="\nPelt the following enemy leaders:\n\nBaine Bloodhoof\nLady Sylvanas Windrunner\n"..
"Lor'themar Theron\nHigh Overlord Saurfang",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(4436)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
map Stormwind City/0
path follow strictbounce; loop off; ants curved; dist 15
path	66.70,64.70	64.38,61.27	61.89,61.39	59.32,63.41	57.02,66.06
path	56.22,69.17	59.07,77.86
talk Craggle Wobbletop##52358
|tip He patrols around the inner section of Stormwind in the horseshoe shape.
buy 1 Red Rider Air Rifle##46725
buy 1 Red Rider Air Rifle Ammo##48601
|only if not achieved(4436)
step
clicknpc Eitrigg##3144
use the Red Rider Air Rifle##46725
|tip Use it on Eitrigg inside the building.
Use your Red Rider Air Rifle on Eitrigg |achieve 4436/3 |goto Orgrimmar/1 49.21,72.26
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') or achieved(4436) |goto Tirisfal Glades/0 69.46,62.80
step
Enter the tunnel |goto Undercity/0 51.98,64.44 < 10 |walk
clicknpc Lady Sylvanas Windrunner##10181
use the Red Rider Air Rifle##46725
|tip Use it on Lady Sylvanas Windrunner inside the building.
Use your Red Rider Air Rifle on Lady Sylvanas Windrunner |achieve 4436/1 |goto 58.04,91.77
step
Enter the building |goto 57.74,24.80 < 10 |walk
clicknpc Lor'themar Theron##16802
use the Red Rider Air Rifle##46725
|tip Use it on Lor'themar Theron inside the building.
Use your Red Rider Air Rifle on Lor'themar Theron |achieve 4436/2 |goto Silvermoon City/0 53.80,20.24
step
|achieve 4436
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1686) end,
achieveid={1686},
patch='30002',
description="\nUse Mistletoe on the eight Alliance \"Brothers\" during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1686)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 8 Mistletoe##21519 |or
'|complete achieved(1686) |or
step
use the Mistletoe##21519
|tip Use it on Brother Kristoff inside the building.
Use Mistletoe on Brother Kristoff |achieve 1686/4 |goto Stormwind City/0 55.04,54.17
step
use the Mistletoe##21519
|tip Use it on Brother Benjamin.
|tip He patrols in front of the entryway inside the building.
Use Mistletoe on Brother Benjamin |achieve 1686/8 |goto 51.60,46.42
step
use the Mistletoe##21519
|tip Use it on Brother Cassius inside the building.
Use Mistletoe on Brother Cassius |achieve 1686/7 |goto 52.41,45.80
step
Run down the ramp |goto 51.26,44.28 < 5 |walk
use the Mistletoe##21519
|tip Use it on Brother Crowley inside the building.
Use Mistletoe on Brother Crowley |achieve 1686/6 |goto 52.59,43.92
step
Run up the ramp |goto 51.79,43.65 < 5 |walk
use the Mistletoe##21519
|tip Use it on Brother Joshua inside the building.
Use Mistletoe on Brother Joshua |achieve 1686/5 |goto 49.51,45.21
step
use the Mistletoe##21519
|tip Use it on Brother Wilhelm.
Use Mistletoe on Brother Wilhelm |achieve 1686/2 |goto Elwynn Forest/0 41.08,65.96
step
use the Mistletoe##21519
|tip Use it on Brother Nimetz.
Use Mistletoe on Brother Nimetz |achieve 1686/1 |goto Northern Stranglethorn/0 47.24,11.10
step
talk Zidormi##63546
Tell her _"Show me Theramore before the destruction."_
Travel to the Past |complete ZGV.InPhase("Old Dustwallow") or achieved (1686) |goto Dustwallow Marsh/0 55.91,49.54
step
use the Mistletoe##21519
|tip Use it on Brother Karman.
Use Mistletoe on Brother Karman |achieve 1686/3 |goto 67.40,47.41
step
|achieve 1686
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A-Caroling We Will Go",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(5853) end,
achieveid={5853},
patch='40300',
description="\nUse your Winter Veil Chorus Book to carol in enemy capital cities during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(5853)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Wulmort Jinglepocket##13433
buy 1 Winter Veil Chorus Book##188680 |goto Ironforge/0 33.57,67.92
'|only if not hastoy(188680)
step
use the Winter Veil Chorus Book##188680
Collect the Winter Veil Chorus Book |toy Winter Veil Chorus Book##188680 |or
'|complete achieved(5854) |or
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Orgrimmar |achieve 5853/1 |goto Orgrimmar/1 48.07,87.44
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Thunder Bluff |achieve 5853/3 |goto Thunder Bluff/0 53.36,69.54
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') or achieved(5853) |goto Tirisfal Glades/0 69.46,62.80
step
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Undercity |achieve 5853/4 |goto Undercity/0 66.01,32.21
step
Enter the building |goto Eversong Woods/0 56.68,49.61 < 10 |walk
use the Winter Veil Chorus Book##188680
|tip Use it inside the city.
Carol in Silvermoon City |achieve 5853/2 |goto Silvermoon City/0 70.57,88.04
step
|achieve 5853
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
Gain #25# Crashes with your Racer |achieve 1295 |goto Ironforge/0 31.18,67.27
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
Shoot Down Another Player's Crashin' Thrashin' Flyer |achieve 8699 |goto Ironforge/0 31.18,67.27
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
|achieve 1689 |goto Ironforge/0 33.81,66.14
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
buy 1 Crashin' Thrashin' Killdozer Controller##108635 |goto Lunarfall/0 44.27,51.02 |or
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
use the Crashin' Thrashin' Roller Controller##
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
collect Crashin' Thrashin' Flamer Controller##108632 |goto Ironforge/0 33.63,66.21 |or
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
collect 10 Handful of Snowflakes##34191 |goto Ironforge/0 20.06,53.74 |or
'|complete achieved(1687) |or
step
use the Handful of Snowflakes##34191
|tip Use one on each of the races below.
Blood Elf Warlock |achieve 1687/9 |goto 31.01,67.5
Draenei Priest |achieve 1687/10 |goto 31.01,67.51
Dwarf Paladin |achieve 1687/8 |goto 31.01,67.51
Gnome Mage |achieve 1687/7 |goto 31.01,67.51
Human Warrior |achieve 1687/2 |goto 31.01,67.51
Night Elf Druid |achieve 1687/4 |goto 31.01,67.51
Orc Death Knight |achieve 1687/1 |goto 31.01,67.51
Tauren Shaman |achieve 1687/3 |goto 31.01,67.51
Troll Hunter |achieve 1687/6 |goto 31.01,67.51
Undead Rogue |achieve 1687/5 |goto 31.01,67.51
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
talk Wulmort Jinglepocket##13433
accept You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90
step
kill The Abominable Greench##54499
Free Metzen the Reindeer |q 7043/2 |goto Hillsbrad Foothills/0 43.57,38.42
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 7043/1 |goto 43.57,38.67
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90
step
|achieve 273
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1255) end,
achieveid={1255},
patch='30001',
description="\nThrow a snowball at Muradin Bronzebeard during the Feast of Winter Veil.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or achieved(1255)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Wulmort Jinglepocket##13433
buy 1 Snowball##17202 |goto Ironforge/0 33.59,67.92 |or
'|complete achieved(1255) |or
step
Enter the building |goto 44.60,49.34 < 10 |walk
use the Snowball##17202
|tip Use it on Muradin Bronzebeard.
Throw a Snowball at Muradin Bronzebeard |achieve 1255 |goto 39.18,56.07
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
talk Wulmort Jinglepocket##13433
accept You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90
step
kill The Abominable Greench##54499
Free Metzen the Reindeer |q 7043/2 |goto Hillsbrad Foothills/0 43.57,38.42
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 7043/1 |goto 43.57,38.67
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90
accept A Smokywood Pastures' Thank You!##7045 |goto 33.56,67.90
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto 33.16,65.43
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
talk Innkeeper Firebrew##5111
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Ironforge/0 18.22,51.43 |or
'|complete achieved(1688) |or
step
talk Macey Jinglepocket##13434
buy 1 Sparkling Apple Cider##34412 |goto 33.65,67.25 |or
'|complete achieved(1688) |or
step
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Winter Veil Egg Nog##17201 |goto 33.58,67.93
buy 1 Recipe: Hot Apple Cider##34413 |goto 33.58,67.93
buy 1 Recipe: Gingerbread Cookie##17200 |goto 33.58,67.93
buy 3 Holiday Spices##17194 |goto 33.58,67.93
buy 2 Holiday Spirits##17196 |goto 33.58,67.93
|only if not achieved(1688)
step
#include "auctioneer_ironforge"
|tip Inside the building.
buy 2 Small Egg##6889 |next "Learn_Hot_Apple_Cider" |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
'|complete achieved(1688) |or
step
label "Farm_Small_Eggs"
Kill Fleshripper enemies around this area
collect 2 Small Egg##6889 |goto Westfall/0 50.81,24.42 |or
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
|tip Stand next to your cooking fire or a Dwarven Brazier in Ironforge.
create 1 Gingerbread Cookie##21143,Cooking,1 total |achieve 1688/1 |goto Ironforge/0 33.45,65.53
|only if not achieved(1688)
step
cast Cooking Fire##818
|tip Stand next to your cooking fire or a Dwarven Brazier in Ironforge.
create 1 Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto 33.45,65.53
|only if not achieved(1688)
step
cast Cooking Fire##818
|tip Stand next to your cooking fire or a Dwarven Brazier in Ironforge.
create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto 33.45,65.53
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
Become a Little Helper |havebuff 135849 |goto Dun Morogh/0 60.32,33.94 |or
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
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(7045) end,
description="\nThis guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
Wait for Winter Veil to Start |complete isevent("Feast of Winter Veil") or completedq(7045)
|tip Winter Veil holidays run from December 16 - January 2.
|tip Check the calendar to see what time of day it starts.
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge/0 18.16,51.43
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto 18.16,51.43 |q 7025 |future
step
talk Wulmort Jinglepocket##13433
accept Greatfather Winter is Here!##7022 |goto 33.56,67.90
accept You're a Mean One...##7043 |goto Ironforge 33.56,67.90 |only if level >= 30 and not completedq(7045)
step
talk Greatfather Winter##13444
turnin Greatfather Winter is Here!##7022 |goto 33.16,65.43
accept Treats for Greatfather Winter##7025 |goto 33.16,65.43
step
talk Goli Krumn##1365
accept The Reason for the Season##7062 |goto 30.26,59.41
step
Enter the building |goto 59.29,37.87 < 10 |walk
talk Daryl Riknussun##5159
|tip Inside the building.
Train Cooking |skillmax Cooking,300 |goto 60.07,36.43
step
talk Historian Karnik##2916
|tip Inside the building.
turnin The Reason for the Season##7062 |goto 77.54,11.82
accept The Feast of Winter Veil##7063 |goto 77.54,11.82
step
Enter the building |goto 44.64,49.38 < 10 |walk
talk Muradin Bronzebeard##42928
|tip Inside the building.
turnin The Feast of Winter Veil##7063 |goto 39.17,56.09
step
Leave the building |goto 44.55,49.50 < 7 |walk
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Gingerbread Cookie##17200 |goto 33.56,67.90 |q 7025 |only if not knowsrecipe(21143)
buy 5 Holiday Spices##17194 |goto 33.56,67.90 |q 7025
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143
|tip Open your Cooking Profession panel.
step
#include "auctioneer_ironforge"
|tip Inside the building.
buy 5 Small Egg##6889 |next "Cook_Gingerbread_Cookies" |q 7025 |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
step
label "Farm_Small_Eggs"
Kill Fleshripper enemies around this area
collect 5 Small Egg##6889 |goto Westfall/0 50.81,24.42 |q 7025
step
label "Cook_Gingerbread_Cookies"
Open Your Cooking Crafting Panel:
_<Create 5 Gingerbread Cookies>_
collect 5 Gingerbread Cookie##17197 |q 7025/1 |goto Ironforge/0 33.50,65.58
step
talk Greatfather Winter##13444
turnin Treats for Greatfather Winter##7025 |goto 33.16,65.43
step
kill The Abominable Greench##54499
Free Metzen the Reindeer |q 7043/2 |goto Hillsbrad Foothills/0 43.57,38.42
|only if not completedq(7045)
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 7043/1 |goto 43.57,38.67
|only if not completedq(7045)
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90 |only if not completedq(7045)
accept A Smokywood Pastures' Thank You!##7045 |goto 33.56,67.90
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto 33.16,65.43
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
talk Wulmort Jinglepocket##13433
|tip You can also pick this up from the Strange Snowman in Hillsbrad Foothills near The Abominable Greench.
accept You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90
step
kill The Abominable Greench##54499
Free Metzen the Reindeer |q 7043/2 |goto Hillsbrad Foothills/0 43.57,38.42
step
click Stolen Treats##209506
collect Stolen Treats##17662 |q 7043/1 |goto 43.57,38.67
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.56,67.90
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
talk Almie##96451
|tip If your garrison is not level 3, look for Almie nearby.
accept Where Are the Children?##39648 |goto Lunarfall/0 43.99,51.41
accept Menacing Grumplings##39649 |goto 43.99,51.41
accept What Horrible Presents!##39668 |goto 43.99,51.41
accept Grumpus##39651 |goto 43.99,51.41
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
talk Almie##96451
|tip If your garrison is not level 3, look for Almie nearby.
turnin Where Are the Children?##39648 |goto Lunarfall/0 43.99,51.41
turnin Menacing Grumplings##39649 |goto 43.99,51.41
turnin What Horrible Presents!##39668 |goto 43.99,51.41
turnin Grumpus##39651 |goto 43.99,51.41
step
You have completed all available Winter Veil daily quests
|tip This guide will reset when more become available.
'|complete not completedq(7043,39648,39649,39668,39651) |next "Reach_Level_30"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
author="support@zygorguides.com",
startlevel=10,
condition_suggested=function() return isevent("Hallow's End") end,
description="\nThis guide section will walk you through completing the quests for the Hallow's End event.",
},[[
step
talk Human Commoner##18927
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.68,74.19
accept A Season For Celebration##29074 |goto 61.68,74.19
step
talk Jesper##15310
accept Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest/0 32.03,50.40
step
talk Celestine of the Harvest##51665
turnin A Season For Celebration##29074 |goto 32.04,50.51
step
talk Gretchen Fenlow##51934
accept A Friend in Need##29430 |goto 32.34,50.89
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto 42.62,64.38
accept Fire Brigade Practice##11360 |goto 42.62,64.38 |or
'|accept Fire Brigade Practice##11440 |goto 42.62,64.38 |or
'|accept Fire Brigade Practice##11439 |goto 42.62,64.38 |or
|tip You may have to wait for a few minutes for this quest to show up.
step
Click the Water Barrel |goto 42.73,62.01
|tip It looks like a large bucket of water.
Use the "Throw Bucket" ability to put out fires
|tip It appears as a button on the screen.
|tip Use it on the burning scarecrows around this area.
Fight #5# Fires |q 11360/1 |goto 42.71,59.66
|tip You will have to go back and get more water buckets from the water barrel.
|only if haveq(11360) or completedq(11360)
step
Click the Water Barrel |goto 42.73,62.01
|tip It looks like a large bucket of water.
Use the "Throw Bucket" ability to put out fires
|tip It appears as a button on the screen.
|tip Use it on the burning scarecrows around this area.
Fight #5# Fires |q 11440/1 |goto 42.71,59.66
|tip You will have to go back and get more water buckets from the water barrel.
|only if haveq(11440) or completedq(11440)
step
Click the Water Barrel |goto 42.73,62.01
|tip It looks like a large bucket of water.
Use the "Throw Bucket" ability to put out fires
|tip It appears as a button on the screen.
|tip Use it on the burning scarecrows around this area.
Fight #5# Fires |q 11439/1 |goto 42.71,59.66
|tip You will have to go back and get more water buckets from the water barrel.
|only if haveq(11439) or completedq(11439)
step
talk Costumed Orphan Matron##24519
turnin Fire Brigade Practice##11360 |goto 42.62,64.38 |only if haveq(11360) or completedq(11360)
turnin Fire Brigade Practice##11440 |goto 42.62,64.38 |only if haveq(11440) or completedq(11440)
turnin Fire Brigade Practice##11439 |goto 42.62,64.38 |only if haveq(11439) or completedq(11439)
step
Enter the building |goto Stormwind City/0 61.03,74.65 < 5 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
accept Flexing for Nougat##8356 |goto 60.38,75.28
step
clicknpc Innkeeper Allison##6740
|tip Inside the building.
Flex For Innkeeper Allison |script DoEmote("FLEX") |q 8356/1 |goto 60.38,75.28
step
talk Innkeeper Allison##6740
|tip Inside the building.
turnin Flexing for Nougat##8356 |goto 60.38,75.28
step
talk Anson Hastings##53949
|tip Inside the building.
turnin A Friend in Need##29430 |goto 60.05,75.14
accept Missing Heirlooms##29392 |goto 60.05,75.14
step
Enter the building |goto Ironforge/0 20.65,53.22 < 5 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
accept Chicken Clucking for a Mint##8353 |goto 18.16,51.45
step
clicknpc Innkeeper Firebrew##5111
|tip Inside the building.
Cluck like a Chicken for Innkeeper Firebrew |script DoEmote("CHICKEN") |q 8353/1 |goto 18.16,51.45
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
turnin Chicken Clucking for a Mint##8353 |goto 18.16,51.45
step
Run up the stairs |goto 35.98,4.74 < 5 |only if walking
talk Talvash del Kissel##6826
accept Incoming Gumdrop##8355 |goto 36.37,3.62
step
clicknpc Talvash del Kissel##6826
Make Train Sounds for Talvash del Kissel |script DoEmote("TRAIN") |q 8355/1 |goto 36.37,3.62
step
talk Talvash del Kissel##6826
turnin Incoming Gumdrop##8355 |goto 36.37,3.62
step
Enter the ship |goto Stormwind City/0 23.35,44.24 < 5 |walk
Search the Courier's Cabin |q 29392/1 |goto 24.04,44.83
|tip Downstairs inside the ship.
step
talk Hired Courier##53950
|tip Downstairs inside the ship.
turnin Missing Heirlooms##29392 |goto 24.04,44.83
accept Fencing the Goods##29398 |goto 24.04,44.83
step
Enter the building |goto 61.69,72.58 < 5 |walk
talk Auctioneer Fitch##8719
|tip Inside the building.
Ask him _"Has anyone suspicious tried to list a crate of goods recently?"_
Watch the dialogue
Follow the Thief's Trail |q 29398/1 |goto 61.12,70.62
step
talk Auctioneer Fitch##8719
|tip Inside the building.
turnin Fencing the Goods##29398 |goto 61.12,70.62
accept Shopping Around##29399 |goto 61.12,70.62
step
Enter the building |goto 63.65,47.40 < 5 |walk
Watch the dialogue
|tip Inside the building.
Investigate the Shady Lady |q 29399/1 |goto 64.16,46.28
step
talk Hudson Barnes##54021
|tip Inside the building.
turnin Shopping Around##29399 |goto 64.16,46.28
accept Taking Precautions##29402 |goto 64.16,46.28
step
Enter the building |goto 63.50,74.62 < 5 |walk
talk Keldric Boucher##1257
|tip Inside the building.
buy 5 Crystal Vial##3371 |q 29402/2 |goto 62.79,75.04
step
click Blood Nettle##209059+
|tip They look like white and red plants on the ground around this area.
collect 5 Blood Nettle##71035 |q 29402/3 |goto 55.54,13.82
step
Enter the building |goto 53.52,73.81 < 5 |walk
talk Jessara Cordell##1318
|tip Inside the building.
|tip If she doesn't have any for sale, you will have to use the Auction House or disenchant low level gear.
buy 2 Strange Dust##10940 |q 29402/1 |goto 52.81,74.24
step
Enter the building |goto 63.63,47.41 < 5 |walk
talk Hudson Barnes##54021
|tip Inside the building.
turnin Taking Precautions##29402 |goto 64.16,46.29
accept The Collector's Agent##29403 |goto 64.16,46.29
step
Enter the building |goto 52.94,51.03 < 5 |walk
Enter the tunnel |goto 51.27,44.25 < 5 |walk
Run down the stairs |goto 53.82,45.29 < 5 |walk
Watch the dialogue
kill Unleashed Void##54114+
|tip Downstairs inside the building.
Disrupt the Meeting |q 29403/1 |goto  55.39,43.41
step
click Stolen Crate##267952
|tip Downstairs inside the building.
turnin The Collector's Agent##29403 |goto 55.39,43.41
accept What Now?##29411 |goto 55.39,43.41
step
Enter the building |goto 61.04,74.65 < 5 |walk
talk Anson Hastings##53949
|tip Inside the building.
turnin What Now?##29411 |goto 60.04,75.13
step
click Anson's Crate##209076
accept The Creepy Crate##29413 |goto 60.08,75.05
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 8357 |future
step
talk Innkeeper Saelienne##6735
accept Dancing for Marzipan##8357 |goto Darnassus/0 62.52,32.79
step
clicknpc Innkeeper Saelienne##6735
Dance for Innkeeper Saelienne |script DoEmote("DANCE") |q 8357/1 |goto 62.52,32.79
step
talk Innkeeper Saelienne##6735
turnin Dancing for Marzipan##8357 |goto 62.52,32.79
step
talk Jesper##15310
turnin Hallow's End Treats for Jesper!##8311 |goto Elwynn Forest/0 32.03,50.40
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Dailies",{
author="support@zygorguides.com",
startlevel=10,
condition_suggested=function() return isevent("Hallow's End") end,
description="\nThis guide section will walk you through completing the daily quests for the Hallow's End event.",
},[[
step
talk Celestine of the Harvest##51665
accept A Time to Gain##29075 |goto Elwynn Forest/0 32.04,50.51
step
click Bonfire##208186
Use the Bonfire |q 29075/1 |goto 32.73,49.46
step
talk Celestine of the Harvest##51665
turnin A Time to Gain##29075 |goto 32.04,50.51
step
talk Keira##52064
accept A Time to Lose##29371 |goto 32.08,50.60
step
talk Gretchen Fenlow##51934
accept Stink Bombs Away!##29054 |goto 32.35,50.87
accept Clean Up in Stormwind##29144 |goto 32.35,50.87
step
use the Arcane Cleanser##69191
|tip Use it on Stink Bombs around this area.
|tip They look like pools of orange mist on the ground around Stormwind.
Remove #10# Stink Bombs |q 29144/1 |goto Stormwind City/0 63.25,71.85
step
talk Gretchen Fenlow##51934
turnin Clean Up in Stormwind##29144 |goto Elwynn Forest/0 32.35,50.88
step
talk Gertrude Fenlow##52548
Tell her _"I'm ready to fly, let's bomb the Undercity!"_
Requisition a Broom |invehicle |goto 32.21,50.76 |q 29054
step
Drop #25# Stink Bombs |q 29054/1
|tip Use the "Toss Stink Bomb" ability on your action bar.
|tip Use it on enemies around this area.
step
Click the "Return Home" ability on your action bar |outvehicle |q 29054
step
talk Gretchen Fenlow##51934
turnin Stink Bombs Away!##29054 |goto 32.35,50.88
step
talk Costumed Orphan Matron##24519
|tip You will only be able to accept 1 of the 2 daily quests.
accept Stop the Fires!##11131 |or |goto 42.62,64.39
accept "Let the Fires Come!"##12135 |or |goto 42.62,64.39
step
Click the Water Barrel |goto 42.50,64.50
|tip It looks like a large bucket of water.
Use the "Throw Bucket" ability to put out fires
|tip It appears as a button on the screen.
|tip Use it on the burning scarecrows around this area.
Put Out the Fires |q 11131/1 |goto 42.38,65.93
|only if haveq(11131)
step
Click the Water Barrel |goto 42.50,64.50
|tip It looks like a large bucket of water.
Use the "Throw Bucket" ability to put out fires
|tip It appears as a button on the screen.
|tip Use it on the burning buildings around this area.
|tip Both buildings must be completely free of fire.
Put Out the Fires |q 12135/1 |goto 42.38,65.93
|only if haveq(12135)
step
kill Shade of the Horseman##23543
click Large Jack-o'-Lantern##7447
|tip It looks like a Burning Pumpkin laying in the road that appears after the Shade of the Horseman is killed.
accept Smash the Pumpkin##12133 |goto 42.41,65.88
step
talk Costumed Orphan Matron##24519
turnin Stop the Fires!##11131 |goto 42.62,64.39 |only if haveq(11131) or completedq(11131)
turnin "Let the Fires Come!"##12135 |goto 42.62,64.39 |only if haveq(12135) or completedq(12135)
turnin Smash the Pumpkin##12133 |goto 42.62,64.39 |only if haveq(12133) or completedq(12133)
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 29371
step
use the Dousing Agent##68648
|tip Use it on the Burning Wickerman.
Douse the Horde's Wickerman |q 29371/2 |goto 62.38,68.19
|tip Note that you will be flagged for PvP Combat while attempting to do this step.
step
talk Keira##52064
turnin A Time to Lose##29371 |goto Elwynn Forest/0 32.08,50.60
step
talk Orukan##96705
accept Smashing Squashlings##39716 |goto Lunarfall/0 44.00,51.46
accept Foul Fertilizer##39720 |goto 44.00,51.46
accept Mutiny on the Boneship##39719 |goto 44.00,51.46
accept Culling the Crew##39721 |goto 44.00,51.46
stickystart "Slay_Boneship_Crewmen"
stickystart "Slay_Growing_Squashlings"
stickystart "Destroy_Fertilizers"
step
kill Captain Bonerender##96535 |q 39719/1 |goto Shadowmoon Valley D/0 38.76,86.29
step
label "Slay_Boneship_Crewmen"
Kill enemies around this area
Kill #12# Boneship Crewmen |q 39721/1 |goto 39.8,80.4
step
label "Slay_Growing_Squashlings"
kill 6 Growing Squashling##96545+ |q 39716/1 |goto 40.2,81.8
step
label "Destroy_Fertilizers"
clicknpc Dread Fertilizer##96765+
|tip They look like brown and green barrels on the ground around this area.
Destroy #8# Fertilizers |q 39720/1 |goto 40.1,84.3
step
talk Izzy Hollyfizzle##96362
turnin Smashing Squashlings##39716 |goto Lunarfall/0 44.27,51.02
turnin Foul Fertilizer##39720 |goto 44.27,51.02
turnin Mutiny on the Boneship##39719 |goto 44.27,51.02
turnin Culling the Crew##39721 |goto 44.27,51.02
step
Enter the building |goto Dalaran L/10 49.86,37.86 < 5 |walk
talk Duroc Ironjaw##109854
|tip Inside of the building.
accept Beware of the Crooked Tree##43259 |goto 47.29,40.77
step
talk Hag of the Crooked Tree##109734
turnin Beware of the Crooked Tree##43259 |goto Val'sharah/0 35.00,56.04
accept Under the Crooked Tree##43162 |goto 35.00,56.04
step
click Crocked Tree Cauldron
Gain the Curse of the Crooked Tree Buff |havebuff spell:218367 |goto 35.03,56.05 |q 43162
step
kill Aria Sorrowheart##109825 |q 43162/1 |goto 34.63,55.44
|tip You may need help with this.
step
talk Hag of the Crooked Tree##109734
turnin Under the Crooked Tree##43162 |goto 35.00,56.04
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
Earn the "A Frightening Friend" Achievement |achieve 10365 |goto Lunarfall/0 40.49,69.82
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
leechsteps "Events Guides\\Hallow's End\\Achievements\\Rotten Hallow" 1-15
leechsteps "Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Check Your Head" 1-12
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Masquerade" 1-7
leechsteps "Events Guides\\Hallow's End\\Achievements\\Sinister Calling" 1-3
leechsteps "Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile" 1-2
leechsteps "Events Guides\\Hallow's End\\Achievements\\Tricks and Treats" 1-72
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
collect 48 Tricky Treat##33226
|tip You can get these from the various Candy Bucket quests around azeroth.
|tip Use our "Tricks and Treats" Event Guide to find them.
|only if not achieved(284)
step
talk Spanky##52497
buy 1 Blood Elf Female Mask##34000 |achieve 284/1 |goto Elwynn Forest/0 31.85,50.02
step
talk Spanky##52497
buy 1 Blood Elf Male Mask##34002 |achieve 284/2 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Draenei Female Mask##34001 |achieve 284/3 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Draenei Male Mask##34003 |achieve 284/4 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Dwarf Female Mask##20562 |achieve 284/5 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Dwarf Male Mask##20561 |achieve 284/6 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Gnome Female Mask##20392 |achieve 284/7 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Gnome Male Mask##20391 |achieve 284/8 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Goblin Female Mask##49212 |achieve 284/9 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Goblin Male Mask##49210 |achieve 284/10 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Human Female Mask##20565 |achieve 284/11 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Human Male Mask##20566 |achieve 284/12 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Night Elf Female Mask##20563 |achieve 284/13 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Night Elf Male Mask##20564 |achieve 284/14 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Orc Female Mask##20569 |achieve 284/15 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Orc Male Mask##20570 |achieve 284/16 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Tauren Female Mask##20571 |achieve 284/17 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Tauren Male Mask##20572 |achieve 284/18 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Troll Female Mask##20567 |achieve 284/19 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Troll Male Mask##20568 |achieve 284/20 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Undead Female Mask##20574 |achieve 284/21 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Undead Male Mask##20573 |achieve 284/22 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Worgen Female Mask##49215 |achieve 284/23 |goto 31.85,50.02
step
talk Spanky##52497
buy 1 Worgen Male Mask##49216 |achieve 284/24 |goto 31.85,50.02
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
collect 2 Tricky Treat##33226
|tip You can get these from the various Candy Bucket quests around azeroth.
|tip Use our "Tricks and Treats" Event Guide to find them.
|only if not achieved(979)
step
talk Spanky##52497
buy 1 Blood Elf Female Mask##34000 |goto Elwynn Forest/0 31.85,50.02
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
achieveid={1040},
patch='40300',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nRuin Hallow's End for the Horde and foil their attempts to wreck the Alliance celebration by completing the following quests:\n\n"..
"Stink Bombs Away!\nClean Up In Stormwind\nA Time to Gain\nA Time to Lose",
},[[
leechsteps "Events Guides\\Hallow's End\\Hallow's End Dailies" 1-11
leechsteps "Events Guides\\Hallow's End\\Hallow's End Dailies" 17-19
step
Earn "Rotten Hallow" Achievement |achieve 1040
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
Get a Water Bucket |havebuff spell:261577 |goto Elwynn Forest/0 42.50,64.49
step
Extinguish the Fires |achieve 289 |goto 42.42,65.70 |next "Earn_Achievement"
|tip Use the "Throw Bucket" ability that appears onscreen.
|tip Throw the bucket on the fires.
|tip Extinguish all fires on both buildings.
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
talk Dorothy##53728
buy 1 Sinister Squashling##33154 |goto Elwynn Forest 31.8,50.1
buy 1 Hallowed Helm##33292 |goto Elwynn Forest 31.8,50.1
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
talk Dorothy##53728
buy 1 Tooth Pick##37604 |goto Elwynn Forest 31.8,50.1
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
achieveid={966,963,969,971,5836,5837,7601},
patch='50004',
condition_suggested=function() return isevent("Hallow's End") end,
description="\nThis guide section will walk you through completing the achievements for the Hallow's End event.",
},[[
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12336 |goto Stormwind City/0 60.52,75.32
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12286 |goto Elwynn Forest/0 43.74,65.89
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12342 |goto Redridge Mountains/0 26.47,41.50
step
click Candy Bucket##208144
|tip It's on the top level of the tower.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28965 |goto Searing Gorge/0 39.49,66.04
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12339 |goto Loch Modan/0 35.54,48.49
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28963 |goto 83.03,63.54
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12335 |goto Ironforge/0 18.34,50.97
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12332 |goto Dun Morogh/0 54.49,50.76
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12343 |goto Wetlands/0 10.82,60.96
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28990 |goto 26.07,25.99
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28991 |goto 58.21,39.20
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 28954 |future
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28954 |goto 40.06,49.09
step
Go upstairs in the inn
click Candy Bucket##208144
|tip It's inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12351 |goto The Hinterlands/0 14.19,44.60
step
click Candy Bucket##208144
|tip It's inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28970 |goto 66.16,44.43
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12402 |goto Eastern Plaguelands/20 40.69,90.40
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28988 |goto Western Plaguelands/0 43.39,84.38
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28955 |goto Badlands/0 65.86,35.65
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28956 |goto 20.86,56.31
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28967 |goto Swamp of Sorrows/0 71.65,14.10
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28968 |goto 28.93,32.40
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12340 |goto Westfall/0 52.91,53.74
If you do not find the Candy Bucket here then it will be located at [56.79,47.27]
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12344 |goto Duskwood/0 73.80,44.26
step
talk Zidormi##88206
Tell her: _"Show me the before the invasion"_
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 < 5 |q 28960 |future
step
click Candy Bucket##208144
|tip It's inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28960 |goto 60.69,14.08
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28961 |goto 44.34,87.59
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28964 |goto Northern Stranglethorn/0 53.16,66.98
step
click Candy Bucket##208144
|tip It's on the bottom floor of the tavern.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12397 |goto The Cape of Stranglethorn/0 40.91,73.72
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12396 |goto Northern Barrens/0 67.33,74.66
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29006 |goto Southern Barrens/0 39.01,10.99
step
click Candy Bucket##208144
|tip It's inside the base of the tower.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29007 |goto Southern Barrens/0 65.60,46.54
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29008 |goto Southern Barrens/0 49.05,68.50
step
click Candy Bucket##208144
|tip It's inside the inn on the second floor.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12398 |goto Dustwallow Marsh/0 41.86,74.09
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12399 |goto Tanaris/0 52.56,27.10
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29014 |goto Tanaris/0 55.70,60.96
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29018 |goto Un'Goro Crater/0 55.27,62.11
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 12401 |future
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12401 |goto 55.47,36.79
step
click Candy Bucket##208144
|tip It's inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12350 |goto Feralas/0 46.33,45.19
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28952 |goto Feralas/0 51.07,17.82
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28993 |goto Desolace/0 56.72,50.13
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12348 |goto Desolace/0 66.33,6.59
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29010 |goto Stonetalon Mountains/0 71.02,79.08
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29011 |goto Stonetalon Mountains/0 59.05,56.33
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29013 |goto Stonetalon Mountains/0 31.53,60.66
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29012 |goto Stonetalon Mountains/0 39.48,32.81
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12345 |goto Ashenvale/0 37.01,49.26
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28994 |goto Felwood/0 44.58,28.98
step
click Candy Bucket##208144
|tip It's inside the big tree.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28995 |goto Felwood/0 61.86,26.71
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12400 |goto Winterspring/0 59.83,51.21
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28951 |goto Darkshore/0 50.79,18.89
step
Go up the ramp |goto The Exodar/0 56.38,31.15 < 15 |walk
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12337 |goto The Exodar/0 59.23,18.48
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12333 |goto Azuremyst Isle/0 48.49,49.05
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12341 |goto Bloodmyst Isle/0 55.69,59.96
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12334 |goto Darnassus/0 62.27,33.14
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12331 |goto Teldrassil/0 55.36,52.28
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12352 |goto Hellfire Peninsula/0 54.27,63.66
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12353 |goto 23.42,36.38
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
accept Candy Bucket##12356 |goto Terokkar Forest/0 56.60,53.22
step
click Candy Bucket##208144
|tip It's inside the inn back in the corner.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12360 |goto Shadowmoon Valley/0 37.01,58.29
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
accept Candy Bucket##12357 |goto Nagrand/0 54.19,75.88
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12403 |goto Zangarmarsh/0 78.45,62.88
step
click Candy Bucket##208144
|tip It's inside the inn atop the giant mushroom.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12354 |goto 67.16,48.94
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12355 |goto 41.90,26.17
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12358 |goto Blade's Edge Mountains/0 35.83,63.74
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12359 |goto 61.05,68.08
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
accept Candy Bucket##13436 |goto Borean Tundra/0 58.52,67.87
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
accept Candy Bucket##13437 |goto Borean Tundra/0 57.12,18.81
step
click Candy Bucket##208144
|tip It's under the tent.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12950 |goto Sholazar Basin/0 26.61,59.20
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13438 |goto Dragonblight/0 28.95,56.22
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13459 |goto Dragonblight/0 48.12,74.66
step
click Candy Bucket##208144
|tip It's on the bottom floor.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13456 |goto Dragonblight/0 60.15,53.45
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13439 |goto Dragonblight/0 77.50,51.28
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12944 |goto Grizzly Hills/0 31.94,60.22
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12945 |goto Grizzly Hills/0 59.64,26.36
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13435 |goto Howling Fjord/0 60.47,15.90
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13433 |goto Howling Fjord/0 58.32,62.82
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13434 |goto Howling Fjord/0 30.83,41.43
step
click Candy Bucket##208144
|tip It's inside the underground inn.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13452 |goto Howling Fjord/0 25.44,59.82
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##12941 |goto Zul'Drak/0 40.87,66.04
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
accept Candy Bucket##13461 |goto The Storm Peaks/0 41.07,85.85
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13448 |goto The Storm Peaks/0 28.72,74.29
step
click Candy Bucket##208144
|tip It's inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13462 |goto The Storm Peaks/0 30.92,37.16
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13463 |goto Dalaran/1 48.14,41.31
step
click Candy Bucket##208144
|tip It's under the stairs.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13473 |goto Dalaran/1 42.35,63.07
step
click Candy Bucket##208144
|tip It's in the side room on the left.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##13472 |goto Dalaran/2 38.20,59.61
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28999 |goto Mount Hyjal/0 63.05,24.14
step
click Candy Bucket##208144
|tip It's under the ramp.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29001 |goto Mount Hyjal/0 42.68,45.71
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29000 |goto Mount Hyjal/0 18.63,37.32
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29020 |goto Deepholm/0 47.35,51.71
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28985 |goto Abyssal Depths/0 54.67,72.11
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28983 |goto Shimmering Expanse/0 49.72,57.39
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
|tip It's on the bottom floor.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28980 |goto Twilight Highlands/0 79.48,78.54
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28977 |goto Twilight Highlands/0 60.35,58.24
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28979 |goto Twilight Highlands/0 43.50,57.27
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##28978 |goto Twilight Highlands/0 49.60,30.36
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 29017 |future
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29017 |goto Uldum/0 54.68,33.01
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##29016 |goto Uldum/0 26.59,7.23
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32049 |goto The Jade Forest/0 44.80,84.36
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32033 |goto The Jade Forest/0 59.56,83.24
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
accept Candy Bucket##32027 |goto The Jade Forest/0 45.77,43.61
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
accept Candy Bucket##32031 |goto The Jade Forest/0 55.72,24.41
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
accept Candy Bucket##32039 |goto Kun-Lai Summit/0 72.73,92.28
step
click Candy Bucket##208144
|tip You must complete the quest "Challenge Accepted" to access this candy bucket.
|tip You can complete it by doing the few quests at Binan Village in Kun-Lai Summit.
|tip These quests will lead you to Westwind Rest.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32042 |goto Kun-Lai Summit/0 54.07,82.82
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
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32051 |goto Kun-Lai Summit/0 62.50,28.90
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32043 |goto Townlong Steppes/0 71.11,57.78
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32044 |goto Vale of Eternal Blossoms/0 35.14,77.78
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32052 |goto Shrine of Seven Stars/1 37.81,65.92
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
accept Candy Bucket##32024 |goto Dread Wastes/0 55.93,32.27
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
accept Candy Bucket##32036 |goto Krasarang Wilds/0 75.92,6.87
step
click Candy Bucket##208144
|tip Inside the building.
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##32034 |goto Krasarang Wilds/0 51.40,77.29
step
Enter the building |goto Dalaran L/10 49.93,37.69 < 10 |walk
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##43055 |goto 47.96,41.75
step
Enter the building |goto 45.07,59.94 < 10 |walk
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##43056 |goto 41.47,64.02
step
click Candy Bucket##208144
use the Handful of Treats##37586
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
accept Candy Bucket##54710 |goto Boralus/0 73.70,12.19
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Harvest Festival\\Harvest Festival Quest",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Harvest Festival') end,
condition_end=function() return completedq(8149) end,
description="\nComplete the quest \"Honoring a Hero\" for the Harvest Festival event.",
},[[
step
talk Wagner Hammerstrike##15011
accept Honoring a Hero##8149 |goto Dun Morogh/0 59.74,34.26
step
Enter the building |goto Western Plaguelands/0 52.06,83.15 < 15 |walk
use Uther's Tribute##19850
|tip Inside the building.
Place a Tribute at Uther's Tomb |q 8149/1 |goto 52.11,83.43
step
talk Wagner Hammerstrike##15011
turnin Honoring a Hero##8149 |goto Dun Morogh/0 59.74,34.26
step
_Congratulations!_
You Completed the "Harvest Festival" Event.
|tip You can now use the food at the Harvest Festival table.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Warlords of Draenor\\Iron Horde Invasion",{
description="\nTake part in the opening event of the Warlords of Draenor!",
condition_end=function() return completedq(36941) end,
},[[
step
talk Zidormi##88206
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 36941 |future
step
talk Vindicator Maraad##82270
accept Attack of the Iron Horde##35460 |goto 66.58,28.26
accept Under Siege##35462 |goto 66.58,28.26
step
talk Bodrick Grey##85213
accept Peeking into the Portal##36379 |goto 66.94,27.93
step
talk Araazi##85731
fpath Shattered Beachhead |goto 67.65,27.97
stickystart "Kill_Ironmarch_Grunts"
step
clicknpc Iron Demolisher##82273+
Destroy #3# Iron Demolishers |q 35462/1 |goto 63.95,32.69
step
label "Kill_Ironmarch_Grunts"
kill 8 Ironmarch Grunt##76556 |q 35460/1 |goto 63.95,32.69
step
click Telescope##237144
Use the Telescope |q 36379/1 |goto 61.68,36.68
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto 66.58,28.26
turnin Under Siege##35462 |goto 66.58,28.26
accept Subversive Scouts##35463 |goto 66.58,28.26
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.94,27.93
accept Ending Execution##35464 |goto 66.94,27.93
stickystart "Kill_Ironmarch_Scouts"
step
kill Ironmarch Executioner##82774+
|tip They stand in front of kneeling Nethergarde Prisoners around this area.
Stop #3# Executions |q 35464/1 |goto 59.37,27.80
step
label "Kill_Ironmarch_Scouts"
kill 5 Ironmarch Scout##76886 |q 35463/1 |goto 66.90,28.21
|tip They are stealthed near hills and open areas around this area.
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto 66.94,27.93
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto 66.58,28.26
accept Investigating the Invasion##36307 |goto 66.58,28.26
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto 51.93,28.65
accept Lunatic Lieutenants##35486 |goto 51.93,28.65
accept For Nethergarde!##35492 |goto 51.93,28.65
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto 52.01,28.51
step
kill Rukah the Machinist##73458
|tip She walks around this area.
collect Rukah's Battleplan##113400 |q 35486/2 |goto 57.00,17.96
step
click Keri's Mug##232576
|tip On the corner of the table under the tent.
collect Keri's Mug##113397 |q 35494/3 |goto 59.35,17.97
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q 35492/3 |goto 59.86,15.81
step
kill Gar Steelcrush##73446
|tip Upstairs inside the keep.
collect Gar's Battleplan##113401 |q 35486/3 |goto 60.19,13.81
step
click Strumner's Sword##232573
|tip Inside the building.
collect Strumner's Sword##113395 |q 35494/1 |goto 61.81,14.92
step
kill Mokrik Blackfingers##73459
collect Mokrik's Battleplan##113399 |q 35486/1 |goto 62.86,13.12
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q 35492/2 |goto 61.60,18.49
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q 35494/2 |goto 60.60,20.01
step
click Alliance Flag##232532
Plant the Alliance Flag at the Entrance to Nethergarde |q 35492/1 |goto 62.97,22.51
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto 52.01,28.51
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto 51.93,28.65
turnin For Nethergarde!##35492 |goto 51.93,28.65
accept Toothsmash the Annihilator##35495 |goto 51.93,28.65
accept Death to the Dreadmaul##35488 |goto 51.93,28.65
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto 51.78,28.74
stickystart "Slay_Dreadmaul_Ogres"
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 43.89,31.01 |count 1
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 44.32,35.60 |count 2
step
kill Toothsmash the Annihilator##82451 |q 35495/1 |goto 43.61,36.32
|tip He walks around this area.
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 43.40,36.99 |count 3
step
label "Slay_Dreadmaul_Ogres"
Kill Dreadmaul enemies around this area
Slay #8# Dreadmaul Ogres |q 35488/1 |goto 43.83,36.12
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto 51.78,28.74
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto 51.93,28.65
turnin Death to the Dreadmaul##35488 |goto 51.93,28.65
accept Gar'mak Bladetwist##35500 |goto 51.93,28.65
step
kill Gar'mak Bladetwist##82918 |q 35500/1 |goto 40.05,11.41
|tip Upstairs inside the tower.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto 51.93,28.65
accept Report to the King##36941 |goto 51.93,28.65
step
talk King Varian Wrynn##29611
|tip Inside the keep.
turnin Report to the King##36941 |goto Stormwind City/0 85.92,31.56
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24657) end,
description="\nThis guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Inspector Snip Snagglebolt##38066
accept Something Stinks##24655 |goto Stormwind City/0 61.51,75.27
step
clicknpc Stormwind City Guard##68+
|tip Look for Stormwind Guards that have the Heavily Perfumed buff.
|tip They look like Stormwind Guards with a glowing purple aura around them all over Stormwind.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Stormwind Guards around this area.
Analyze #6# Perfumed Guards |q 24655/1 |goto 61.86,72.49
step
talk Inspector Snip Snagglebolt##38066
turnin Something Stinks##24655 |goto 61.51,75.27
accept Pilfering Perfume##24656 |goto 61.51,75.27
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Inspector Snip Snagglebolt##38066
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff spell:71450 |goto 61.51,75.27 |or
'|complete completedq(24656) |or
step
Follow the path |goto Elwynn Forest/0 31.88,48.88 < 15 |only if walking
Get the Crown Chemical Co. Package |complete hasbuff("spell:71459") |q 24656 |goto Stormwind City/0 78.75,89.34 |or
|tip Quickly run by the boxes to get the package.
'|complete not hasbuff("spell:71450") and not readyq(24656) and not completedq(24656) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
Return the Crown Chemical Co. Package |complete readyq(24656) or completedq(24656) |goto 61.51,75.27 |or
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Simply walk next to Inspector Snip Snagglebolt to return the package to him.
'|complete (not hasbuff("spell:71450") or not hasbuff("spell:71459")) and not readyq(24656) and not completedq(24656) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Inspector Snip Snagglebolt##38066
turnin Pilfering Perfume##24656 |goto 61.51,75.27
accept Fireworks At The Gilded Rose##24848 |goto 61.51,75.27
step
talk Marion Sutton##38325
|tip Upstairs inside the building.
turnin Fireworks At The Gilded Rose##24848 |goto 60.61,76.36
accept Hot On The Trail##24849 |goto 60.61,76.36
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Counting House |q 24849/1 |goto 63.03,78.74
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Auction House |q 24849/2 |goto 61.42,71.61
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Barber Shop |q 24849/3 |goto 61.31,65.39
step
talk Marion Sutton##38325
|tip Upstairs inside the building.
turnin Hot On The Trail##24849 |goto 60.61,76.36
accept A Friendly Chat...##24657 |goto 60.61,76.36
step
talk Snivel Rustrocket##37715
Tell him _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24657/1 |goto 27.43,34.83
step
talk Inspector Snip Snagglebolt##38066
turnin A Friendly Chat...##24657 |goto 61.51,75.27
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24657) and not completedq(44558,24629,24635,24636,24597,44560,24610,24611,24609) end,
description="\nThis guide section will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24657)
step
talk Inspector Snip Snagglebolt##38066
accept Crushing the Crown##44558 |goto Stormwind City/0 61.51,75.27
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto 62.41,75.38 |or
accept A Cloudlet of Classy Cologne##24635 |goto 62.41,75.38 |or
accept Bonbon Blitz##24636 |goto 62.41,75.38 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the King of Stormwind##24597 |goto 62.53,74.96
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Cologne Samples |q 24635/1 |goto 62.35,72.50
|only if haveq(24635)
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Perfume Samples |q 24629/1 |goto 62.35,72.50
|only if haveq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Chocolate Samples |q 24636/1 |goto 62.35,72.50
|only if haveq(24636)
stickystart "Slay_Crown_Chemical_Co_Employees"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 44558/1 |goto Silverpine Forest/0 45.74,73.39
|only if haveq(44558)
step
click Love Potion Recipe
accept Follow the Recipe##44560 |goto 45.25,73.85
|only if haveq(44558)
step
Enter the building |goto 46.27,73.45 < 10 |walk
click Recipe Fragment##6478
|tip Upstairs inside the building.
Collect the 1st Fragment |q 44560/1 |goto 46.28,73.51
|only if haveq(44560)
step
Enter the building |goto 44.98,71.64 < 10 |walk
click Recipe Fragment##6478
|tip Inside the building.
Collect the 2nd Fragment |q 44560/2 |goto 45.14,71.52
|only if haveq(44560)
step
click Recipe Fragment##6478
Collect the 3rd Fragment |q 44560/3 |goto 42.70,71.16
|only if haveq(44560)
step
label "Slay_Crown_Chemical_Co_Employees"
Kill enemies around this area
Slay #12# Crown Chemical Co. Employees |q 44558/2 |goto 45.62,73.51
|only if haveq(44558)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24609 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24609 |future
step
talk Inspector Snip Snagglebolt##38066
turnin Crushing the Crown##44558 |goto Stormwind City/0 61.51,75.27 |only if haveq(44558) or completedq(44558)
turnin Follow the Recipe##44560 |goto 61.51,75.27 |only if haveq(44560) or completedq(44560)
|only if haveq(44558,44560) or completedq(44558,44560)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto 62.41,75.38 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto 62.41,75.38 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto 62.41,75.38 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin A Gift for the King of Stormwind##24597 |goto 85.91,31.57
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 24610 |future
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 45.42,57.75
step
Enter the building |goto 43.01,74.83 < 10 |walk
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin A Gift for the High Priestess of Elune##24610 |goto 43.01,78.07
step
Run up the ramp |goto The Exodar/0 52.71,33.69 < 15 |walk
Continue up the ramp |goto 64.13,35.99 < 15 |walk
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Prophet##24611 |goto 73.65,57.01
step
Run down the ramp |goto 73.51,53.36 < 15 |walk
Run up the stairs |goto 31.09,60.83 < 10 |walk
talk Prophet Velen##17468
turnin A Gift for the Prophet##24611 |goto 32.85,54.48
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.57,65.60
step
Enter the building |goto 44.39,49.69 < 10 |walk
talk Muradin Bronzebeard##42928
turnin A Gift for the Lord of Ironforge##24609 |goto 39.19,56.09
step
You have completed all available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(44558,24629,24635,24636,24597,44560,24610,24611,24609) |next "Complete_Leveling_Guide"
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
buy Bag of Heart Candies##21813 |goto Stormwind City/0 62.49,75.24 |n
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
talk Kwee Q. Peddlefeet##37887
collect 1 Lovely Charm Collector's Kit##49661 |goto Stormwind City/0 62.4,75.0 |or
'|complete achieved(260) |or
'|accept A Gift for the King of Stormwind##24597 |n
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
talk Inspector Snip Snagglebolt##38066
accept Crushing the Crown##44558 |goto Stormwind City/0 61.51,75.27 |or
'|complete achieved(1695) |or
stickystart "Slay_Crown_Chemical_Co_Employees"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 44558/1 |goto Silverpine Forest/0 45.74,73.39 |or
'|complete achieved(1695) |or
step
label "Slay_Crown_Chemical_Co_Employees"
Kill enemies around this area
Slay #12# Crown Chemical Co. Employees |q 44558/2 |goto 45.62,73.51 |or
'|complete achieved(1695) |or
step
talk Inspector Snip Snagglebolt##38066
turnin Crushing the Crown##44558 |goto Stormwind City/0 61.51,75.27 |or
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
buy 15 Handful of Rose Petals##22218 |goto Stormwind City/0 62.49,75.24 |or
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
"on Sraaz and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1279) end,
achieveid={1279},
patch='30001',
},[[
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1279) |or
step
talk Bruuk Barleybeard##5570
|tip Inside the building.
buy 6 Cherry Grog##4600 |goto Ironforge/0 72.52,76.95 |only if level >= 11
buy 6 Flagon of Dwarven Mead##2594 |goto 72.52,76.95 |only if level <= 10 |or
'|complete achieved(1279) |or
step
use the "VICTORY" Perfume##49856
Gain the "'VICTORY' Perfume" Buff |havebuff spell:70233 |or
'|complete achieved(1279) |or
step
clicknpc Sraaz##9099
|tip He's a gnome that walks the circle around The Great Forge.
use the Cherry Grog##4600 |only if level >= 11
use the Flagon of Dwarven Mead##2594 |only if level <= 10
|tip Use all 6 of your Cherry Grog to get Completely Smashed. |only if level >= 11
|tip Use all 6 of your Flagons of Dwarven Mead to get Completely Smashed. |only if level <= 10
use Handful of Rose Petals##22218
|tip Use them on Sraaz.
Use the Handful of Rose Petals on Sraaz While Completely Smashed |achieve 1279/2 |goto Ironforge/0 55.82,35.34
step
clicknpc Sraaz##9099
"Kiss" Sraaz |script DoEmote("KISS")
Kiss Sraaz While Completely Smashed |achieve 1279/1 |goto 55.82,35.34
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
buy 5 Love Fool##22261 |goto Stormwind City/0 62.49,75.24 |or
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
buy 1 Romantic Picnic Basket##34480 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto 62.49,75.24 |n
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
collect 1 Lovely Black Dress##22279 |goto Stormwind City/0 62.49,75.24
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
description="\nComplete the Lovely Charm Bracelet daily quest for each Alliance capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(36941) and not achieved(1697) end,
achieveid={1697},
patch='30303',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the King of Stormwind##24597 |goto Stormwind City/0 62.53,74.96 |or
'|complete achieved(1697,4) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |or
'|complete achieved(1697) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1697) |or
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin A Gift for the King of Stormwind##24597 |goto 85.91,31.57 |or
'|complete achieved(1697,4) |or
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |or
'|complete achieved(1697,1) |or
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 45.42,57.75 |or
'|complete achieved(1697,1) |or
step
Enter the building |goto 43.01,74.83 < 10 |walk
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin A Gift for the High Priestess of Elune##24610 |goto 43.01,78.07 |or
'|complete achieved(1697,1) |or
step
Run up the ramp |goto The Exodar/0 52.71,33.69 < 15 |walk
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Prophet##24611 |goto 73.65,57.01 |or
'|complete achieved(1697,2) |or
step
Run up the stairs |goto 31.09,60.83 < 10 |walk
talk Prophet Velen##17468
turnin A Gift for the Prophet##24611 |goto 32.85,54.48 |or
'|complete achieved(1697,2) |or
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.57,65.60 |or
'|complete achieved(1697,3) |or
step
Enter the building |goto 44.39,49.69 < 10 |walk
talk Muradin Bronzebeard##42928
turnin A Gift for the Lord of Ironforge##24609 |goto 39.19,56.09 |or
'|complete achieved(1697,3) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1697
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
buy 1 Truesilver Shafted Arrow##22235 |goto Stormwind City/0 62.49,75.24
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
buy 10 Silver Shafted Arrow##22200 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players inside Stormwind.
Shoot 10 Players with the Silver Shafted Arrow |achieve 1188 |goto 62.49,75.24
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
buy 1 Box of Chocolates##49909 |goto Stormwind City/0 62.49,75.24 |n
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
buy 10 Love Rocket##34258 |goto Stormwind City/0 62.49,75.24 |or
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
condition_end=function() return completedq(8883) end,
},[[
step
talk Lunar Festival Emissary##15892
accept The Lunar Festival##8870 |goto Ironforge/0 30.94,61.59
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8870 |goto 28.84,16.22
accept Lunar Fireworks##8867 |goto 28.84,16.22
step
talk Lunar Festival Vendor##15898
buy 8 Small Blue Rocket##21558 |goto 29.93,14.23 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto 29.93,14.23 |q 8867
step
use the Small Blue Rocket##21558
|tip Use it eight times.
Fire #8# Lunar Fireworks |q 8867/1 |goto 30.71,17.85
step
use the Blue Rocket Cluster##21571
|tip Use it two times.
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto 30.71,17.85
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto 28.84,16.22
accept Valadar Starsong##8883 |goto 28.84,16.22
step
use the Lunar Festival Invitation##21711 |goto 30.71,17.87 < 5
|tip Stand in the beam of light in the center of the Mystic Ward pool.
Travel to Moonglade |goto Moonglade/0 36.60,58.57 |c |noway|q 8883
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
use the Lunar Festival Invitation##21711 |goto Elwynn Forest/0 34.59,50.75
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
use the Lunar Festival Invitation##21711 |goto Elwynn Forest/0 34.59,50.75
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
description="\nThis guide section will walk you through an optimized path for honoring the elders that are spread out all over Azeroth for the Lunar Festival event. Using this guide section, you will collect 83 Coins of Ancestry.",
},[[
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Elwynn Forest/0 34.56,50.25
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto 39.79,63.66
step
talk Elder Skychaser##15577
|tip She is at the top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.65,47.10
step
talk Elder Winterhoof##15576
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Zidormi##88206
Tell her _"Show me the Blasted Lands before the invasion."_
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 8647 |future
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto 54.28,49.50
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
Leave The Temple of Atal'Hakkar |goto 62.84,34.19 > 10000 |c |noway |q 8636 |future
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto Burning Steppes/0 70.11,45.38
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto 52.38,23.93
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
Leave Blackrock Depths |goto 50.50,62.91 > 10000 |c |noway |q 8651 |future
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.28,79.12
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.91,49.91
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.06
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.54
step
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto Twilight Highlands/0 50.91,70.46
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto 51.88,33.07
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 50.00,48.05
step
Enter the building |goto Eastern Plaguelands/0 35.35,68.76 < 10 |walk
talk Elder Windrun##15592
|tip Inside the building.
accept Windrun the Elder##8688 |goto 35.58,68.82
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto 75.74,54.56
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
Leave Stratholme |goto 78.91,20.00 > 10000 |c |noway |q 8722 |future
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
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 8652 |future
step
talk Elder Graveborn##15568
accept Graveborn the Elder##8652 |goto 61.86,53.91
step
talk Elder Darkcore##15564
|tip Inside the entrance area building, before the Undercity elevators.
accept Darkcore the Elder##8648 |goto Undercity/0 66.64,38.23
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.97,41.14
step
talk Elder Moonlance##55228
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.16
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 8718 |future
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto 49.54,18.95
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 39.18,31.85
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 56.85,53.10
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.35,52.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto Mount Hyjal/0 26.69,62.05
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto 62.54,22.82
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto Winterspring/0 53.23,56.75
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto 59.96,49.94
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 64.74,79.34
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/1 52.25,60.03
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto Northern Barrens/0 68.36,69.96
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto Northern Barrens/0 48.52,59.27
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
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.40,28.81
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto 37.24,79.06
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
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto 42.94,49.57
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
Leave Drak'Tharon Keep |goto 68.87,78.93 > 10000 |c |noway |q 13028 |future
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-1
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-5
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-14
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-64
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
talk Elder Firebeard##55219
accept Firebeard the Elder##29737 |goto Twilight Highlands/0 50.91,70.46
step
talk Elder Darkfeather##55218
accept Darkfeather the Elder##29736 |goto 51.88,33.07
step
talk Elder Moonlance##55228
accept Moonlance the Elder##29738 |goto Shimmering Expanse/0 57.26,86.16
step
talk Elder Windsong##55224
accept Windsong the Elder##29739 |goto Mount Hyjal/0 26.69,62.05
step
talk Elder Evershade##55227
accept Evershade the Elder##29740 |goto 62.54,22.82
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
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.66
step
talk Elder Skychaser##15577
|tip She is at the top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.65,47.10
step
talk Elder Winterhoof##15576
accept Winterhoof the Elder##8674 |goto The Cape of Stranglethorn/0 39.96,72.51
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Northern Stranglethorn/0 71.04,34.31
step
talk Zidormi##88206
Tell her _"Show me the before the invasion."_
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 8647 |future
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto 54.28,49.50
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto Burning Steppes/0 70.11,45.38
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto 52.38,23.93
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.28,79.12
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 53.91,49.91
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.54
step
talk Elder Highpeak##15559
accept Highpeak the Elder##8643 |goto The Hinterlands/0 50.00,48.05
step
Enter the building |goto Eastern Plaguelands/0 35.35,68.76 < 10 |walk
talk Elder Windrun##15592
|tip Inside the building.
accept Windrun the Elder##8688 |goto 35.58,68.82
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto 75.74,54.56
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
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |q 8652 |future
step
talk Elder Graveborn##15568
accept Graveborn the Elder##8652 |goto 61.86,53.91
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.97,41.14
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
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 8715 |future
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 56.85,53.10
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 49.54,18.95
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.35,52.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto Winterspring/0 53.23,56.75
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto 59.96,49.94
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 64.74,79.34
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto Northern Barrens/0 68.36,69.96
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto Northern Barrens/0 48.52,59.27
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
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto 42.94,49.57
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
Enter The Temple of Atal'Hakkar |goto The Temple of Atal'Hakkar/1 50.01,15.82 < 10000 |c |q 8713 |future
step
map The Temple of Atal'Hakkar/1
path follow smart; loop off; ants curved; dist 20
path	49.93,32.90	58.54,37.64
talk Elder Starsong##15593
|tip Open the world map to see an ant trail guiding you to your destination.
accept Starsong the Elder##8713 |goto 62.84,34.19
step
Leave The Temple of Atal'Hakkar |goto 62.84,34.19 > 10000 |c |noway |q 8644 |future
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
Leave Blackrock Depths |goto 50.50,62.91 > 10000 |c |noway |q 8727 |future
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
Leave Stratholme |goto 78.91,20.00 > 10000 |c |noway |q 8635 |future
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
Leave Drak'Tharon Keep |goto 68.87,78.93 > 10000 |c |noway |q 13066 |future
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
talk Lunar Festival Vendor##15898
buy 10 Festival Firecracker##21747 |goto Ironforge/0 29.92,14.20 |achieve 1552 |future
step
use the Festival Firecracker##21747
|tip Spam it quickly until you use all 10.
|tip You will need to target the ground after using it.
|achieve 1552 |goto 30.39,17.23
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
talk Lunar Festival Vendor##15898
buy 10 Red Rocket Cluster##21576 |goto Ironforge/0 29.92,14.20 |achieve 1281 |future
step
use the Red Rocket Cluster##21576
|tip Spam it quickly until you use all 10.
|achieve 1281 |goto 30.39,17.23
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
talk Innkeeper Allison##6740
|tip Inside the building.
home Trade District |goto Stormwind City/0 60.39,75.27
step
talk Human Commoner##18927
accept The Master of Summer Lore##11970 |goto 61.67,74.18
step
talk Festival Loremaster##16817
turnin The Master of Summer Lore##11970 |goto 49.53,72.26
accept Incense for the Summer Scorchlings##11964 |goto 49.53,72.26
step
talk Earthen Ring Elder##26221
accept Unusual Activity##11886 |goto 49.32,72.27
step
talk Master Fire Eater##25975
accept Torch Tossing##11731 |goto 50.05,72.30
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 8 Braziers |q 11731/1 |goto 49.81,71.77
step
talk Master Fire Eater##25975
turnin Torch Tossing##11731 |goto 50.05,72.30
accept Torch Catching##11657 |goto 50.05,72.30
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 4 times in a row without it hitting the ground.
Catch 4 Torches in a Row |q 11657/1 |goto 49.81,71.77
step
talk Master Fire Eater##25975
turnin Torch Catching##11657 |goto 50.05,72.30
step
talk Summer Scorchling##26401
|tip Under the tent.
turnin Incense for the Summer Scorchlings##11964 |goto Elwynn Forest/0 43.49,62.50
step
talk Fire Eater##25962
accept Playing with Fire##11882 |goto 43.69,62.23
step
talk Master Fire Eater##25975
turnin Playing with Fire##11882 |goto Stormwind City/0 50.05,72.30
step
Kill Twilight enemies around this area
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale/0 14.75,19.33
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
accept Inform the Elder##29092 |goto 9.37,12.71
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##29092 |goto Stormwind City/0 49.32,72.27
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
description="\nThis guide section will walk you through completing the dailies for the Midsummer Fire Festival event.",
},[[
step
label "Begin_Daily_Quests"
talk Master Fire Eater##25975
accept More Torch Tossing##11921 |goto Stormwind City/0 50.05,72.30
accept More Torch Catching##11924 |goto 50.05,72.30
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 20 Braziers |q 11921/1 |goto 49.81,71.77
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 10 times in a row without it hitting the ground.
Catch 10 Torches in a Row |q 11924/1 |goto 49.81,71.77
step
talk Master Fire Eater##25975
turnin More Torch Tossing##11921 |goto 50.05,72.30
turnin More Torch Catching##11924 |goto 50.05,72.30
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto 49.32,72.27
accept Striking Back##11947 |goto 49.32,72.27
accept Striking Back##11948 |goto 49.32,72.27
accept Striking Back##11952 |goto 49.32,72.27
accept Striking Back##11953 |goto 49.32,72.27
accept Striking Back##11954 |goto 49.32,72.27
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
kill Glacial Lieutenant##26215 |q 11953/1 |goto 68.88,20.44
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
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.64,47.09
|only if haveq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Stormwind City/0 49.32,72.27
turnin Striking Back##11947 |goto Stormwind City/0 49.32,72.27
turnin Striking Back##11948 |goto Stormwind City/0 49.32,72.27
turnin Striking Back##11952 |goto Stormwind City/0 49.32,72.27
turnin Striking Back##11953 |goto Stormwind City/0 49.32,72.27
turnin Striking Back##11954 |goto Stormwind City/0 49.32,72.27
step
You have completed all available dailies
|tip This guide will reset when more become available.
'|complete not completedq(11921,11924,11917,11947,11948,11952,11953,11954) |next "Begin_Daily_Quests"
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
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest/0 43.47,62.63
step
talk Stranglethorn Vale Flame Warden##25915
accept Honor the Flame##11832 |goto The Cape of Stranglethorn/0 51.97,67.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11801 |goto 50.53,70.72
step
talk Northern Stranglethorn Flame Warden##51574
accept Honor the Flame##28922 |goto Northern Stranglethorn/0 52.05,63.56
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28911 |goto 40.72,51.85
step
talk Zidormi##88206
Tell her: "_Show me the before the invasion_"
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 11808 |future
step
talk Flame Warden##25890
accept Honor the Flame##11808 |goto 55.54,14.89
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28917 |goto 46.36,14.27
step
talk Swamp of Sorrows Flame Warden##51602
accept Honor the Flame##28929 |goto Swamp of Sorrows/0 70.25,15.74
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11781 |goto 76.62,14.17
step
talk Duskwood Flame Warden##25896
accept Honor the Flame##11814 |goto Duskwood/0 73.69,54.61
step
talk Westfall Flame Warden##25910
accept Honor the Flame##11583 |goto Westfall/0 44.77,62.06
step
talk Redridge Flame Warden##25904
accept Honor the Flame##11822 |goto Redridge Mountains/0 24.90,53.38
step
talk Burning Steppes Flame Warden##25892
accept Honor the Flame##11810 |goto Burning Steppes/0 68.34,60.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11768 |goto 51.42,29.22
step
talk Badlands Flame Warden##51585
accept Honor the Flame##28925 |goto Badlands/0 18.77,55.91
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11766 |goto 23.94,37.14
step
talk Loch Modan Flame Warden##25902
accept Honor the Flame##11820 |goto Loch Modan/0 32.56,40.95
step
talk Dun Morogh Flame Warden##25895
accept Honor the Flame##11813 |goto Dun Morogh/0 53.80,45.23
step
talk Wetlands Flame Warden##25911
accept Honor the Flame##11828 |goto Wetlands/0 13.46,47.07
step
talk Twilight Highlands Flame Warden##51650
accept Honor the Flame##28945 |goto Twilight Highlands/0 47.26,28.96
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28944 |goto 53.29,46.47
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 11804 |future
step
talk Arathi Flame Warden##25887
accept Honor the Flame##11804 |goto 44.30,46.04
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11764 |goto 69.07,42.76
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11776 |goto Hillsbrad Foothills/0 54.53,49.93
step
talk Western Plaguelands Flame Warden##25909
accept Honor the Flame##11827 |goto Western Plaguelands/0 43.46,82.33
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28918 |goto 29.08,56.73
step
talk The Hinterlands Flame Warden##25908
accept Honor the Flame##11826 |goto The Hinterlands/0 14.34,50.07
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11784 |goto 76.59,74.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11580 |goto Silverpine Forest/0 49.63,38.68
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11786 |future
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11786 |goto 57.04,51.84
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11774 |goto Ghostlands/0 46.98,26.04
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11772 |goto Eversong Woods/0 46.43,50.41
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 11811 |future
step
talk Darkshore Flame Warden##25893
accept Honor the Flame##11811 |goto 48.72,22.66
step
talk Teldrassil Flame Warden##25906
accept Honor the Flame##11824 |goto Teldrassil/0 54.88,52.78
step
talk Azuremyst Isle Flame Warden##25888
accept Honor the Flame##11806 |goto Azuremyst Isle/0 44.48,52.50
step
talk Bloodmyst Isle Flame Warden##25891
accept Honor the Flame##11809 |goto Bloodmyst Isle/0 55.83,67.88
step
talk Winterspring Flame Warden##25917
accept Honor the Flame##11834 |goto Winterspring/0 61.24,47.25
step
click Horde Bonfire##194039
accept Descrate this Fire!##11803 |goto 58.15,47.29
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal/0 62.83,22.71
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28919 |goto Azshara/0 60.43,53.51
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11765 |goto Ashenvale/0 51.53,66.62
step
talk Ashenvale Flame Warden##25883
accept Honor the Flame##11805 |goto 86.94,41.86
step
talk Southern Barrens Flame Warden##51586
accept Honor the Flame##28926 |goto Southern Barrens/0 48.33,72.23
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28914 |goto 40.75,67.41
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11770 |goto Durotar/0 52.10,47.15
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11783 |goto Northern Barrens/0 49.92,54.40
step
talk Stonetalon Mountains Flame Warden##51588
accept Honor the Flame##28928 |goto Stonetalon Mountains/0 49.30,51.32
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11780 |goto 53.00,62.37
step
talk Desolace Flame Warden##25894
accept Honor the Flame##11812 |goto Desolace/0 66.12,17.09
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11769 |goto 26.26,77.23
step
talk Feralas Flame Warden##25899
accept Honor the Flame##11817 |goto Feralas/0 46.82,43.70
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11773 |goto 72.47,47.70
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 11831 |future
step
talk Silithus Flame Warden##25914
accept Honor the Flame##11831 |goto 60.30,33.50
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11800 |goto 50.78,41.60
step
talk Un'Goro Crater Flame Warden##51606
accept Honor the Flame##28932 |goto Un'Goro Crater/0 59.86,63.24
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28920 |goto 56.33,66.35
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 28950 |future
step
talk Uldum Flame Warden##51653
accept Honor the Flame##28950 |goto Uldum/0 53.60,31.85
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28948 |goto 53.02,34.51
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11802 |goto Tanaris/0 49.79,28.07
step
talk Tanaris Flame Warden##25916
accept Honor the Flame##11833 |goto 52.64,30.26
step
talk Dustwallow Marsh Flame Warden##25897
accept Honor the Flame##11815 |goto Dustwallow Marsh/0 61.82,40.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11771 |goto 33.28,30.87
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11777 |goto Mulgore/0 51.94,59.37
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm/0 49.39,51.33
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29036 |goto 49.37,51.39
step
talk Vashj'ir Flame Guardian##51697
|tip Inside the underwater cave.
accept Honor the Flame##29031 |goto Shimmering Expanse/0 49.35,41.99
step
click Earthen Ring Bonfire##208188
|tip Inside the underwater cave.
turnin Honor the Flame##29031 |goto 49.33,41.93
step
talk Hellfire Peninsula Flame Warden##25900
accept Honor the Flame##11818 |goto Hellfire Peninsula/0 62.17,58.29
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11775 |goto 57.19,41.92
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11799 |goto Netherstorm/0 32.26,68.35
step
talk Netherstorm Flame Warden##25913
accept Honor the Flame##11830 |goto 31.21,62.66
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11767 |goto Blade's Edge Mountains/0 49.94,59.00
step
talk Blade's Edge Flame Warden##25889
accept Honor the Flame##11807 |goto 41.57,65.90
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11787 |goto Zangarmarsh/0 35.52,51.79
step
talk Zangarmarsh Flame Warden##25912
accept Honor the Flame##11829 |goto 68.79,51.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11778 |goto Nagrand/0 51.08,33.94
step
talk Nagrand Flame Warden##25903
accept Honor the Flame##11821 |goto Nagrand/0 49.61,69.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11782 |goto Terokkar Forest/0 51.94,43.17
step
talk Terokkar Forest Flame Warden##25907
accept Honor the Flame##11825 |goto Terokkar Forest/0 54.06,55.52
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11779 |goto Shadowmoon Valley/0 33.48,30.31
step
talk Shadowmoon Valley Flame Warden##25905
accept Honor the Flame##11823 |goto Shadowmoon Valley/0 39.62,54.64
step
talk Sholazar Basin Flame Warden##32802
accept Honor the Flame##13486 |goto Sholazar Basin/0 48.11,66.05
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13450 |goto Sholazar Basin/0 47.32,61.51
step
talk Borean Tundra Flame Warden##32801
accept Honor the Flame##13485 |goto Borean Tundra/0 55.10,19.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13441 |goto Borean Tundra/0 51.04,11.79
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13451 |goto Dragonblight/0 38.47,48.19
step
talk Dragonblight Flame Warden##32803
accept Honor the Flame##13487 |goto Dragonblight/0 75.29,43.81
step
talk Crystalsong Forest Flame Warden##32807
accept Honor the Flame##13491 |goto Crystalsong Forest/0 78.18,74.96
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13457 |goto Crystalsong Forest/0 80.35,52.75
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13455 |goto The Storm Peaks/0 40.37,85.61
step
talk Storm Peaks Flame Warden##32806
accept Honor the Flame##13490 |goto The Storm Peaks/0 41.44,86.69
step
talk Zul'Drak Flame Warden##32808
accept Honor the Flame##13492 |goto Zul'Drak/0 40.38,61.30
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13458 |goto Zul'Drak/0 43.32,71.34
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13454 |goto Grizzly Hills/0 19.13,61.44
step
talk Grizzly Hills Flame Warden##32805
accept Honor the Flame##13489 |goto Grizzly Hills/0 33.91,60.45
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13453 |goto Howling Fjord/0 48.40,13.34
step
talk Howling Fjord Flame Warden##32804
accept Honor the Flame##13488 |goto Howling Fjord/0 57.81,16.12
step
talk Jade Forest Flame Guardian##69529
accept Honor the Flame##32498 |goto The Jade Forest/0 47.18,47.18
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32498 |goto The Jade Forest/0 47.15,47.09
step
talk Krasarang Wilds Flame Guardian##69533
accept Honor the Flame##32499 |goto Krasarang Wilds/0 73.99,9.49
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32499 |goto Krasarang Wilds/0 73.93,9.37
step
talk Valley of the Four Winds Flame Guardian##69550
accept Honor the Flame##32502 |goto Valley of the Four Winds/0 51.81,51.32
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32502 |goto Valley of the Four Winds/0 51.82,51.21
step
talk Dread Wastes Flame Guardian##69522
accept Honor the Flame##32497 |goto Dread Wastes/0 56.07,69.58
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32497 |goto Dread Wastes/0 56.06,69.43
step
talk Townlong Steppes Flame Guardian##69536
accept Honor the Flame##32501 |goto Townlong Steppes/0 71.52,56.29
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32501 |goto Townlong Steppes/0 71.44,56.33
step
talk Kun-Lai Summit Flame Guardian##69535
accept Honor the Flame##32500 |goto Kun-Lai Summit/0 71.14,90.87
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32500 |goto Kun-Lai Summit/0 71.10,90.96
step
talk Zidormi##163463
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Travel to the Past |complete ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms New/0 80.97,29.48 |q 32510 |future
step
talk Vale of Eternal Blossoms Flame Warden##69572
accept Honor the Flame##32510 |goto Vale of Eternal Blossoms/0 79.68,37.27
step
click Midsummer Bonfire##259864
accept Desecrate this Fire!##32496 |goto Vale of Eternal Blossoms/0 77.78,33.65
step
talk Shadowmoon Valley Flame Warden##114500
accept Honor the Flame##44579 |achieve 11283/5 |goto Shadowmoon Valley D/0 42.61,36.00
step
talk Spires of Arak Flame Guardian##114488
accept Honor the Flame##44570 |goto Spires of Arak/0 48.01,44.70
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44570 |achieve 11283/1 |goto Spires of Arak/0 48.01,44.70
step
talk Talador Flame Guardian##114489
accept Honor the Flame##44571 |goto Talador/0 43.46,71.81
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44571 |achieve 11283/2 |goto Talador/0 43.46,71.81
step
talk Nagrand Flame Guardian##114490
accept Honor the Flame##44572 |goto Nagrand D/0 80.52,47.70
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44572 |achieve 11283/3 |goto Nagrand D/0 80.52,47.70
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44583 |achieve 11276 |goto Frostfire Ridge/0 72.77,65.16
step
talk Gorgrond Flame Guardian##114491
accept Honor the Flame##44573 |goto Gorgrond/0 43.92,93.78
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44573 |achieve 11283/4 |goto Gorgrond/0 43.92,93.78
step
talk Azsuna Flame Guardian##114492
accept Honor the Flame##44574 |goto Azsuna/0 48.25,29.69
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44574 |achieve 11280/1 |goto Azsuna/0 48.25,29.69
step
talk Suramar Flame Warden##114519
accept Honor the Flame##44613 |achieve 11280/5 |goto Suramar/0 23.05,58.37
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44627 |achieve 11278 |goto Suramar/0 30.31,45.41
step
talk Val'Sharah Flame Guardian##114493
accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.93
step
click Horde Bonfire##194039
turnin Honor the Flame##44575 |achieve 11280/2 |goto Val'sharah/0 44.88,57.93
step
talk Highmountain Flame Guardian##114494
accept Honor the Flame##44576 |goto Highmountain/0 55.50,84.44
step
click Horde Bonfire##194039
turnin Honor the Flame##44576 |achieve 11280/3 |goto Highmountain/0 55.50,84.44
step
talk Stormheim Flame Guardian##114496
accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.15
step
click Horde Bonfire##194039
turnin Honor the Flame##44577 |achieve 11280/4 |goto Stormheim/0 32.49,42.15
step
talk Tiragarde Sound Flame Warden##148917
accept Honor the Flame##54737 |goto Tiragarde Sound/0 76.35,49.89
step
talk Drustvar Flame Warden##148934
accept Honor the Flame##54743 |goto Drustvar/0 40.22,47.61
step
talk Stormsong Valley Flame Warden##148932
accept Honor the Flame##54741 |goto Stormsong Valley/0 35.85,51.33
step
Follow the path |goto Vol'dun/0 54.18,36.52 < 20 |only if walking
Continue following the path |goto 57.15,40.14 < 30 |only if walking
click Horde Bonfire
accept Desecrate this Fire!##54749 |goto 55.96,47.59
step
click Horde Bonfire
accept Desecrate this Fire!##54746 |goto Nazmir/0 40.09,74.07
step
Jump down carefully here |goto Zuldazar/0 47.09,36.86 < 20 |only if walking
Follow the road down |goto 48.28,36.36 < 20 |only if walking
Cross the water |goto 48.47,40.46 < 20 |only if walking
Follow the path |goto 48.62,42.07 < 5 |only if walking
Jump down here |goto 48.95,43.95 < 10 |only if walking
Jump down here |goto 51.26,45.18 < 15 |only if walking
Jump down here |goto 52.32,48.58 < 15 |only if walking
click Horde Bonfire
accept Desecrate this Fire!##54744 |goto 53.34,48.07
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Midsummer Achievement Guide",{
author="support@zygorguides.com",
achieveid={263,1035,1034,271,272,1145},
patch='30002',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"The","Flame","Warden","Ice","the","Frost","Lord","Burning","Hot","Pole","Dance","King","of","the","Fire","Festival","Torch","Juggler","Fires","of","Azeroth","Desecration","of","the","Horde"},
description="\nThis guide section will walk you through completing the Achievements for the Midsummer Fire Festival event: - Ice the Frost Lord - Burning Hot Pole Dance - King of the Fire Festival - The Fires of Azeroth - Desecration of the Horde",
},[[
step
talk Midsummer Supplier##26123
|tip If you can't buy these be sure to complete the quests Torch Tossing and More Torch Tossing in our Midsummer Fire Festival Main Questline and Dailies guides.
buy 15 Juggling Torch##34599 |goto Stormwind City 49.0,72.0
|only if not achieved(272)
step
|use the Juggling Torch##34599
|tip You will need to juggle torches 40 times.
|tip Place the Juggling Torches on your action bar.
|tip Place the marker over your character and spam toss as fast as you can.
|tip You must juggle them all in under 15 seconds.
Earn the "Torch Juggler" Achievement |goto Dalaran 36.8,44.1 |achieve 272
step
kill Lord Ahune##25740
|tip Open up your Dungeon Finder [I], and queue for The Frost Lord Ahune battle.
|tip You will need to be high enough to enter the dungeon queue.
Earn the "Ice the Frost Lord" Achievement |achieve 263 |goto The Slave Pens 31.2,50.8
step
talk Midsummer Supplier##26123
buy 1 Mantle of the Fire Festival##23324 |goto Stormwind City 49.0,72.0 |complete achieved(271)
step
talk Midsummer Supplier##26123
buy 1 Vestment of Summer##34685 |goto 49.0,72.0 |complete achieved(271)
step
talk Midsummer Supplier##26123
buy 1 Sandals of Summer##34683 |goto 49.0,72.0 |complete achieved(271)
step
Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
Equip your Vestment of Summer |use Vestment of Summer##34685
Equip your Sandals of Summer |use Sandals of Summer##34683
click Ribbon Pole##181605
|tip It looks like a tall metal pole with a small fire on top of it
|tip Let your character spin around for 1 minute.
Earn the "Burning Hot Pole Dance" Achievement |achieve 271 |goto 50.5,73.1
step
click Flame of Orgrimmar##181336
collect Flame of Orgrimmar##23179 |n
|use the Flame of Orgrimmar##23179
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Orgrimmar's Flame##9324 |goto Orgrimmar 46.5,37.0
step
click Flame of Thunder Bluff##181337
collect Flame of Thunder Bluff##23180 |n
|use the Flame of Thunder Bluff##23180
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Thunder Bluff's Flame##9325 |goto Thunder Bluff 21.7,27.5
step
talk Festival Loremaster##16817
turnin Stealing Orgrimmar's Flame##9324 |goto Ironforge 63.8,25.3
turnin Stealing Thunder Bluff's Flame##9325 |goto Ironforge 63.8,25.3
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 9326 |future
step
click Flame of Undercity##181335
collect Flame of Undercity##23181 |n
|use the Flame of Undercity##23181
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Undercity's Flame##9326 |goto Undercity 67.9,8.3
step
click Flame of Silvermoon##188129
collect Flame of Silvermoon##35568 |n
|use the Flame of Silvermoon##35568
|tip It is recommended that you be level capped when attempting to complete this guide step.
accept Stealing Silvermoon's Flame##11935 |goto Silvermoon City 69.0,43.4
step
talk Festival Loremaster##16817
turnin Stealing Orgrimmar's Flame##9324 |goto Ironforge 63.8,25.3
turnin Stealing Thunder Bluff's Flame##9325 |goto Ironforge 63.8,25.3
turnin Stealing the Undercity's Flame##9326 |goto Ironforge 63.8,25.3
turnin Stealing Silvermoon's Flame##11935 |goto Ironforge 63.8,25.3
accept A Thief's Reward##9365 |goto Ironforge 63.8,25.3
Earn the "King of the Fire Festival" Achievement |achieve 1145
step
Load the "Flame Warden of Eastern Kingdoms" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Eastern Kingdoms"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Eastern Kingdoms" Achievement |achieve 1022
step
Load the "Flame Warden of Kalimdor" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kalimdor"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Kalimdor" Achievement |achieve 1023
step
Load the "Flame Warden of Outland" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Outland"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Outland" Achievement |achieve 1024
step
Load the "Flame Warden of Northrend" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Northrend"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Northrend" Achievement |achieve 6008
step
Load the "Flame Warden of Cataclysm" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Cataclysm"
|tip Click the line above to load the guide.
Earn the "Flame Warden of Cataclysm" Achievement |achieve 6011
step
Earn the "Fires of Azeroth" Achievement |achieve 1034
step
Load the "Extinguishing Kalimdor" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor"
|tip Click the line above to load the guide.
Earn the "Extinguishing Kalimdor" Achievement |achieve 1029
step
Load the "Extinguishing Eastern Kingdoms" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms"
|tip Click the line above to load the guide.
Earn the "Extinguishing Eastern Kingdoms" Achievement |achieve 1028
step
Load the "Extinguishing Outland" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland"
|tip Click the line above to load the guide.
Earn the "Extinguishing Outland" Achievement |achieve 1030
step
Load the "Extinguishing Northrend" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend"
|tip Click the line above to load the guide.
Earn the "Extinguishing Northrend" Achievement |achieve 6007
step
Load the "Extinguishing the Cataclysm" guide |confirm |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm"
|tip Click the line above to load the guide.
Earn the "Extinguishing the Cataclysm" Achievement |achieve 6013
step
Earn the "Desecration of the Horde" Achievment |achieve 1035
step
_Congratulations!_
You Earned "The Flame Warden" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Eastern Kingdoms",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={1028},
patch='30200',
keywords={"Extinguishing","Eastern","Kingdoms"},
description="\nThis guide section will walk you through completing the Extinguishing Eastern Kingdoms achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Eastern Kingdoms"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Kalimdor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={1029},
patch='30200',
keywords={"Extinguishing","Kalimdor"},
description="\nThis guide section will walk you through completing the Extinguishing Kalimdor achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Outland",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={1030},
patch='30200',
keywords={"Extinguishing","Outland"},
description="\nThis guide section will walk you through completing the Extinguishing Outland achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Outland"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Northrend",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={6008},
patch='40300',
keywords={"Extinguishing Northrend"},
description="\nThis guide section will walk you through completing the Extinguishing Northrend achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Cataclysm",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={6013},
patch='40300',
keywords={"Extinguishing","the","Cataclysm"},
description="\nThis guide section will walk you through completing the Extinguishing the Cataclysm achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Cataclysm"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Pandaria",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={8042},
patch='50200',
keywords={"Extinguishing","Pandaria"},
description="\nThis guide section will walk you through completing the Extinguishing Pandaria achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Pandaria"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Draenor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={11276},
patch='70200',
keywords={"Extinguishing","Draenor"},
description="\nThis guide section will walk you through completing the Extinguishing Draenor achievement for the Midsummer Fire Festival event.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Draenor"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing the Broken Isles",{
achieveid={11278},
patch='70200',
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
keywords={"Extinguishing","the","Broken","Isles"},
description="\nThis guide will walk you through obtaining the Extinguishing the Broken Isles achievement.",
},[[
leechsteps "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Broken Isles"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Extinguishing Zandalar",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={13343},
patch='80105',
description="\nThis guide section will walk you through completing the Extinguishing Zandalar achievement for the Midsummer Fire Festival event.",
},[[
step
Follow the path |goto Vol'dun/0 54.18,36.52 < 20 |only if walking
Continue following the path |goto 57.15,40.14 < 30 |only if walking
click Horde Bonfire
accept Desecrate this Fire!##54749 |goto 55.96,47.59
step
click Horde Bonfire
accept Desecrate this Fire!##54746 |goto Nazmir/0 40.09,74.07
step
Jump down carefully here |goto Zuldazar/0 47.09,36.86 < 20 |only if walking
Follow the road down |goto 48.28,36.36 < 20 |only if walking
Cross the water |goto 48.47,40.46 < 20 |only if walking
Follow the path |goto 48.62,42.07 < 5 |only if walking
Jump down here |goto 48.95,43.95 < 10 |only if walking
Jump down here |goto 51.26,45.18 < 15 |only if walking
Jump down here |goto 52.32,48.58 < 15 |only if walking
click Horde Bonfire
accept Desecrate this Fire!##54744 |goto 53.34,48.07
step
_Congratulations!_
You Earned the "Extinguishing Zandalar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Eastern Kingdoms",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={1022},
patch='30200',
keywords={"Flame","Warden","of","Eastern","Kingdoms"},
description="\nThis guide section will walk you through completing the Flame Warden of Eastern Kingdoms achievement for the Midsummer Fire Festival event.",
},[[
step
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest/0 43.47,62.63
step
talk Stranglethorn Vale Flame Warden##25915
accept Honor the Flame##11832 |goto The Cape of Stranglethorn/0 51.97,67.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11801 |goto 50.53,70.72
step
talk Northern Stranglethorn Flame Warden##51574
accept Honor the Flame##28922 |goto Northern Stranglethorn/0 52.05,63.56
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28911 |goto 40.72,51.85
step
talk Zidormi##88206
Tell her: "_Show me the before the invasion_"
Travel to the Past |complete ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 11808 |future
step
talk Flame Warden##25890
accept Honor the Flame##11808 |goto 55.54,14.89
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28917 |goto 46.36,14.27
step
talk Swamp of Sorrows Flame Warden##51602
accept Honor the Flame##28929 |goto Swamp of Sorrows/0 70.25,15.74
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11781 |goto 76.62,14.17
step
talk Duskwood Flame Warden##25896
accept Honor the Flame##11814 |goto Duskwood/0 73.69,54.61
step
talk Westfall Flame Warden##25910
accept Honor the Flame##11583 |goto Westfall/0 44.77,62.06
step
talk Redridge Flame Warden##25904
accept Honor the Flame##11822 |goto Redridge Mountains/0 24.90,53.38
step
talk Burning Steppes Flame Warden##25892
accept Honor the Flame##11810 |goto Burning Steppes/0 68.34,60.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11768 |goto 51.42,29.22
step
talk Badlands Flame Warden##51585
accept Honor the Flame##28925 |goto Badlands/0 18.77,55.91
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11766 |goto 23.94,37.14
step
talk Loch Modan Flame Warden##25902
accept Honor the Flame##11820 |goto Loch Modan/0 32.56,40.95
step
talk Dun Morogh Flame Warden##25895
accept Honor the Flame##11813 |goto Dun Morogh/0 53.80,45.23
step
talk Wetlands Flame Warden##25911
accept Honor the Flame##11828 |goto Wetlands/0 13.46,47.07
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 11764 |future
step
talk Arathi Flame Warden##25887
accept Honor the Flame##11804 |goto 44.30,46.04
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11764 |goto 69.07,42.76
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11776 |goto Hillsbrad Foothills/0 54.53,49.93
step
talk Western Plaguelands Flame Warden##25909
accept Honor the Flame##11827 |goto Western Plaguelands/0 43.46,82.33
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28918 |goto 29.08,56.73
step
talk The Hinterlands Flame Warden##25908
accept Honor the Flame##11826 |goto The Hinterlands/0 14.34,50.07
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11784 |goto 76.59,74.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11580 |goto Silverpine Forest/0 49.63,38.68
step
talk Zidormi##141488
Tell her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11786 |future
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11786 |goto 57.04,51.84
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11774 |goto Ghostlands/0 46.98,26.04
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11772 |goto Eversong Woods 46,50
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kalimdor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={1023},
patch='30200',
keywords={"Flame","Warden","of","Kalimdor"},
description="\nThis guide section will walk you through completing the Flame Warden of Kalimdor achievement for the Midsummer Fire Festival event.",
},[[
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 11811 |future
step
talk Darkshore Flame Warden##25893
accept Honor the Flame##11811 |goto 48.72,22.66
step
talk Teldrassil Flame Warden##25906
accept Honor the Flame##11824 |goto Teldrassil/0 54.88,52.78
step
talk Azuremyst Isle Flame Warden##25888
accept Honor the Flame##11806 |goto Azuremyst Isle/0 44.48,52.50
step
talk Bloodmyst Isle Flame Warden##25891
accept Honor the Flame##11809 |goto Bloodmyst Isle/0 55.83,67.88
step
talk Winterspring Flame Warden##25917
accept Honor the Flame##11834 |goto Winterspring/0 61.24,47.25
step
click Horde Bonfire##194039
accept Descrate this Fire!##11803 |goto 58.15,47.29
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28919 |goto Azshara/0 60.43,53.51
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11765 |goto Ashenvale/0 51.53,66.62
step
talk Ashenvale Flame Warden##25883
accept Honor the Flame##11805 |goto 86.94,41.86
step
talk Southern Barrens Flame Warden##51586
accept Honor the Flame##28926 |goto Southern Barrens/0 48.33,72.23
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28914 |goto 40.75,67.41
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11770 |goto Durotar/0 52.10,47.15
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11783 |goto Northern Barrens/0 49.92,54.40
step
talk Stonetalon Mountains Flame Warden##51588
accept Honor the Flame##28928 |goto Stonetalon Mountains/0 49.30,51.32
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11780 |goto 53.00,62.37
step
talk Desolace Flame Warden##25894
accept Honor the Flame##11812 |goto Desolace/0 66.12,17.09
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11769 |goto 26.26,77.23
step
talk Feralas Flame Warden##25899
accept Honor the Flame##11817 |goto Feralas/0 46.82,43.70
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11773 |goto 72.47,47.70
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 11831 |future
step
talk Silithus Flame Warden##25914
accept Honor the Flame##11831 |goto 60.30,33.50
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11800 |goto 50.78,41.60
step
talk Un'Goro Crater Flame Warden##51606
accept Honor the Flame##28932 |goto Un'Goro Crater/0 59.86,63.24
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28920 |goto 56.33,66.35
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11802 |goto Tanaris/0 49.79,28.07
step
talk Tanaris Flame Warden##25916
accept Honor the Flame##11833 |goto 52.64,30.26
step
talk Dustwallow Marsh Flame Warden##25897
accept Honor the Flame##11815 |goto Dustwallow Marsh/0 61.82,40.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11771 |goto 33.28,30.87
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11777 |goto Mulgore/0 51.94,59.37
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Outland",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={1024},
patch='30102',
keywords={"Flame","Warden","of","Outland"},
description="\nThis guide section will walk you through completing the Flame Warden of Outland achievement for the Midsummer Fire Festival event.",
},[[
step
talk Hellfire Peninsula Flame Warden##25900
accept Honor the Flame##11818 |goto Hellfire Peninsula 62.2,58.3
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11775 |goto Hellfire Peninsula 57.2,41.8
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11799 |goto Netherstorm 32.3,68.2
step
talk Netherstorm Flame Warden##25913
accept Honor the Flame##11830 |goto Netherstorm 31.2,62.7
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11767 |goto Blade's Edge Mountains 50.0,59.0
step
talk Blade's Edge Flame Warden##25889
accept Honor the Flame##11807 |goto Blade's Edge Mountains 41.6,65.9
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11787 |goto Zangarmarsh 35.6,51.8
step
talk Zangarmarsh Flame Warden##25912
accept Honor the Flame##11829 |goto Zangarmarsh 68.8,52.0
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11778 |goto Nagrand/0 51.08,33.94
step
talk Nagrand Flame Warden##25903
accept Honor the Flame##11821 |goto Nagrand/0 49.61,69.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11782 |goto Terokkar Forest/0 51.94,43.17
step
talk Terokkar Forest Flame Warden##25907
accept Honor the Flame##11825 |goto Terokkar Forest/0 54.06,55.52
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11779 |goto Shadowmoon Valle/0 33.48,30.31
step
talk Shadowmoon Valley Flame Warden##25905
accept Honor the Flame##11823 |goto Shadowmoon Valley/0 39.62,54.64
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Northrend",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={6007},
patch='40300',
keywords={"Flame","Warden","of","Northrend"},
description="\nThis guide section will walk you through completing the Flame Warden of Northrend achievement for the Midsummer Fire Festival event.",
},[[
step
talk Sholazar Basin Flame Warden##32802
accept Honor the Flame##13486 |goto Sholazar Basin/0 48.11,66.05
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13450 |goto Sholazar Basin/0 47.32,61.51
step
talk Borean Tundra Flame Warden##32801
accept Honor the Flame##13485 |goto Borean Tundra/0 55.10,19.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13441 |goto Borean Tundra/0 51.04,11.79
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13451 |goto Dragonblight/0 38.47,48.19
step
talk Dragonblight Flame Warden##32803
accept Honor the Flame##13487 |goto Dragonblight/0 75.29,43.81
step
talk Crystalsong Forest Flame Warden##32807
accept Honor the Flame##13491 |goto Crystalsong Forest/0 78.18,74.96
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13457 |goto Crystalsong Forest/0 80.35,52.75
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13455 |goto The Storm Peaks/0 40.37,85.61
step
talk Storm Peaks Flame Warden##32806
accept Honor the Flame##13490 |goto The Storm Peaks/0 41.44,86.69
step
talk Zul'Drak Flame Warden##32808
accept Honor the Flame##13492 |goto Zul'Drak/0 40.38,61.30
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13458 |goto Zul'Drak/0 43.32,71.34
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13454 |goto Grizzly Hills/0 19.13,61.44
step
talk Grizzly Hills Flame Warden##32805
accept Honor the Flame##13489 |goto Grizzly Hills/0 33.91,60.45
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13453 |goto Howling Fjord/0 48.40,13.34
step
talk Howling Fjord Flame Warden##32804
accept Honor the Flame##13488 |goto Howling Fjord/0 57.81,16.12
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Cataclysm",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={6011},
patch='40300',
keywords={"Flame","Warden","of","Cataclysm"},
description="\nThis guide section will walk you through completing the Flame Warden of Cataclysm achievement for the Midsummer Fire Festival event.",
},[[
step
Complete the "Do It the Azerite Way" Quest |q 55521 |future |or
|tip This quest is required to access the fires of Hyjal.
Click Here to Load the "Essential Empowerment" Leveling Guide |confirm |loadguide "Leveling Guides\\Battle for Azeroth (10-50)\\Heart of Azeroth\\Essential Empowerment"
step
talk Hyjal Flame Guardian##51682
accept Honor the Flame##29030 |goto Mount Hyjal/0 62.83,22.71
step
talk Deepholm Flame Guardian##51698
accept Honor the Flame##29036 |goto Deepholm 49.4,51.3
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29036 |goto 49.4,51.3
step
talk Twilight Highlands Flame Warden##51650
accept Honor the Flame##28945 |goto Twilight Highlands 47.2,28.9
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28944 |goto 53.4,46.4
step
talk Vashj'ir Flame Guardian##51697
accept Honor the Flame##29031 |goto Shimmering Expanse 49.4,42.0
step
click Earthen Ring Bonfire##208188
turnin Honor the Flame##29031 |goto 49.3,42.0
step
talk Zidormi##162419
Ask her _"Can you show me what Uldum was like during the time of the Cataclysm?"_
Travel to the Past |complete ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 28950 |future
step
talk Uldum Flame Warden##51653
accept Honor the Flame##28950 |goto Uldum 53.6,31.9
step
click Horde Bonfire##194039
accept Desecrate this Fire!##28948 |goto 52.9,34.5
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Pandaria",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={8045},
patch='50200',
keywords={"Flame","Warden","of","Pandaria"},
description="\nThis guide section will walk you through completing the Flame Warden of Pandaria achievement for the Midsummer Fire Festival event.",
},[[
step
talk Jade Forest Flame Guardian##69529
accept Honor the Flame##32498 |goto The Jade Forest/0 47.18,47.18
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32498 |goto The Jade Forest/0 47.15,47.09
step
talk Krasarang Wilds Flame Guardian##69533
accept Honor the Flame##32499 |goto Krasarang Wilds/0 73.99,9.49
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32499 |goto Krasarang Wilds/0 73.93,9.37
step
talk Valley of the Four Winds Flame Guardian##69550
accept Honor the Flame##32502 |goto Valley of the Four Winds/0 51.81,51.32
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32502 |goto Valley of the Four Winds/0 51.82,51.21
step
talk Dread Wastes Flame Guardian##69522
accept Honor the Flame##32497 |goto Dread Wastes/0 56.07,69.58
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32497 |goto Dread Wastes/0 56.06,69.43
step
talk Townlong Steppes Flame Guardian##69536
accept Honor the Flame##32501 |goto Townlong Steppes/0 71.52,56.29
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32501 |goto Townlong Steppes/0 71.44,56.33
step
talk Kun-Lai Summit Flame Guardian##69535
accept Honor the Flame##32500 |goto Kun-Lai Summit/0 71.14,90.87
step
click Midsummer Bonfire##259864
turnin Honor the Flame##32500 |goto Kun-Lai Summit/0 71.10,90.96
step
talk Zidormi##163463
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Travel to the Past |complete ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms New/0 80.97,29.48 |q 32510 |future
step
talk Vale of Eternal Blossoms Flame Warden##69572
accept Honor the Flame##32510 |goto Vale of Eternal Blossoms/0 79.68,37.27
step
click Midsummer Bonfire##259864
accept Desecrate this Fire!##32496 |goto Vale of Eternal Blossoms/0 77.78,33.65
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Draenor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={11283},
patch='70200',
keywords={"Flame","Warden","of","Draenor"},
description="\nThis guide section will walk you through completing the Flame Warden of Draenor achievement for the Midsummer Fire Festival event.",
},[[
step
talk Shadowmoon Valley Flame Warden##114500
accept Honor the Flame##44579 |achieve 11283/5 |goto Shadowmoon Valley D/0 42.61,36.00
step
talk Spires of Arak Flame Guardian##114488
accept Honor the Flame##44570 |goto Spires of Arak/0 48.01,44.70
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44570 |achieve 11283/1 |goto Spires of Arak/0 48.01,44.70
step
talk Talador Flame Guardian##114489
accept Honor the Flame##44571 |goto Talador/0 43.46,71.81
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44571 |achieve 11283/2 |goto Talador/0 43.46,71.81
step
talk Nagrand Flame Guardian##114490
accept Honor the Flame##44572 |goto Nagrand D/0 80.52,47.70
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44572 |achieve 11283/3 |goto Nagrand D/0 80.52,47.70
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44583 |achieve 11276 |goto Frostfire Ridge/0 72.77,65.16
step
talk Gorgrond Flame Guardian##114491
accept Honor the Flame##44573 |goto Gorgrond/0 43.92,93.78
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44573 |achieve 11283/4 |goto Gorgrond/0 43.92,93.78
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Broken Isles",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={11280},
patch='70200',
keywords={"Flame","Warden","of","Broken","Isles"},
description="\nThis guide section will walk you through completing the Flame Warden of Broken Isles achievement for the Midsummer Fire Festival event.",
},[[
step
talk Azsuna Flame Guardian##114492
accept Honor the Flame##44574 |goto Azsuna/0 48.25,29.69
step
click Midsummer Bonfire##259864
turnin Honor the Flame##44574 |achieve 11280/1 |goto Azsuna/0 48.25,29.69
step
talk Suramar Flame Warden##114519
accept Honor the Flame##44613 |achieve 11280/5 |goto Suramar/0 23.05,58.37
step
click Horde Bonfire##194039
accept Desecrate this Fire!##44627 |achieve 11278 |goto Suramar/0 30.31,45.41
step
talk Val'Sharah Flame Guardian##114493
accept Honor the Flame##44575 |goto Val'sharah/0 44.88,57.93
step
click Horde Bonfire##194039
turnin Honor the Flame##44575 |achieve 11280/2 |goto Val'sharah/0 44.88,57.93
step
talk Highmountain Flame Guardian##114494
accept Honor the Flame##44576 |goto Highmountain/0 55.50,84.44
step
click Horde Bonfire##194039
turnin Honor the Flame##44576 |achieve 11280/3 |goto Highmountain/0 55.50,84.44
step
talk Stormheim Flame Guardian##114496
accept Honor the Flame##44577 |goto Stormheim/0 32.49,42.15
step
click Horde Bonfire##194039
turnin Honor the Flame##44577 |achieve 11280/4 |goto Stormheim/0 32.49,42.15
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\The Fires of Azeroth\\Flame Warden of Kul Tiras",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Midsummer Fire Festival') end,
achieveid={13341},
patch='80105',
description="\nThis guide section will walk you through completing the Flame Warden of Kul Tiras achievement for the Midsummer Fire Festival event.",
},[[
step
talk Tiragarde Sound Flame Warden##148917
accept Honor the Flame##54737 |goto Tiragarde Sound/0 76.35,49.89
step
talk Drustvar Flame Warden##148934
accept Honor the Flame##54743 |goto Drustvar/0 40.22,47.61
step
talk Stormsong Valley Flame Warden##148932
accept Honor the Flame##54741 |goto Stormsong Valley/0 35.85,51.33
step
_Congratulations!_
You Earned the "Flame Warden of Kul Tiras" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Quests",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the quests for the Noblegarden event.",
condition_suggested=function() return isevent('Noblegarden') end,
condition_end=function() return completedq(13502) end,
},[[
step
talk Dwarf Commoner##19148
accept Spring Collectors##13484 |goto Ironforge/0 30.86,71.95
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Dun Morogh/0 53.99,50.70
step
talk Noblegarden Vendor##32836
accept A Tisket, A Tasket, A Noblegarden Basket##13502 |goto 54.11,50.81
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 10 Noblegarden Chocolate##44791 |q 13502/1 |goto 53.51,50.84
step
talk Noblegarden Vendor##32836
turnin A Tisket, a Tasket, a Noblegarden Basket##13502 |goto 54.11,50.81
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Noblegarden') end,
description="\nThis guide section will walk you through completing the dailies for the Noblegarden event.",
},[[
step
label "Begin_Daily_Quests"
talk Dwarf Commoner##19148
accept Spring Collectors##13484 |goto Ironforge/0 30.86,71.95
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Dun Morogh/0 53.99,50.70
accept The Great Egg Hunt##13480 |goto 53.99,50.70
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 20 Brightly Colored Shell Fragment##44806 |q 13480/1 |goto 53.51,50.84
step
talk Spring Collector##32799
turnin The Great Egg Hunt##13480 |goto 53.99,50.70
step
You have completed all Noblegarden daily quests
|tip This guide will reset when more become available.
'|complete not completedq(13480) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Blushing Bride",{
author="support@zygorguides.com",
description="\nKiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2576},
patch='30100',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.51,50.84 |or
'|complete achieved(2576) |or
step
talk Noblegarden Vendor##32836
buy 1 Black Tuxedo Pants##151804 |goto 54.11,50.82 |or
'|complete achieved(2576) |or
step
talk Noblegarden Vendor##32836
buy 1 White Tuxedo Shirt##6833 |goto 54.11,50.82 |or
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
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.51,50.84 |or
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
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 25 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.51,50.84 |or
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
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.51,50.84 |or
'|complete achieved(2436) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Robes##44800 |goto 54.11,50.82 |or
'|complete achieved(2436) |or
step
Equip the Spring Robes |equipped Spring Robes##44800 |or
'|complete achieved(2436) |or
step
use Spring Robes##44800
Plant a Flower in the Badlands |achieve 2436/1 |goto Badlands/0 21.71,57.73
step
talk Zidormi##128607
|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
Travel to the Past |complete ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
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
use the Spring Robes##44800
Plant a Flower in the Desolace |achieve 2436/2 |goto Desolace/0 64.67,10.44
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
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip You may need to loot hundreds, if not thousands of these eggs.
use the Brightly Colored Egg##45072+
collect 1 Elegant Dress##151806 |achieve 249 |goto Dun Morogh/0 53.51,50.84 |or
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
Gain the "Noblegarden Bunny" Buff |havebuff 237000 |goto Dun Morogh/0 53.51,50.84 |or
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
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
collect 1 Brightly Colored Egg##113768 |achieve 2676 |goto Dun Morogh/0 53.51,50.84 |or
'|complete achieved(2676) |or
step
Earn the "I Found One!" Achievement |achieve 2676
step
_Congratulations!_
You Earned the "I Found One!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Noble Garden",{
author="support@zygorguides.com",
description="\nHide a Brightly Colored Egg in Stormwind City.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2421},
patch='30100',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 5 Noblegarden Chocolate##44791 |goto Elwynn Forest/0 42.38,65.61 |or
'|complete achieved(2421) |or
step
talk Noblegarden Vendor##32836
buy 1 Noblegarden Egg##44818 |goto 43.04,65.32 |or
'|complete achieved(2421) |or
step
use Noblegarden Egg##44818
Earn the "Noble Garden" Achievement |achieve 2421 |goto Stormwind City/0 72.99,89.93
step
_Congratulations!_
You Earned the "Noble Garden" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker",{
author="support@zygorguides.com",
description="\nUse Spring Flowers to place rabbit ears upon players of at least 10th level of the following races:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nGoblin\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead\nWorgen",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2422},
patch='30100',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.51,50.84 |or
'|complete achieved(2422) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Flowers##45073 |goto Dun Morogh/0 54.11,50.82 |or
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
"Azure Watch\nDolanar\nGoldshire\nKharanos",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2419},
patch='30100',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Dun Morogh/0 53.51,50.84 |or
'|complete achieved(2419) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Rabbit's Foot##44794 |goto 54.11,50.82 |or
'|complete achieved(2419) |or
step
use the Spring Rabbit's Foot##44794
Learn the "Spring Rabbit" Battle Pet |learnpet 61725 |or
'|complete achieved(2419) |or
step
Find Your Spring Rabbit Another to Love in Kharanos |achieve 2419/4 |goto 53.49,50.85
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Goldshire |achieve 2419/3 |goto Elwynn Forest/0 43.1,67.6
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Dolanaar |achieve 2419/2 |goto Teldrassil/0 55.45,50.42
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Azure Watch |achieve 2419/1 |goto Azuremyst Isle/0 49.12,51.49
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Earn the "Spring Fling" Achievement |achieve 2419
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
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip You may need to loot hundreds, if not thousands of these eggs.
use the Brightly Colored Egg##45072+
collect 1 White Tuxedo Shirt##6833 |achieve 248/1 |goto Dun Morogh/0 53.51,50.84 |or
'|complete achieved(248) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip You may need to loot hundreds, if not thousands of these eggs.
use the Brightly Colored Egg##45072+
collect 1 Black Tuxedo Pants##151804 |achieve 248/2 |goto 53.51,50.84 |or
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
description="\nThis guide section will walk you through completing the quests for the Pilgrim's Bounty event.",
},[[
step
talk Human Commoner##18927
accept Pilgrim's Bounty##14022 |goto Stormwind City/0 61.68,74.18
step
talk Gregory Tabor##34675
turnin Pilgrim's Bounty##14022 |goto Elwynn Forest/0 34.10,51.45
step
talk Bountiful Table Hostess##34653
accept Sharing a Bountiful Feast##14064 |goto 34.18,51.07
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto 34.24,51.23 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 34.29,51.07 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 34.40,51.06 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 34.43,51.23 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
'|q 14064/1 |next "Leave_The_Table" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 34.33,51.33 |or |q 14064
'|q 14064/1 |next "Leave_The_Table" |or
step
Gain the Spirit of Sharing |q 14064/1 |goto 34.29,51.07
step
label "Leave_The_Table"
Leave the Table |outvehicle |q 14064
|tip Click the "Exit" button on your action bar.
step
talk Bountiful Table Hostess##34653
turnin Sharing a Bountiful Feast##14064 |goto 34.18,51.07
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto 34.14,51.53 |q 14023 |future |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860 |q 14023 |future |or
'|learn Spice Bread Stuffing##62050 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862 |q 14024 |future |or
'|learn Pumpkin Pie##62044 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858 |q 14028 |future |or
'|learn Cranberry Chutney##62049 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859 |q 14030 |future |or
'|learn Candied Sweet Potato##62051 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861 |q 14035 |future |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Gregory Tabor##34675
accept Spice Bread Stuffing##14023 |goto 34.10,51.45
step
talk Wilmina Holbeck##34682
buy 10 Simple Flour##30817 |goto 34.14,51.53 |q 14023
buy 10 Mild Spices##2678 |goto 34.14,51.53 |q 14023
buy 10 Autumnal Herbs##44835 |goto 34.14,51.53 |q 14023
step
create 10 Spice Bread##37836,Cooking,10 total |goto 33.82,50.84 |q 14023
step
create 10 Spice Bread Stuffing##62050,Cooking,10 total |goto 33.82,50.84 |q 14023
|tip Save five for later.
step
create Spice Bread Stuffing##62050,Cooking,100 |goto 33.82,50.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Jasper Moore##34744
turnin Spice Bread Stuffing##14023 |goto 33.89,50.81
accept Pumpkin Pie##14024 |goto 33.89,50.81
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##62044
step
talk Wilmina Holbeck##34682
buy 10 Ripe Elwynn Pumpkin##46784 |goto 34.14,51.53 |q 14024
buy 10 Honey##44853 |goto 34.14,51.53 |q 14024
step
create 10 Pumpkin Pie##62044,Cooking,10 total |goto 33.83,50.73 |q 14024
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Pumpkin Pie##62044,Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Elwynn Pumpkin and 1 Honey.
step
talk Edward Winslow##34644
turnin Pumpkin Pie##14024 |goto Dun Morogh/0 59.81,34.34
accept Cranberry Chutney##14028 |goto 59.81,34.34
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
step
talk Elizabeth Barker Winslow##34645
buy 5 Tangy Southfury Cranberries##44854 |goto 59.77,34.34 |q 14028
buy 5 Honey##44853 |goto 59.77,34.34 |q 14028
step
create 5 Cranberry Chutney##62049,Cooking,5 total |goto 60.01,34.39 |q 14028
|tip Click the line to open your cooking panel and create them.
step
create Cranberry Chutney##62049,Cooking,220 |goto 60.01,34.39
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Jasper Moore##34744
turnin Cranberry Chutney##14028 |goto Elwynn Forest/0 33.89,50.81
accept They're Ravenous In Darnassus##14030 |goto Elwynn Forest/0 33.89,50.81
step
collect 5 Spice Bread Stuffing##44837 |q 14030/1
|tip You should have these from a previous step.
step
collect 5 Pumpkin Pie##44836 |q 14030/2
|tip You should have these from a previous step.
step
Travel to Darnassus |goto Teldrassil/0 52.38,89.47 < 10000 |c |next "Turnin_They're_Ravenous_In_Darnassus" |or |q 14030
'|goto Darkshore/0 47.43,18.01 < 10000 |c |noway |next "Travel_To_The_Past" |or |q 14030
step
label "Travel_To_The_Past"
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 14030
step
label "Turnin_They're_Ravenous_In_Darnassus"
talk Isaac Allerton##34676
turnin They're Ravenous In Darnassus##14030 |goto Darnassus/0 61.47,49.10
accept Candied Sweet Potatoes##14033 |goto 61.47,49.10
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Ikaneba Summerset##34681
buy 5 Teldrassil Sweet Potato##44855 |goto 61.64,49.12 |q 14033
buy 5 Honey##44853 |goto 61.64,49.12 |q 14033
buy 5 Autumnal Herbs##44835 |goto 61.64,49.12 |q 14033
step
create 5 Candied Sweet Potato##62051,Cooking,5 total |goto 62.15,46.20 |q 14033
|tip Click the line to open your cooking panel and create them.
step
create Candied Sweet Potato##62051,Cooking,280
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Teldrassil Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Gregory Tabor##34675
turnin Candied Sweet Potatoes##14033 |goto Elwynn Forest/0 34.10,51.45
accept Slow-roasted Turkey##14035 |goto Elwynn Forest/0 34.10,51.45
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 5 Wild Turkey##44834 |q 14035 |goto 42.32,62.16
step
talk Wilmina Holbeck##34682
buy 10 Honey##44853 |goto 34.15,51.52 |q 14035
buy 5 Autumnal Herbs##44835 |goto 34.15,51.52 |q 14035
step
create 5 Slow-Roasted Turkey##62045,Cooking,5 total |goto 33.83,50.73 |q 14035
|tip Click the line to open your cooking panel and create them.
step
talk Isaac Allerton##34676
turnin Slow-roasted Turkey##14035 |goto Darnassus/0 61.47,49.10
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="\nThis quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.",
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |complete completedq(14035)
step
talk Jasper Moore##34744
accept She Says Potato##14055 |goto Elwynn Forest/0 33.88,50.80
step
talk Ellen Moore##34710
accept We're Out of Cranberry Chutney Again?##14053 |goto 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 20 Ripe Elwynn Pumpkin##46784 |goto 34.15,51.52 |q 14054 |future
buy 20 Simple Flour##30817 |goto 34.15,51.52 |q 14051 |future
buy 20 Mild Spices##2678 |goto 34.15,51.52 |q 14051 |future
buy 60 Autumnal Herbs##44835 |goto 34.15,51.52 |q 14055
buy 100 Honey##44853 |goto 34.15,51.52 |q 14054 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 20 Wild Turkey##44834 |goto 42.32,62.16 |q 14048 |future
step
talk Caitrin Ironkettle##34708
accept Don't Forget The Stuffing!##14051 |goto Dun Morogh/0 60.04,34.31
accept Can't Get Enough Turkey##14048 |goto 60.04,34.31
step
talk Elizabeth Barker Winslow##34645
buy 20 Tangy Wetland Cranberries##44854 |goto 59.77,34.34 |q 14051
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 14055
step
talk Ikaneba Summerset##34681
buy 20 Teldrassil Sweet Potato##44855 |goto Darnassus/0 61.64,49.13 |q 14055
step
talk Mary Allerton##34711
accept Easy As Pie##14054 |goto 61.90,46.17
step
create 20 Pumpkin Pie##62044,Cooking,20 total |goto 62.19,46.22 |q 14054
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread##37836,Cooking,20 total |goto 62.19,46.22 |q 14051
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread Stuffing##62050,Cooking,20 total |goto 62.19,46.22 |q 14051
|tip Click the line to open your cooking panel and create them.
step
create 20 Slow-Roasted Turkey##62045,Cooking,20 total |goto 62.19,46.22 |q 14048
|tip Click the line to open your cooking panel and create them.
step
create 20 Candied Sweet Potato##62051,Cooking,20 total |q 14055/1 |goto 62.19,46.22
|tip Click the line to open your cooking panel and create them.
step
create 20 Cranberry Chutney##62049,Cooking,20 total |goto 62.19,46.22 |q 14053
|tip Click the line to open your cooking panel and create them.
step
talk Mary Allerton##34711
turnin Easy As Pie##14054 |goto 61.90,46.17
step
talk Caitrin Ironkettle##34708
turnin Can't Get Enough Turkey##14048 |goto Dun Morogh/0 60.04,34.31
turnin Don't Forget The Stuffing!##14051 |goto 60.04,34.31
step
talk Ellen Moore##34710
turnin We're Out of Cranberry Chutney Again?##14053 |goto Elwynn Forest/0 33.71,50.63
step
talk Jasper Moore##34744
turnin She Says Potato##14055 |goto 33.89,50.81
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
clicknpc The Turkey Chair##34812
|tip Use the "Pass The Cranberries" ability to pass the food to other players at the table.
|tip You must target the other players and use the "Pass the Cranberries" ability.
|tip Do this repeatedly until you earn the "FOOD FIGHT!" achievement.
Start a Food Fight! |achieve 3579 |goto Elwynn Forest/0 34.29,51.07
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
achieveid={3576},
patch='30300',
},[[
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto Elwynn Forest/0 34.14,51.53
|only if not achieved(3576)
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto 33.71,50.63
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861
|only if not achieved(3576)
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Wilmina Holbeck##34682
buy 1 Simple Flour##30817 |goto 34.14,51.53
buy 1 Mild Spices##2678 |goto 34.14,51.53
buy 1 Autumnal Herbs##44835 |goto 34.14,51.53
|only if not achieved(3576)
step
create 1 Spice Bread##37836,Cooking,1 total |goto 33.82,50.84 |achieve 3576/5
|tip Click the line to open your cooking panel and create it.
|only if not achieved(3576)
step
create 1 Spice Bread Stuffing##62050,Cooking,1 total |goto 33.82,50.84 |achieve 3576/5
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##62044
step
talk Wilmina Holbeck##34682
buy 1 Ripe Tirisfal Pumpkin##46796 |goto 34.14,51.53
buy 1 Honey##44853 |goto 34.14,51.53
|only if not achieved(3576)
step
create 1 Pumpkin Pie##62044,Cooking,1 total |goto 33.82,50.84 |achieve 3576/3
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
step
talk Elizabeth Barker Winslow##34645
buy 1 Tangy Southfury Cranberries##44854 |goto Dun Morogh/0 59.77,34.34
buy 1 Honey##44853 |goto 59.77,34.34
|only if not achieved(3576)
step
create 1 Cranberry Chutney##62049,Cooking,1 total |goto 60.01,34.39 |achieve 3576/2
|tip Click the line to open your cooking panel and create iy.
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |achieve 3576 |future
step
talk Ikaneba Summerset##34681
buy 1 Mulgore Sweet Potato##46797 |goto Darnassus/0 61.47,49.10
buy 1 Honey##44853 |goto 61.47,49.10
buy 1 Autumnal Herbs##44835 |goto 61.47,49.10
|only if not achieved(3576)
step
create 1 Candied Sweet Potato##62051,Cooking,1 total |goto 62.15,46.20 |achieve 3576/1
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 1 Wild Turkey##44834 |goto Elwynn Forest/0 42.32,62.16
|only if not achieved(3576)
step
talk Wilmina Holbeck##34682
buy 2 Honey##44853 |goto 34.15,51.52
buy 1 Autumnal Herbs##44835 |goto 34.15,51.52
|only if not achieved(3576)
step
create 1 Slow-Roasted Turkey##62045,Cooking,1 total |goto 33.83,50.73 |achieve 3576/4
|tip Click the line to open your cooking panel and create it.
step
Cook a Pilgrim's Bounty Feast |achieve 3576
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
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!" 1-1
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch" 1-43
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril" 1-9
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring" 1-10
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time" 1-5
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator" 1-1
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
"Darnassus\nThe Exodar\n"..
"Ironforge\nStormwind",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3556},
patch='30300',
},[[
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Elwynn Forest/0 34.24,51.23 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 34.29,51.07 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 34.40,51.06 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 34.43,51.23 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 34.33,51.33 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |complete ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |achieve 3556 |future
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Darnassus/0 62.82,48.49 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 62.62,48.25 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 62.69,47.92 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 62.95,47.92 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 63.02,48.27 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto The Exodar/0 77.40,53.43 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 77.02,53.48 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 76.87,53.01 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 77.14,52.60 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 77.49,52.89 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(250623,5) |goto Dun Morogh/0 59.90,34.73 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(250626,5) |goto 59.84,34.63 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(250622,5) |goto 59.88,34.54 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(250625,5) |goto 59.96,34.56 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(250624,5) |goto 59.97,34.69 |or
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3556 |next "Earn_Pilgrim's_Paunch" |or
step
label "Earn_Pilgrim's_Paunch"
Acquire the Spirit of Sharing |achieve 3556
step
_Congratulations!_
You Earned the "Pilgrim's Paunch" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril",{
author="support@zygorguides.com",
description="\nWhile wearing either a Pilgrim's Dress, Robe, or Attire, take a seat at the following enemy capital cities:\n\n"..
"Orgrimmar\nSilvermoon City\n"..
"Thunder Bluff\nUndercity",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3580},
patch='30200',
},[[
step
talk Zidormi##141488
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80 |achieve 3580 |future
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3580)
step
use Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
use Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
use Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
|only if not achieved(3580)
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Undercity |achieve 3580/4 |goto Tirisfal Glades/0 62.22,66.61
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Silvermoon City |achieve 3580/2 |goto Eversong Woods/0 55.22,53.69
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Thunder Bluff |achieve 3580/3 |goto Thunder Bluff/0 28.59,62.78
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Orgrimmar |achieve 3580/1 |goto Durotar/0 46.31,15.09
step
Earn the "Pilgrim's Peril" Achievement |achieve 3580
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
achieveid={3596},
patch='30300',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-21
step
Earn the "Pilgrim's Progress" Achievement |achieve 3596
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
clicknpc The Pie Chair##34822
|tip Use the "Pass the Pie" ability on your action bar five times.
Pass the Pie |achieve 3558/3 |goto Elwynn Forest/0 34.24,51.23 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass the Turky" ability on your action bar five times.
Pass the Turkey |achieve 3558/4 |goto 34.29,51.07 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Pass the Cranberries" ability on your action bar five times.
Pass the Cranberries |achieve 3558/2 |goto 34.40,51.06 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Pass the Sweet Potatoes" ability on your action bar five times.
Pass the Sweet Potatoes |achieve 3558/1 |goto 34.43,51.23 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|achieve 3558 |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Pass the Stuffing" ability on your action bar five times.
Pass the Stuffing |achieve 3558/5 |goto 34.33,51.33 |or
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
kill Wild Turkey##32820+
|tip Kill 40 turkeys without letting your Turkey Tracker Buff expire.
|tip You will need to fly around Elwynn Forest.
|tip You will be given 30 seconds for each kill to find a new turkey.
|tip Use your "Track Beast" ability and look for yellow dots on the minimap. |only Hunter
Earn the "Turkinator" Achievement |achieve 3578 |goto Elwynn Forest/0 42.32,62.16
step
_Congratulations!_
You Earned the "The Turkinator" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\Incursions",{
author="support@zygorguides.com",
description="\nDefend various Alliance assets against Horde incursions.",
},[[
step
label "Guide_Start"
No Incursions Currently Available |confirm |only if default
'Incursion Detected -  Tiragarde Sound |complete invasion(5896,876) |next "A_Sound_Defense" |only if invasion(5896,876) and not completedq(53711)
'Incursion Detected -  Vol'dun |complete invasion(5970,875) |next "Many_Fine_Heroes" |only if invasion(5970,875) and not completedq(54134)
'Incursion Detected -  Stormsong Valley |complete invasion(5966,876) |next "Storms_Rage" |only if invasion(5966,876) and not completedq(51982)
'Incursion Detected -  Nazmir |complete invasion(5969,875) |next "March_On_The_Marsh" |only if invasion(5969,875) and not completedq(54136)
'Incursion Detected -  Zuldazar |complete invasion(5973,875) |next "Ritual_Rampage" |only if invasion(5973,875) and not completedq(54138)
'Incursion Detected -  Drustvar |complete invasion(5964,876) |next "A_Drust_Cause" |only if invasion(5964,876) and not completedq(53701)
step
label "A_Sound_Defense"
accept A Sound Defense##53711 |goto Boralus/0 67.35,15.24
|tip You will accept this quest automatically.
step
Repel #4# Horde Attacks |q 53711/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Tiragarde Sound.
step
Follow the path |goto Boralus/0 78.96,75.69 < 20 |only if walking
Run up the stairs |goto 78.09,72.74 < 15 |only if walking
click Climbing Rope##210040 |goto 78.34,70.94
Climb the Rope |goto 79.69,67.82 < 44 |c |noway |q 53711
step
clicknpc Proudmoore Gryphon##144932
|tip On top of the wall.
Ride the Gryphon |invehicle |goto 79.69,67.82 |q 53711
step
Ride the Gryphon to the Target |q 53711/2 |goto Tiragarde Sound/0 81.44,24.57 |notravel
stickystart "Sabotage_The_Horde_Airship_53711"
step
Run down the ramp |goto Tiragarde Sound/0 81.89,24.79 < 10 |only if walking
kill Captain Nashashuk##144898 |q 53711/4 |goto 82.27,24.44
|tip Inside the building on the deck of the airship.
step
label "Sabotage_The_Horde_Airship_53711"
Kill enemies around this area
click Bag of Bombs+
|tip They look like large brown sacks full of spiked metal balls on the ground around this area on the airship.
click Engine Gearing+
|tip They look like golden spinning cogwheel gear machines on the deck of the airship.
click Pressure Valve+
|tip They look like red spoked wheel handles on the walls around this area on the airship.
click Fuel Barrel+
|tip They look like piles of red metal barrels on the ground around this area downstairs on the airship.
Sabotage the Horde Airship |q 53711/3 |goto 81.72,24.96
step
clicknpc Proudmoore Gryphon##144934
|tip On the deck of the airship, where you landed.
Watch the dialogue
Ride the Proudmoore Gryphon to Safety |q 53711/5 |goto 81.40,24.53
step
Return to Boralus |goto Boralus/0 76.37,18.08 < 20 |noway |c |q 53711
step
Enter the building |goto Boralus/0 68.81,21.13 < 15 |walk
talk Provisioner Fray##135808
|tip Downstairs inside the building.
turnin A Sound Defense##53711 |goto Boralus/0 67.52,21.56
|next "Guide_Start"
step
label "Many_Fine_Heroes"
accept Many Fine Heroes##54134 |goto Vol'dun/0 36.74,34.33
|tip You will accept this quest automatically.
step
Attack #4# Horde Targets |q 54134/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Vol'dun.
step
talk Shandris Feathermoon##147350
Tell her _"Let's begin the attack."_
Meet up with Shandris Feathermoon |q 54134/2 |goto Vol'dun/0 37.73,60.86
stickystart "Destroy_Demolishers_54134"
stickystart "Slay_Horde_Forces_54134"
step
kill Emisa Flametwist##148782 |q 54134/5 |goto 38.30,67.25
|tip She walks around this area.
step
label "Destroy_Demolishers_54134"
click Azerite Charge+
|tip They look like clusters of yellow spiked bombs on the ground next to Demolishers around this area.
Destroy #5# Siege Weapons |q 54134/3 |goto 36.80,66.68
step
label "Slay_Horde_Forces_54134"
Kill enemies around this area
|tip Use the "Target Flag" ability on enemies around this area.
|tip It appears as a button on the screen.
Slay #15# Horde Forces |q 54134/4 |goto 36.77,68.03
step
talk Vindicator Jaelaana##135446
turnin Many Fine Heroes##54134 |goto Boralus/0 68.96,24.70
|next "Guide_Start"
step
label "Storms_Rage"
accept Storm's Rage##51982 |goto Stormsong Valley/0 59.68,70.49
|tip You will accept this quest automatically.
step
Repel #4# Horde Attacks |q 51982/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Stormsong Valley.
step
clicknpc Storm's Feather##139615
Ride Storm's Feather |q 51982/2 |goto Stormsong Valley/0 43.06,55.36
step
Kill enemies around this area
|tip Use the ability on your action bar.
|tip They are on the ground as you fly.
Destroy the Horde Forces |q 51982/3 |goto 49.09,36.74
step
Land at Seawatch Point |goto 51.01,26.71 < 10 |c |q 51982
step
kill Keeper Xibek##148874
collect Xibek's Key##166459 |goto 50.39,26.43 |q 51982
step
click Prisoner Cage
Free the Prisoners |q 51982/4 |goto 50.51,26.88
step
clicknpc Storm's Feather##148812
Ride Storm's Feather to Safety |q 51982/5 |goto 51.00,26.47
step
Return to Deadwash |goto 43.16,55.73 < 20 |c |q 51982 |notravel
step
talk Sister Lilyana##135800
turnin Storm's Rage##51982 |goto 59.28,69.33
|next "Guide_Start"
step
label "March_On_The_Marsh"
accept March on the Marsh##54136 |goto Nazmir/0 61.95,39.92
|tip You will accept this quest automatically.
step
Attack #4# Horde Targets |q 54136/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Nazmir.
step
clicknpc SI:7 Underwater Bomber##148105
Board the S.U.B. |q 54136/2 |goto Nazmir/0 82.09,13.43
stickystart "Slay_Enemy_Forces_54136"
step
Follow the path |goto 73.68,3.57 < 30 |only if walking
Continue following the path |goto Zandalar/0 62.79,11.67 < 30 |only if walking
Continue following the path |goto Zandalar/0 59.30,12.50 < 30 |only if walking
Destroy the Gunship |q 54136/3 |goto Nazmir/0 43.44,9.16 |count 1
|tip Use the "Fire Torpedo" ability on your action bar.
|tip Use it on the small ship in the water.
step
Destroy the Battleship |q 54136/4 |goto 42.15,9.90 |count 1
|tip Use the "Fire Torpedo" ability on your action bar.
|tip Use it on the large ship in the water.
step
Destroy the Gunship |q 54136/3 |goto 43.41,12.64 |count 2
|tip Use the "Fire Torpedo" ability on your action bar.
|tip Use it on the small ship in the water.
step
Destroy the Gunship |q 54136/3 |goto 43.48,15.94 |count 3
|tip Use the "Fire Torpedo" ability on your action bar.
|tip Use it on the small ship in the water.
step
Destroy the Gunship |q 54136/3 |goto 42.80,18.79 |count 4
|tip Use the "Fire Torpedo" ability on your action bar.
|tip Use it on the small ship in the water.
step
Destroy the Battleship |q 54136/4 |goto 39.90,17.24 |count 2
|tip Use the "Fire Torpedo" ability on your action bar.
|tip Use it on the large ship in the water.
step
label "Slay_Enemy_Forces_54136"
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Underwater around this area.
Slay Enemy Forces |q 54136/5 |goto 42.78,16.30
step
Destroy the Horde Flagship |q 54136/6 |goto 41.10,15.86
|tip Use the "The Brassbolts Special" ability on your action bar.
|tip Use it on the huge ship in the water.
step
talk Vindicator Jaelaana##135446
turnin March on the Marsh##54136 |goto Boralus/0 68.96,24.71
|next "Guide_Start"
step
label "Ritual_Rampage"
accept Ritual Rampage##54138 |goto Zuldazar/0 40.68,70.86
|tip You will accept this quest automatically.
step
Attack #4# Horde Targets |q 54138/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Zuldazar.
step
talk Magister Umbric##147847
Tell him _"I am ready."_
Watch the dialogue
Complete the Ritual |q 54138/2 |goto Zuldazar/0 79.82,42.68
step
Follow the path up |goto 78.72,43.21 < 20 |only if walking
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay Horde Forces |q 54138/3 |goto 71.48,38.64
step
Follow the path up |goto 69.48,38.75 < 30 |only if walking
Follow the road |goto 68.91,40.92 < 20 |only if walking
kill Mighty An'ja##147930 |q 54138/4 |goto 67.81,44.84
|tip Use the abilities on your action bar.
step
talk Vindicator Jaelaana##135446
turnin Ritual Rampage##54138 |goto Boralus/0 68.96,24.70
|next "Guide_Start"
step
label "A_Drust_Cause"
accept A Drust Cause##53701 |goto Drustvar/0 55.13,34.79
|tip You will accept this quest automatically.
step
Attack #4# Alliance Targets |q 53701/1
|tip Use the World Quest guides to accomplish this.
|tip Incursion world quests look like Alliance or Horde symbol icons.
|tip Complete Incursion world quests in Drustvar.
step
clicknpc Wavecrest Gryphon##144984
Ride Gryphon to Target |q 53701/2 |goto Drustvar/0 37.03,51.36
step
Watch the dialogue
Reach the Horde Airship |goto 39.23,43.19 < 10 |c |q 53701
stickystart "Destroy_Bomb_Piles"
step
kill Kaldras Snape##144861 |q 53701/4 |goto 39.67,41.73
|tip Inside the airship, on the deck level.
step
kill Lifter Machock##144874 |q 53701/5 |goto 39.67,43.13
|tip He walks around this area, downstairs inside the airship.
step
label "Destroy_Bomb_Piles"
click Plague Bomb+
|tip They look like clusters of grey metal spiked balls on the ground around this area on the airship.
|tip You can find more downstairs inside the airship.
Destroy #8# Bomb Piles |q 53701/3 |goto 39.67,43.18
step
clicknpc Wavecrest Gryphon##145044
|tip On the deck of the ship, where you landed.
Watch the dialogue
Ride Gryphon to Saftey |q 53701/6 |goto 39.12,43.34
step
talk Quartermaster Alcorn##135815
turnin A Drust Cause##53701 |goto 37.90,49.00
|next "Guide_Start"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\Tyrande's Ascension (Darkshore Warfront Unlock)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the Tyrande's Ascension storyline to unlock the Darkshore warfront in Patch 8.1.",
},[[
step
talk Dori'thur##145357
|tip It will appear next to you when you enter Boralus.
accept On Whispered Winds##53847 |goto Boralus/0 67.57,15.31
step
Enter the building |goto Stormwind City/0 80.62,37.92 < 15 |walk
talk Maiev Shadowsong##146050
|tip Inside the building.
turnin On Whispered Winds##53847 |goto 86.64,35.73
accept Waning Hope##53849 |goto 86.64,35.73
step
talk Prophet Velen##146075
|tip Inside the building.
Tell him _"Please show me what happened."_
Watch the dialogue
Speak to Prophet Velen |q 53849/1 |goto 86.53,36.51
step
talk Maiev Shadowsong##146050
|tip Inside the building.
turnin Waning Hope##53849 |goto 86.64,35.74
accept Shores of Fate##53988 |goto 86.64,35.74
step
Travel to Zoram Strand |q 53988/1 |goto Ashenvale/0 11.50,17.72
step
talk Maiev Shadowsong##146373
turnin Shores of Fate##53988 |goto 11.50,17.72
step
talk Sira Moonwarden##146375
accept No Survivors##54041 |goto 11.47,17.80
step
talk Shandris Feathermoon##146374
accept Hope##53989 |goto 11.55,17.68
stickystart "Kill_Veiled_Deathstalkers"
step
click Bow of the High Priestess##310603
collect Elun'tara, Bow of the High Priestess##165250 |q 53989/1 |goto 12.06,15.38
step
click Discarded Nightsaber Bridle##310601
collect Discarded Nightsaber Bridle##165233 |q 53989/2 |goto 11.26,13.62
step
click Ancient Kaldorei Tome##310600
|tip Inside the broken ship.
collect Ancient Kaldorei Tome##165232 |q 53989/3 |goto 9.87,13.91
step
label "Kill_Veiled_Deathstalkers"
kill 8 Veiled Deathstalker##146577 |q 54041/1 |goto 11.33,15.05
|tip They are stealthed on the ground around this area.
|tip Use the "Sentinel" ability on the ground to reveal them.
|tip It appears as a button on the screen.
step
talk Shandris Feathermoon##146374
turnin Hope##53989 |goto 11.55,17.68
step
talk Sira Moonwarden##146375
turnin No Survivors##54041 |goto 11.47,17.80
step
talk Maiev Shadowsong##146373
accept In Darkest Night##53990 |goto 11.50,17.72
step
talk Maiev Shadowsong##146373
Tell her _"I am ready."_
Set Sail for Darkshore |q 53990/1 |goto 11.50,17.72
step
Start the Scenario |scenariostart |q 53990
step
click Mooring Line
|tip On the deck of the ship.
Board the Rowboat |invehicle |goto Darkshore Scenario/0 19.40,71.29 |q 53990
step
Watch the dialogue
Take the Rowboat to the Ruins of Auberdine |scenariogoal 1/43433 |goto 31.33,73.42 |q 53990
step
Watch the dialogue
|tip Follow Maiev Shadowsong as she walks.
|tip Help Maiev Shadowsong kill the first group of enemies you come to.
|tip After the first group of enemies, just run to the Forsaken Blight Thrower.
|tip The enemies in the second group spawn forever.
clicknpc Forsaken Blight Thrower##146669
|tip It will appear on your minimap as a yellow dot.
Search the Town Square |scenariogoal 2/43564 |goto 38.08,70.93 |q 53990
step
Cross the bridge |goto 36.78,68.67 < 15 |only if walking
click Seat of the Goddess
Search the Hunter's Hall |scenariogoal 2/43435 |goto 35.23,66.11 |q 53990
stickystart "Survive_The_Blight"
step
Watch the dialogue
kill Bilegut##146714 |scenariogoal 3/43438 |goto 35.48,66.42 |q 53990
step
label "Survive_The_Blight"
Watch the dialogue
Survive the Blight |scenariogoal 3/43469 |goto 35.48,66.58 |q 53990
step
Watch the dialogue
Investigate the Screams |scenariogoal 4/43439 |goto 37.96,66.01 |q 53990
stickystart "Rescue_The_Prisoners"
step
clicknpc Ash'alah##146738
Save Ash'alah |scenariogoal 5/43475 |goto 42.89,66.90 |q 53990
step
label "Rescue_The_Prisoners"
clicknpc Kaldorei Huntress##146771
|tip They look like kneeling Night Elves on the ground around this area.
Rescue the Prisoners |scenariogoal 5/43471 |goto 41.53,66.30 |q 53990
step
Watch the dialogue
clicknpc Ash'alah##146786
Begin Riding Ash'alah |invehicle |goto 42.90,66.90 |q 53990
step
Watch the dialogue
Ride Ash'alah to Bashal'Aran |scenariogoal 6/43440 |goto 50.44,58.52 |q 53990
step
Kill enemies around this area
|tip Follow Maiev Shadowsong as she runs around fighting.
Watch the dialogue
Complete the Ritual of the Night Warrior |scenariogoal 7/43441 |goto 53.02,56.84 |q 53990
step
Return to Tyrande |scenariogoal 8/43494 |goto 51.58,57.92 |q 53990
step
click Eye of Elune
Watch the dialogue
Activate the Eye of Elune |scenariogoal 8/43483 |goto 51.58,57.92 |q 53990
step
talk Tyrande Whisperwind##146927
Tell her _"I am."_
Speak to Tyrande |scenariogoal 9/43499 |goto 51.63,58.03 |q 53990
step
Follow the path |goto 50.14,54.32 < 20 |only if walking
Watch the dialogue
Hunt Down Nathanos Blightcaller |scenariogoal 9/43442 |goto 49.39,34.95 |q 53990
step
Watch the dialogue
|tip Follow Tyrande Whisperwind as she runs.
Find Nathanos Blightcaller |scenariogoal 10/43507 |goto 47.98,24.16 |q 53990
step
talk Tyrande Whisperwind##146927
Tell her _"I am with you."_
Speak to Tyrande |scenariogoal 11/43512 |goto 47.98,24.16 |q 53990
step
Watch the dialogue
kill Nathanos Blightcaller##147032
|tip You will only weaken him a little.
kill Brynja##147033
Stop the Ritual |scenariogoal 11/43443 |goto 48.10,21.56 |q 53990
step
clicknpc Darnassian Skytalon##147130
Ride the Darnassian Skytalon |invehicle |goto 47.21,21.59 |q 53990
step
Return to the Fleet |scenariogoal 12/43515 |goto 18.85,72.93 |q 53990
step
talk Dori'thur##146624
Tell it _"Show me."_
Watch the dialogue
Scout the Horde Army |scenarioend |goto 19.47,73.29 |q 53990
step
talk Shandris Feathermoon##149612
turnin In Darkest Night##53990 |goto Boralus/0 69.53,26.84
accept We Are Coming##54871 |goto Boralus/0 69.53,26.84
step
talk Ralston Karn##142721
turnin We Are Coming##54871 |goto 65.87,26.03
step
_Congratulations!_
You completed the "Tyrande's Ascension" storyline and unlocked the Darkshore warfront.
]])
ZGV.DevEnd()
