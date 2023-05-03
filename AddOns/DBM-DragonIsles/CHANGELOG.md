# <DBM> World Bosses (Dragonflight)

## [10.1.0](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.1.0) (2023-05-02)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.35...10.1.0) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- should be 10.1, not 0.36  
- remove load block here  
- bump tocs  
- bump tocs  
- Update localization.cn.lua (#884)  
- fix missed spellIds  
- Full giga Sarkareth drycode  
- Add afflicted timer  
- fix other typo  
- fix typo  
- nerf nealth mod from latest hotfixes  
- fix lua error  
- Change core name from to to match other modules.  
- kill off volcanic alert since it's not very useful, it doesn't warn you to avoid, only that you already failed. that isn't helpful  
- fix regression that broke a lot of boss mods with new stage api  
- Fix alert text for Charged smash  
- Fix bug with 100100 load checks  
- Update koKR (Retail) (#883)  
- Assault Update  
     - Fixed detection of fixate and shield using UNIT\_AURA scanning.  
     - Slight tweaks to adds timer values  
     - Big add timer now says which cliff next set is climbing up.  
     - Birb timers now enabled on mythic  
- Completely scrap usefr front end reporting of invalid spellids to cull in bug reports on valid spellids from test realm. Actual invalid spellids will just be on me to find and me alone through better testing.  
- bump alpha  
- prep wrath tag  
- prep new wrath tag  
- Significant work on assault of Zaqali  
     - Got all the adds timers/alerts up and running (which is like 50% of fight)  
     - Improved stage 2 detection to fire on cast finish instead of start so it doesn't cancel adds timer prematurely  
- Minor zskarn tweaks and that's that for him  
- Fix a few invalid option keys for aberrus  
    Fix magmorax pool say object  
- Some mythic updates to memorex.  
- Move to stage apis that have more robust safety checks built into core for aberrus and vault  
- add another check type  
- invert last  
- rework last  
- create a more robust getstage api that will auto handle nil checks in combat, as well as simplify checks in mod code  
- Add IconTexture  
- Icon and font bugfixes (Closes #207) - Update default font values to match LibSharedMedia. - Fix occurance where some fonts were being force overwritten to standardFont on options load. - Add addon icon for 10.1.0.  
- Bump alphas  
