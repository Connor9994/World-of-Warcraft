if (GAME_LOCALE or GetLocale()) ~= "koKR" then
  return
end

local L = WeakAuras.L

-- WeakAuras
L[ [=[ Filter formats: 'Name', 'Name-Realm', '-Realm'. 

Supports multiple entries, separated by commas
Can use \ to escape -.]=] ] = "필터 형식: '이름', '이름-서버', '-서버'. 쉼표로 구분된 여러 항목을 지원합니다. \\를 사용하여 - 이스케이프 가능."
L["%s Overlay Color"] = "%s 오버레이 색상"
L["* Suffix"] = "* 접미사"
L["/wa help - Show this message"] = "/wa help - 이 메시지 보이기"
L["/wa minimap - Toggle the minimap icon"] = "/wa minimap - 미니맵 아이콘 토글"
L["/wa pprint - Show the results from the most recent profiling"] = "/wa pprint - 가장 최근 프로파일링 결과 표시"
L["/wa pstart - Start profiling. Optionally include a duration in seconds after which profiling automatically stops. To profile the next combat/encounter, pass a \"combat\" or \"encounter\" argument."] = "/wa pstart - 프로파일링을 시작합니다. 옵션으로 프로파일링이 자동으로 중지되는 시간(초)을 포함합니다. 다음 전투(combat)/교전(encounter)을 프로파일링하려면 인수로 combat이나 encounter를 넘기세요."
L["/wa pstop - Finish profiling"] = "/wa pstop - 프로파일링 종료"
L["/wa repair - Repair tool"] = "/wa repair - 복구 도구"
L["|cffeda55fLeft-Click|r to toggle showing the main window."] = "|cffeda55f좌-클릭|r 으로 메인 창을 표시하거나 숨깁니다."
L["|cffeda55fMiddle-Click|r to toggle the minimap icon on or off."] = "|cffeda55f중간-클릭|r 으로 미니맵 아이콘을 켜거나 끕니다."
L["|cffeda55fRight-Click|r to toggle performance profiling window."] = "|cffeda55f우-클릭|r 으로 성능 프로파일링 창을 켜고 끕니다."
L["|cffeda55fShift-Click|r to pause addon execution."] = "|cffeda55f쉬프트-클릭|r 으로 애드온 실행을 일시 중지합니다."
L["|cFFFF0000Not|r Item Bonus Id Equipped"] = "|cFFFF0000착용하지 않은|r 아이템 보너스 ID"
L["|cFFFF0000Not|r Player Name/Realm"] = "플레이어 이름/서버 |cFFFF0000불일치|r"
--[[Translation missing --]]
L["|cFFFF0000Not|r Spell Known"] = "|cFFFF0000Not|r Spell Known"
L["|cFFffcc00Extra Options:|r %s"] = "|cFFffcc00추가 옵션:|r %s"
L["|cFFffcc00Extra Options:|r None"] = "|cFFffcc00추가 옵션:|r 없음"
L[ [=[• |cff00ff00Player|r, |cff00ff00Target|r, |cff00ff00Focus|r, and |cff00ff00Pet|r correspond directly to those individual unitIDs.
• |cff00ff00Specific Unit|r lets you provide a specific valid unitID to watch.
|cffff0000Note|r: The game will not fire events for all valid unitIDs, making some untrackable by this trigger.
• |cffffff00Party|r, |cffffff00Raid|r, |cffffff00Boss|r, |cffffff00Arena|r, and |cffffff00Nameplate|r can match multiple corresponding unitIDs.
• |cffffff00Smart Group|r adjusts to your current group type, matching just the "player" when solo, "party" units (including "player") in a party or "raid" units in a raid.

|cffffff00*|r Yellow Unit settings will create clones for each matching unit while this trigger is providing Dynamic Info to the Aura.]=] ] = [=[• |cff00ff00플레이어|r, |cff00ff00대상|r, |cff00ff00주시대상|r 및 |cff00ff00소환수|r는 개별 유닛ID에 직접 대응합니다.

• |cff00ff00특정 유닛|r으로 감시할 유효한 특정 유닛ID를 제공할 수 있습니다.

|cffff0000참고|r: 게임은 모든 유효한 유닛ID에 대해 이벤트를 발생시키지 않으므로 이 활성 조건으로 일부를 추적할 수 없습니다.

• |cffffff00파티|r, |cffffff00공격대|r, |cffffff00우두머리|r, |cffffff00투기장|r 및 |cffffff00이름표|r는 해당 유닛ID 여러 개와 일치할 수 있습니다.

• |cffffff00스마트 그룹|r은 현재 그룹 유형에 맞게 조정되어 혼자일 때는 "플레이어"만 파티에서는 "파티" 유닛("플레이어" 포함), 공격대에서는 "공격대" 유닛과 일치합니다.


|cffffff00*|r 노란색 유닛 설정은 이 활성 조건이 효과에 동적 정보를 제공하는 동안 일치하는 각 유닛에 대해 복제를 생성합니다.]=]
--[[Translation missing --]]
L["1. Profession 1. Accessory"] = "1. Profession 1. Accessory"
--[[Translation missing --]]
L["1. Profession 2. Accessory"] = "1. Profession 2. Accessory"
--[[Translation missing --]]
L["1. Professsion Tool"] = "1. Professsion Tool"
L["10 Man Raid"] = "10인 공격대"
L["10 Player Raid"] = "10인 공격대"
L["10 Player Raid (Heroic)"] = "10인 공격대 (영웅)"
L["10 Player Raid (Normal)"] = "10인 공격대 (일반)"
--[[Translation missing --]]
L["2. Profession 1. Accessory"] = "2. Profession 1. Accessory"
--[[Translation missing --]]
L["2. Profession 2. Accessory"] = "2. Profession 2. Accessory"
--[[Translation missing --]]
L["2. Professsion Tool"] = "2. Professsion Tool"
L["20 Man Raid"] = "20인 공격대"
L["20 Player Raid"] = "20인 공격대"
L["25 Man Raid"] = "25인 공격대"
L["25 Player Raid"] = "25인 공격대"
L["25 Player Raid (Heroic)"] = "25인 공격대 (영웅)"
L["25 Player Raid (Normal)"] = "25인 공격대 (일반)"
L["40 Man Raid"] = "40인 공격대"
L["40 Player Raid"] = "40인 공격대"
L["5 Man Dungeon"] = "5인 던전"
--[[Translation missing --]]
L["A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."] = "A trigger in this aura is set up to track a soft target unit, but you don't have the CVars set up for this to work correctly. Consider either changing the unit tracked, or configuring the Soft Target CVars."
L["Abbreviate"] = "축약"
L["AbbreviateLargeNumbers (Blizzard)"] = "큰 숫자 축약 (블리자드)"
L["AbbreviateNumbers (Blizzard)"] = "숫자 축약 (블리자드)"
L["Absorb"] = "흡수"
L["Absorb Display"] = "흡수 디스플레이"
L["Absorb Heal Display"] = "흡수 치유 디스플레이"
L["Absorbed"] = "흡수함"
L["Action Button Glow"] = "동작 버튼 반짝임"
L["Action Usable"] = "사용 가능"
L["Actions"] = "동작"
L["Active"] = "활성화"
L["Add"] = "추가"
L["Add Missing Auras"] = "없어진 효과 추가"
L["Additional Trigger Replacements"] = "추가 활성 조건 교체"
L["Advanced Caster's Target Check"] = "고급 시전자 대상 확인"
L["Affected"] = "영향 받음"
L["Affected Unit Count"] = "영향 받은 유닛 수"
L["Afk"] = "자리 비움"
L["Aggro"] = "어그로"
L["Agility"] = "민첩성"
L["Ahn'Qiraj"] = "안퀴라즈"
--[[Translation missing --]]
L["Alchemy Cast Bar"] = "Alchemy Cast Bar"
L["Alert Type"] = "경보 유형"
L["Algalon the Observer"] = "관찰자 알갈론"
L["Alive"] = "생존"
L["All"] = "모두"
--[[Translation missing --]]
L["All States table contains a non table at key: '%s'."] = "All States table contains a non table at key: '%s'."
L["All Triggers"] = "모든 활성 조건 만족"
L["Alliance"] = "얼라이언스"
L["Allow partial matches"] = "부분 일치 허용"
L["Alpha"] = "투명도"
L["Alternate Power"] = "보조 자원"
L["Always"] = "항상"
L["Always active trigger"] = "항상 활성 조건 활성화"
L["Always include realm"] = "항상 서버 포함"
L["Always True"] = "항상 참"
L["Amount"] = "수량"
--[[Translation missing --]]
L["Anchoring"] = "Anchoring"
L["And Talent"] = "및 특성"
L["Animations"] = "애니메이션"
L["Anticlockwise"] = "반시계 방향"
L["Anub'arak"] = "아눕아락"
L["Anub'Rekhan"] = "아눕레칸"
L["Any"] = "아무거나"
L["Any Triggers"] = "아무 활성 조건 만족"
L["AOE"] = "광역 범위 효과"
L["Arcane Resistance"] = "비전 저항"
L["Archavon the Stone Watcher"] = "바위 감시자 아카본"
L[ [=[Are you sure you want to run the |cffff0000EXPERIMENTAL|r repair tool?
This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=] ] = "|cffff0000실험용|r 복구 도구를 실행할까요? 이는 마지막 데이터베이스 업그레이드 이후에 수행한 모든 변경 사항을 덮어씁니다. 마지막 업그레이드: %s"
L["Arena"] = "투기장"
L["Armor (%)"] = "방어도(%)"
L["Armor against Target (%)"] = "대상 방어도(%)"
--[[Translation missing --]]
L["Armor Peneration Percent"] = "Armor Peneration Percent"
L["Armor Peneration Rating"] = "방어구 관통력"
L["Armor Rating"] = "방어도"
L["Array"] = "정렬"
L["Ascending"] = "오름차순"
L["Assembly of Iron"] = "무쇠 평의회"
L["Assigned Role"] = "할당된 역할"
L["Assigned Role Icon"] = "할당된 역할 아이콘"
--[[Translation missing --]]
L["Assist"] = "Assist"
L["At Least One Enemy"] = "최소 1명의 적 대상"
--[[Translation missing --]]
L["At missing Value"] = "At missing Value"
--[[Translation missing --]]
L["At Percent"] = "At Percent"
--[[Translation missing --]]
L["At Value"] = "At Value"
L["Attach to End"] = "끝에 붙이기"
L["Attach to Start"] = "시작에 붙이기"
L["Attack Power"] = "공격력"
L["Attackable"] = "공격 가능"
L["Attackable Target"] = "공격 가능 대상"
L["Aura"] = "효과"
L["Aura '%s': %s"] = "효과 '%s': %s"
L["Aura Applied"] = "효과 적용"
L["Aura Applied Dose"] = "효과 겹쳐짐"
L["Aura Broken"] = "효과 파괴"
L["Aura Broken Spell"] = "주문으로 효과 파괴"
L["Aura loaded"] = "효과 불러옴"
L["Aura Name"] = "효과 이름"
L["Aura Names"] = "효과 이름"
L["Aura Refresh"] = "효과 지속시간 초기화"
L["Aura Removed"] = "효과 제거"
L["Aura Removed Dose"] = "효과 중첩 감소"
L["Aura Stack"] = "효과 중첩"
L["Aura Type"] = "효과 유형"
L["Aura Version: %s"] = "효과 버전: %s"
L["Aura(s) Found"] = "효과 발견"
L["Aura(s) Missing"] = "효과 누락"
L["Aura:"] = "효과:"
L["Auras:"] = "효과들:"
L["Auriaya"] = "아우리아야"
L["Author Options"] = "작성자 옵션"
L["Auto"] = "자동"
L["Autocast Shine"] = "자동시전 빛남"
L["Automatic"] = "자동"
L["Automatic Length"] = "자동 길이"
L["Automatic Rotation"] = "자동 회전"
L["Avoidance (%)"] = "광역회피(%)"
L["Avoidance Rating"] = "광역회피"
L["Ayamiss the Hunter"] = "사냥꾼 아야미스"
L["Back and Forth"] = "왕복"
L["Background"] = "배경"
L["Background Color"] = "배경 색상"
L["Baltharus the Warborn"] = "전쟁의 아들 발타루스"
L["Bar Color"] = "바 색상"
L["Baron Geddon"] = "남작 게돈"
L["Battle for Azeroth"] = "격전의 아제로스"
L["Battle.net Whisper"] = "Battle.net 귓속말"
L["Battleground"] = "전장"
L["Battleguard Sartura"] = "전투감시병 살투라"
L["BG>Raid>Party>Say"] = "전장>공격대>파티>일반 대화"
L["BG-System Alliance"] = "전장 얼라이언스"
L["BG-System Horde"] = "전장 호드"
L["BG-System Neutral"] = "전장 중립"
L["Big Number"] = "큰 숫자"
L["BigWigs Addon"] = "BigWigs 애드온"
L["BigWigs Message"] = "BigWigs 메시지"
L["BigWigs Stage"] = "BigWigs 단계"
L["BigWigs Timer"] = "BigWigs 타이머"
L["Black Wing Lair"] = "검은날개 둥지"
--[[Translation missing --]]
L["Blacksmithing Cast Bar"] = "Blacksmithing Cast Bar"
L["Blizzard (2h | 3m | 10s | 2.4)"] = "블리자드 (2시간 | 3분 | 10초 | 2.4)"
L["Blizzard Combat Text"] = "블리자드 전투 문자"
L["Blizzard Cooldown Reduction"] = "블리자드 재사용 대기시간 감소"
L["Block"] = "방어함"
L["Block (%)"] = "막음(%)"
L["Block against Target (%)"] = "대상의 막음(%)"
--[[Translation missing --]]
L["Block Value"] = "Block Value"
L["Blocked"] = "방패 막기"
--[[Translation missing --]]
L["Blood"] = "Blood"
L["Blood Prince Council"] = "피의 의회"
L["Blood Rune #1"] = "혈기 룬 #1"
L["Blood Rune #2"] = "혈기 룬 #2"
L["Bloodlord Mandokir"] = "혈군주 만도키르"
L["Blood-Queen Lana'thel"] = "피의 여왕 라나텔"
L["Border"] = "테두리"
L["Boss"] = "우두머리"
L["Boss Emote"] = "우두머리 감정 표현"
L["Boss Whisper"] = "우두머리 귓속말"
L["Bottom"] = "하단"
L["Bottom Left"] = "좌측 하단"
L["Bottom Right"] = "우측 하단"
L["Bottom to Top"] = "아래에서 위로"
L["Bounce"] = "튕기기"
L["Bounce with Decay"] = "튕기기 (점점 약하게)"
L["Broodlord Lashlayer"] = "용기대장 래쉬레이어"
L["Buff"] = "강화 효과"
L["Buff/Debuff"] = "강화 효과/약화 효과"
L["Buffed/Debuffed"] = "강화 효과/약화 효과"
L["Burning Crusade"] = "불타는 성전"
L["Buru the Gorger"] = "먹보 부루"
--[[Translation missing --]]
L["Callback function"] = "Callback function"
L["Can be used for e.g. checking if \"boss1target\" is the same as \"player\"."] = "예를 들어 \"우두머리1대상\"이 \"플레이어\"와 같은지 확인하는데 사용할 수 있습니다."
L["Cancel"] = "취소"
--[[Translation missing --]]
L[ [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Cannot change secure frame in combat lockdown. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
--[[Translation missing --]]
L["Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."] = "Can't schedule timer with %i, due to a World of Warcraft bug with high computer uptime. (Uptime: %i). Please restart your computer."
L["Cast"] = "시전"
L["Cast Bar"] = "시전바"
L["Cast Failed"] = "시전 실패"
L["Cast Start"] = "시전 시작"
L["Cast Success"] = "시전 성공"
L["Cast Type"] = "시전 유형"
L["Caster"] = "시전자"
L["Caster Name"] = "시전자 이름"
L["Caster Realm"] = "시전자 서버"
L["Caster Unit"] = "시전 유닛"
L["Caster's Target"] = "시전자의 대상"
L["Cataclysm"] = "대격변"
L["Ceil"] = "천장"
L["Center"] = "중앙"
--[[Translation missing --]]
L["Center, then alternating bottom and top"] = "Center, then alternating bottom and top"
--[[Translation missing --]]
L["Center, then alternating left and right"] = "Center, then alternating left and right"
--[[Translation missing --]]
L["Center, then alternating right and left"] = "Center, then alternating right and left"
--[[Translation missing --]]
L["Center, then alternating top and bottom"] = "Center, then alternating top and bottom"
L["Centered Horizontal"] = "수평 중앙"
--[[Translation missing --]]
L["Centered Horizontal, then Centered Vertical"] = "Centered Horizontal, then Centered Vertical"
--[[Translation missing --]]
L["Centered Horizontal, then Down"] = "Centered Horizontal, then Down"
--[[Translation missing --]]
L["Centered Horizontal, then Up"] = "Centered Horizontal, then Up"
L["Centered Vertical"] = "수직 중앙"
--[[Translation missing --]]
L["Centered Vertical, then Centered Horizontal"] = "Centered Vertical, then Centered Horizontal"
--[[Translation missing --]]
L["Centered Vertical, then Left"] = "Centered Vertical, then Left"
--[[Translation missing --]]
L["Centered Vertical, then Right"] = "Centered Vertical, then Right"
L["Changed"] = "변경"
L["Channel"] = "채널"
L["Channel (Spell)"] = "정신 집중"
L["Character Stats"] = "캐릭터 상태"
L["Character Type"] = "캐릭터 유형"
L["Charge gained/lost"] = "충전량 획득/손실"
--[[Translation missing --]]
L["Charged Combo Point (1)"] = "Charged Combo Point (1)"
--[[Translation missing --]]
L["Charged Combo Point (2)"] = "Charged Combo Point (2)"
--[[Translation missing --]]
L["Charged Combo Point (3)"] = "Charged Combo Point (3)"
--[[Translation missing --]]
L["Charged Combo Point (4)"] = "Charged Combo Point (4)"
--[[Translation missing --]]
L["Charged Combo Point 1"] = "Charged Combo Point 1"
--[[Translation missing --]]
L["Charged Combo Point 2"] = "Charged Combo Point 2"
--[[Translation missing --]]
L["Charged Combo Point 3"] = "Charged Combo Point 3"
--[[Translation missing --]]
L["Charged Combo Point 4"] = "Charged Combo Point 4"
L["Charges"] = "충전량"
L["Charges Changed Event"] = "충전량 변경 이벤트"
--[[Translation missing --]]
L["Charging"] = "Charging"
L["Chat Frame"] = "대화창"
L["Chat Message"] = "대화 메시지"
L["Check if a single talent match a Rank"] = "단일 특성이 등급과 일치하는지 확인"
L["Check nameplate's target every 0.2s"] = "0.2초마다 이름표의 대상 확인"
L["Chromaggus"] = "크로마구스"
L["Circle"] = "동그라미"
L["Clamp"] = "더미"
L["Class"] = "직업"
L["Class and Specialization"] = "직업 및 전문화"
L["Classic"] = "클래식"
L["Classification"] = "직업전문화"
L["Clockwise"] = "시계 방향"
L["Clone per Event"] = "이벤트별 복제"
L["Clone per Match"] = "일치별 복제"
L["Color"] = "색상"
L["Color Animation"] = "색상 애니메이션"
L["Combat Log"] = "전투 기록"
--[[Translation missing --]]
L[ [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=] ] = [=[COMBAT_LOG_EVENT_UNFILTERED without a filter is generally advised against as it’s very performance costly.
Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Custom-Triggers#events]=]
--[[Translation missing --]]
L["Condition Custom Text"] = "Condition Custom Text"
L["Conditions"] = "조건"
L["Contains"] = "포함"
L["Continuously update Movement Speed"] = "이동 속도 계속 업데이트"
L["Cooldown"] = "재사용 대기시간"
L["Cooldown bars show time before an ability is ready to be use, BigWigs prefix them with '~'"] = "재사용 대기시간 바는 능력을 사용할 준비가 되기까지의 시간을 표시하며 BigWigs는 '~'를 접두사로 붙입니다."
L["Cooldown Progress (Item)"] = "재사용 대기시간 진행 (아이템)"
L["Cooldown Progress (Slot)"] = "재사용 대기시간 진행 상황 (아이템 칸)"
L["Cooldown Ready Event"] = "재사용 준비 이벤트"
L["Cooldown Ready Event (Item)"] = "재사용 준비 이벤트 (아이템)"
L["Cooldown Ready Event (Slot)"] = "재사용 준비 이벤트 (아이템 칸)"
L["Cooldown Reduction changes the duration of seconds instead of showing the real time seconds."] = "재사용 대기시간 감소는 실시간 초를 표시하는 대신 초의 지속 시간을 바꿉니다."
--[[Translation missing --]]
L["Cooldown/Charges/Count"] = "Cooldown/Charges/Count"
--[[Translation missing --]]
L["Could not load WeakAuras Archive, the addon is %s"] = "Could not load WeakAuras Archive, the addon is %s"
L["Count"] = "횟수"
L["Counter Clockwise"] = "반시계 방향"
L["Create"] = "생성"
L["Critical"] = "치명타"
L["Critical (%)"] = "치명타 (%)"
L["Critical Rating"] = "치명타 및 극대화"
L["Crowd Controlled"] = "군중 제어됨"
L["Crushing"] = "강타"
L["C'thun"] = "쑨"
--[[Translation missing --]]
L["Current Essence"] = "Current Essence"
L["Current Experience"] = "현재 경험치"
L["Current Movement Speed (%)"] = "현재 이동 속도 (%)"
L["Current Stage"] = "현재 단계"
L[ [=[Current Zone Group
]=] ] = "현재 지역 그룹"
L[ [=[Current Zone
]=] ] = "현재 지역"
L["Curse"] = "저주"
L["Custom"] = "사용자 정의"
L["Custom Action"] = "사용자 정의 동작"
--[[Translation missing --]]
L["Custom Anchor"] = "Custom Anchor"
L["Custom Check"] = "사용자 정의 확인"
L["Custom Color"] = "사용자 정의 색상"
L["Custom Condition Code"] = "사용자 정의 조건 코드"
L["Custom Configuration"] = "사용자 정의 구성"
--[[Translation missing --]]
L["Custom Fade Animation"] = "Custom Fade Animation"
L["Custom Function"] = "사용자 정의 함수"
L["Custom Grow"] = "사용자 정의 성장"
L["Custom Sort"] = "사용자 정의 정렬"
--[[Translation missing --]]
L["Custom Text Function"] = "Custom Text Function"
L["Custom Trigger Combination"] = "사용자 정의 활성 조건 조합"
L["Custom Variables"] = "사용자 정의 변수"
L["Damage"] = "피해"
L["Damage Shield"] = "피해 반사"
L["Damage Shield Missed"] = "피해 보호막 적중 실패"
L["Damage Split"] = "피해 분배"
L["DBM Announce"] = "DBM 알림"
L["DBM Stage"] = "DBM 단계"
L["DBM Timer"] = "DBM 타이머"
L["Death"] = "죽음"
L["Death Knight Rune"] = "죽음의 기사 룬"
L["Deathbringer Saurfang"] = "죽음의 인도자 사울팽"
L["Debuff"] = "약화 효과"
L["Debuff Class"] = "약화 효과 직업"
L["Debuff Class Icon"] = "약화 효과 직업 아이콘"
L["Debuff Type"] = "약화 효과 유형"
L["Debug Log contains more than 1000 entries"] = "디버그 로그에 항목이 1000개 이상 있습니다."
L["Debug Logging enabled"] = "디버그 로깅 사용함"
L["Debug Logging enabled for '%s'"] = "'%s'에 대해 디버그 로깅 사용함"
--[[Translation missing --]]
L["Defense"] = "Defense"
L["Deflect"] = "튕김"
L["Desaturate"] = "흑백"
L["Desaturate Background"] = "흑백 배경"
L["Desaturate Foreground"] = "흑백 전경"
L["Descending"] = "내림차순"
L["Description"] = "설명"
L["Dest Raid Mark"] = "대상 공격대 징표"
--[[Translation missing --]]
L["Destination Affiliation"] = "Destination Affiliation"
L["Destination GUID"] = "대상 GUID"
L["Destination Name"] = "대상 이름"
L["Destination NPC Id"] = "대상 NPC ID"
L["Destination Object Type"] = "대상 객체 유형"
L["Destination Reaction"] = "대상 반응"
L["Destination Unit"] = "대상 유닛"
--[[Translation missing --]]
L["Destination unit's raid mark index"] = "Destination unit's raid mark index"
--[[Translation missing --]]
L["Destination unit's raid mark texture"] = "Destination unit's raid mark texture"
--[[Translation missing --]]
L["Difficulty"] = "Difficulty"
--[[Translation missing --]]
L["Disable Spell Known Check"] = "Disable Spell Known Check"
--[[Translation missing --]]
L["Disabled Spell Known Check"] = "Disabled Spell Known Check"
L["Disease"] = "질병"
L["Dispel"] = "무효화"
L["Dispel Failed"] = "무효화 실패"
L["Display"] = "디스플레이"
L["Distance"] = "거리"
L["Do Not Disturb"] = "다른 용무 중"
L["Dodge"] = "회피"
L["Dodge (%)"] = "회피 (%)"
L["Dodge Rating"] = "회피"
L["Down"] = "아래로"
--[[Translation missing --]]
L["Down, then Centered Horizontal"] = "Down, then Centered Horizontal"
L["Down, then Left"] = "아래로, 왼쪽으로"
L["Down, then Right"] = "아래로, 오른쪽으로"
L["Dragonflight"] = "용군단"
L["Dragonriding"] = "용 조련술"
L["Drain"] = "마력 소진"
L["Dropdown Menu"] = "드롭다운 메뉴"
--[[Translation missing --]]
L["Dumping table"] = "Dumping table"
L["Dungeon (Heroic)"] = "던전 (영웅)"
L["Dungeon (Mythic)"] = "던전 (신화)"
L["Dungeon (Mythic+)"] = "던전 (쐐기)"
L["Dungeon (Normal)"] = "던전 (일반)"
L["Dungeon (Timewalking)"] = "던전 (시간여행)"
L["Dungeons"] = "던전"
L["Durability Damage"] = "내구도 손상"
L["Durability Damage All"] = "모든 내구도 손상"
--[[Translation missing --]]
L["Duration Function"] = "Duration Function"
--[[Translation missing --]]
L["Duration Function (fallback state)"] = "Duration Function (fallback state)"
L["Dynamic Information"] = "유동적 정보"
--[[Translation missing --]]
L["Ease In"] = "Ease In"
--[[Translation missing --]]
L["Ease In and Out"] = "Ease In and Out"
--[[Translation missing --]]
L["Ease Out"] = "Ease Out"
L["Ebonroc"] = "에본로크"
L["Edge"] = "경계"
L["Edge of Madness"] = "광란의 경계"
L["Elide"] = "생략"
L["Elite"] = "정예"
L["Emalon the Storm Watcher"] = "폭풍 감시자 에말론"
L["Emote"] = "감정 표현"
L["Empower Cast End"] = "강화 시전 종료"
--[[Translation missing --]]
L["Empower Cast Interrupt"] = "Empower Cast Interrupt"
L["Empower Cast Start"] = "강화 시전 시작"
--[[Translation missing --]]
L["Empowered"] = "Empowered"
--[[Translation missing --]]
L["Empowered 1"] = "Empowered 1"
--[[Translation missing --]]
L["Empowered 2"] = "Empowered 2"
--[[Translation missing --]]
L["Empowered 3"] = "Empowered 3"
--[[Translation missing --]]
L["Empowered 4"] = "Empowered 4"
--[[Translation missing --]]
L["Empowered 5"] = "Empowered 5"
--[[Translation missing --]]
L["Empowered Cast Fully Charged"] = "Empowered Cast Fully Charged"
--[[Translation missing --]]
L["Empowered Fully Charged"] = "Empowered Fully Charged"
L["Empty"] = "비었을 때"
--[[Translation missing --]]
L["Enables (incorrect) round down of seconds, which was the previous default behavior."] = "Enables (incorrect) round down of seconds, which was the previous default behavior."
L["Enchant Applied"] = "마법부여 적용"
--[[Translation missing --]]
L["Enchant Found"] = "Enchant Found"
--[[Translation missing --]]
L["Enchant Missing"] = "Enchant Missing"
L["Enchant Name or ID"] = "마법부여 이름 또는 ID"
L["Enchant Removed"] = "마법부여 사라짐"
--[[Translation missing --]]
L["Enchanted"] = "Enchanted"
--[[Translation missing --]]
L["Enchanting Cast Bar"] = "Enchanting Cast Bar"
L["Encounter ID(s)"] = "교전 ID(s)"
L["Energize"] = "마력 얻음"
L["Enrage"] = "격노"
--[[Translation missing --]]
L["Enter static or relative values with %"] = "Enter static or relative values with %"
L["Entering"] = "시작"
L["Entering/Leaving Combat"] = "전투 시작/종료"
--[[Translation missing --]]
L["Entering/Leaving Encounter"] = "Entering/Leaving Encounter"
L["Entry Order"] = "항목 순서"
L["Environment Type"] = "환경 종류"
L["Environmental"] = "환경"
L["Equipment Set"] = "장비 구성"
L["Equipment Set Equipped"] = "장비 구성 착용"
L["Equipment Slot"] = "장비 칸"
L["Equipped"] = "장착함"
L["Error"] = "오류"
--[[Translation missing --]]
L[ [=[Error '%s' created a secure clone. We advise deleting the aura. For more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Error '%s' created a secure clone. We advise deleting the aura. For more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
--[[Translation missing --]]
L["Error decoding."] = "Error decoding."
L["Error decompressing"] = "압축 해제 오류"
L["Error decompressing. This doesn't look like a WeakAuras import."] = "압축을 푸는 중 오류가 발생했습니다. 이것은 WeakAuras 가져오기처럼 보이지 않습니다."
L["Error deserializing"] = "역직렬화 오류"
L["Error Frame"] = "오류창"
--[[Translation missing --]]
L["ERROR in '%s' unknown or incompatible sub element type '%s'"] = "ERROR in '%s' unknown or incompatible sub element type '%s'"
L["Error not receiving display information from %s"] = "%s 에서 표시 정보를 받지 못하는 오류"
--[[Translation missing --]]
L["Essence"] = "Essence"
--[[Translation missing --]]
L["Essence #1"] = "Essence #1"
--[[Translation missing --]]
L["Essence #2"] = "Essence #2"
--[[Translation missing --]]
L["Essence #3"] = "Essence #3"
--[[Translation missing --]]
L["Essence #4"] = "Essence #4"
--[[Translation missing --]]
L["Essence #5"] = "Essence #5"
--[[Translation missing --]]
L["Essence #6"] = "Essence #6"
L["Evade"] = "벗어남"
L["Event"] = "이벤트"
L["Event(s)"] = "이벤트"
L["Every Frame"] = "매 프레임"
L["Every Frame (High CPU usage)"] = "매 프레임 (CPU 사용량 높음)"
--[[Translation missing --]]
L["Evoker Essence"] = "Evoker Essence"
L["Experience (%)"] = "경험치 (%)"
L["Expertise Bonus"] = "숙련 보너스"
L["Expertise Rating"] = "숙련도"
L["Extend Outside"] = "외부 확장"
L["Extra Amount"] = "추가 수치"
L["Extra Attacks"] = "추가 공격"
L["Extra Spell Name"] = "추가 주문 이름"
L["Faction"] = "진영"
L["Faction Champions"] = "진영 용사"
L["Faction Name"] = "진영 이름"
L["Faction Reputation"] = "진영 평판"
--[[Translation missing --]]
L["Fade Animation"] = "Fade Animation"
L["Fade In"] = "서서히 나타남"
L["Fade Out"] = "서서히 사라짐"
L["Fail Alert"] = "실패 경보"
L["Fallback"] = "대체"
--[[Translation missing --]]
L["Fallback Icon"] = "Fallback Icon"
L["False"] = "거짓"
L["Fankriss the Unyielding"] = "불굴의 판크리스"
L["Festergut"] = "구린속"
L["Fetch Legendary Power"] = "전설 능력 가져오기"
L["Fetches the name and icon of the Legendary Power that matches this bonus id."] = "이 보너스 ID와 일치하는 전설 능력의 이름과 아이콘을 가져옵니다."
L["Filter messages with format <message>"] = "<메시지> 형식의 메시지 필터링"
L["Fire Resistance"] = "화염 저항"
L["Firemaw"] = "화염아귀"
L["First"] = "첫 번째"
L["First Value of Tooltip Text"] = "툴팁 문자의 첫 번째 값"
L["Fixed"] = "고정됨"
--[[Translation missing --]]
L["Fixed Names"] = "Fixed Names"
--[[Translation missing --]]
L["Fixed Size"] = "Fixed Size"
L["Flame Leviathan"] = "거대 화염전차"
L["Flamegor"] = "플레임고르"
L["Flash"] = "반짝임"
L["Flex Raid"] = "탄력적 공격대"
L["Flip"] = "휙 넘기기"
L["Floor"] = "바닥"
L["Focus"] = "주시 대상"
--[[Translation missing --]]
L["Font"] = "Font"
L["Font Size"] = "글꼴 크기"
L["Forbidden function or table: %s"] = "금지된 함수 또는 테이블: %s"
L["Foreground"] = "전경"
L["Foreground Color"] = "전경 색상"
L["Form"] = "변신"
L["Format"] = "형식"
L["Formats |cFFFF0000%unit|r"] = "|cFFFF0000%unit|r 형식"
L["Formats Player's |cFFFF0000%guid|r"] = "플레이어의 |cFFFF0000%GUID|r 형식"
--[[Translation missing --]]
L["Forward"] = "Forward"
--[[Translation missing --]]
L["Forward, Reverse Loop"] = "Forward, Reverse Loop"
--[[Translation missing --]]
L["Frame Selector"] = "Frame Selector"
L["Frequency"] = "빈도"
L["Freya"] = "프레이야"
L["Friendly"] = "우호적"
L["Friendly Fire"] = "아군에게 준 피해"
--[[Translation missing --]]
L["Friendship Max Rank"] = "Friendship Max Rank"
--[[Translation missing --]]
L["Friendship Rank"] = "Friendship Rank"
--[[Translation missing --]]
L["Frost"] = "Frost"
L["Frost Resistance"] = "냉기 저항"
L["Frost Rune #1"] = "냉기 룬 #1"
L["Frost Rune #2"] = "냉기 룬 #2"
L["Full"] = "가득 찼을 때"
--[[Translation missing --]]
L["Full Bar"] = "Full Bar"
L["Full/Empty"] = "가득 차거나 비었을 때"
L["Gahz'ranka"] = "가즈란카"
L["Gained"] = "획득"
L["Garr"] = "가르"
L["Gehennas"] = "게헨나스"
L["General Rajaxx"] = "장군 라작스"
L["General Vezax"] = "장군 베작스"
L["General Zarithrian"] = "장군 자리스리안"
L["Glancing"] = "빗맞음"
L["Global Cooldown"] = "전역 재사용 대기시간"
L["Glow"] = "반짝임"
L["Glow External Element"] = "외부 요소 반짝임"
L["Gluth"] = "글루스"
L["Golemagg the Incinerator"] = "초열의 골레마그"
L["Gothik the Harvester"] = "영혼의 착취자 고딕"
L["Gradient"] = "색상 전환"
--[[Translation missing --]]
L["Gradient Color"] = "Gradient Color"
--[[Translation missing --]]
L["Gradient Enabled"] = "Gradient Enabled"
--[[Translation missing --]]
L["Gradient Orientation"] = "Gradient Orientation"
L["Gradient Pulse"] = "색상 전환(깜빡임)"
L["Grand Widow Faerlina"] = "귀부인 팰리나"
L["Grid"] = "격자"
L["Grobbulus"] = "그라불루스"
L["Group"] = "그룹"
L["Group Arrangement"] = "그룹 편성"
--[[Translation missing --]]
L["Group Finder Eye"] = "Group Finder Eye"
--[[Translation missing --]]
L["Group Finder Eye Initial"] = "Group Finder Eye Initial"
--[[Translation missing --]]
L["Group Finder Found"] = "Group Finder Found"
--[[Translation missing --]]
L["Group Finder Found Initial"] = "Group Finder Found Initial"
--[[Translation missing --]]
L["Group Finder Mouse Over"] = "Group Finder Mouse Over"
--[[Translation missing --]]
L["Group Finder Poke"] = "Group Finder Poke"
--[[Translation missing --]]
L["Group Finder Poke End"] = "Group Finder Poke End"
--[[Translation missing --]]
L["Group Finder Poke Initial"] = "Group Finder Poke Initial"
--[[Translation missing --]]
L["Group Leader/Assist"] = "Group Leader/Assist"
L["Group Type"] = "그룹 유형"
L["Grow"] = "성장"
L["GTFO Alert"] = "GTFO 경보"
L["Guardian"] = "경비병"
L["Guild"] = "길드"
L["Gunship Battle"] = "비행포격선 전투"
L["Hakkar"] = "학카르"
L["Halion"] = "할리온"
L["Has Target"] = "대상 있음"
L["Has Vehicle UI"] = "차량 UI가 있을 때"
L["HasPet"] = "소환수 있음 (생존)"
L["Haste (%)"] = "가속 (%)"
L["Haste Rating"] = "가속"
L["Heal"] = "치유"
L["Heal Absorb"] = "치유 흡수"
--[[Translation missing --]]
L["Heal Absorbed"] = "Heal Absorbed"
L["Health"] = "생명력"
L["Health (%)"] = "생명력 (%)"
--[[Translation missing --]]
L["Health Deficit"] = "Health Deficit"
L["Heigan the Unclean"] = "부정의 헤이건"
L["Height"] = "높이"
L["Heroic Party"] = "영웅 파티"
L["Hide"] = "숨기기"
L["Hide 0 cooldowns"] = "0 재사용 대기시간 숨기기"
L["Hide Timer Text"] = "타이머 문자 숨기기"
L["High Damage"] = "높은 피해"
L["High Priest Thekal"] = "대사제 데칼"
L["High Priest Venoxis"] = "대사제 베녹시스"
L["High Priestess Arlokk"] = "대여사제 알로크"
L["High Priestess Jeklik"] = "대여사제 제클릭"
L["High Priestess Mar'li"] = "대여사제 말리"
L["Higher Than Tank"] = "탱커보다 높을 때"
--[[Translation missing --]]
L["Hit (%)"] = "Hit (%)"
L["Hit Rating"] = "적중"
L["Hodir"] = "호디르"
L["Holy Resistance"] = "신성 저항"
L["Horde"] = "호드"
--[[Translation missing --]]
L["Horizontal"] = "Horizontal"
L["Hostile"] = "적대적"
L["Hostility"] = "적대성"
L["Humanoid"] = "인간형"
L["Hybrid"] = "복합"
L["Icecrown Citadel"] = "얼음왕관 성채"
L["Icon"] = "아이콘"
--[[Translation missing --]]
L["Icon Function"] = "Icon Function"
--[[Translation missing --]]
L["Icon Function (fallback state)"] = "Icon Function (fallback state)"
--[[Translation missing --]]
L["Id"] = "Id"
L["If you require additional assistance, please open a ticket on GitHub or visit our Discord at https://discord.gg/weakauras!"] = "추가 지원이 필요한 경우, GitHub에서 티켓을 열거나 Discord( https://discord.gg/weakauras )를 방문해 주세요!"
L["Ignis the Furnace Master"] = "용광로 군주 이그니스"
L["Ignore Dead"] = "죽음 무시"
L["Ignore Disconnected"] = "연결 끊김 무시"
L["Ignore Rune CD"] = "룬 재사용 대기시간 무시"
L["Ignore Rune CDs"] = "룬 재사용 대기시간 무시"
L["Ignore Self"] = "본인 무시"
L["Immune"] = "면역"
L["Important"] = "중요"
L["Importing will start after combat ends."] = "전투 종료 후 가져오기가 시작됩니다."
L["In Combat"] = "전투 중"
L["In Encounter"] = "교전 중"
L["In Group"] = "그룹 중"
L["In Party"] = "파티 중"
L["In Pet Battle"] = "애완동물 대전 중"
L["In Raid"] = "공격대 중"
L["In Vehicle"] = "차량 탑승 중"
L["Include Bank"] = "은행 포함"
L["Include Charges"] = "충전량 포함"
L["Include Death Runes"] = "죽음의 룬 포함"
L["Include Pets"] = "소환수 포함"
L["Incoming Heal"] = "받는 치유"
--[[Translation missing --]]
L["Increase Precision Below"] = "Increase Precision Below"
L["Increases by one per stage or intermission."] = "단계 또는 사잇단계당 1씩 증가합니다."
L["Information"] = "정보"
L["Inherited"] = "상속"
L["Instakill"] = "죽임"
--[[Translation missing --]]
L["Install the addons BugSack and BugGrabber for detailed error logs."] = "Install the addons BugSack and BugGrabber for detailed error logs."
L["Instance"] = "인스턴스"
L["Instance Difficulty"] = "인스턴스 난이도"
L["Instance Size Type"] = "인스턴스 크기 유형"
L["Instance Type"] = "인스턴스 유형"
L["Instructor Razuvious"] = "훈련교관 라주비어스"
L["Insufficient Resources"] = "자원 부족"
L["Intellect"] = "지능"
L["Interrupt"] = "방해"
L["Interrupt School"] = "방해 갈래"
--[[Translation missing --]]
L["Interrupted School Text"] = "Interrupted School Text"
L["Interruptible"] = "방해 가능"
L["Inverse"] = "반대로"
L["Inverse Pet Behavior"] = "역행 소환수 행동"
L["Is Away from Keyboard"] = "자리비움"
--[[Translation missing --]]
L["Is Death Rune"] = "Is Death Rune"
L["Is Exactly"] = "정확할 때"
L["Is Moving"] = "이동 중일 때"
L["Is Off Hand"] = "보조장비일 때"
L["is useable"] = "사용 가능할 때"
L["Island Expedition (Heroic)"] = "군도 탐험 (영웅)"
L["Island Expedition (Mythic)"] = "군도 탐험 (신화)"
L["Island Expedition (Normal)"] = "군도 탐험 (일반)"
L["Island Expeditions (PvP)"] = "군도 탐험 (PvP)"
L["Item"] = "아이템"
L["Item Bonus Id"] = "아이템 보너스 ID"
L["Item Bonus Id Equipped"] = "착용한 아이템 보너스 ID"
L["Item Count"] = "아이템 개수"
L["Item Equipped"] = "아이템 착용"
L["Item Id"] = "아이템 ID"
L["Item in Range"] = "범위 내의 아이템"
L["Item Name"] = "아이템 이름"
L["Item Set Equipped"] = "아이템 세트 착용"
L["Item Set Id"] = "아이템 세트 ID"
L["Item Slot"] = "아이템 칸"
L["Item Slot String"] = "아이템 칸 문자열"
L["Item Type"] = "아이템 유형"
L["Item Type Equipped"] = "착용한 아이템 유형"
--[[Translation missing --]]
L["Jewelcrafting Cast Bar"] = "Jewelcrafting Cast Bar"
L["Jin'do the Hexxer"] = "주술사 진도"
L["Journal Stage"] = "도감 단계"
L["Keep Inside"] = "내부에 보관"
L["Kel'Thuzad"] = "켈투자드"
L["Kologarn"] = "콜로간"
L["Koralon the Flame Watcher"] = "화염 감시자 코랄론"
L["Kurinnaxx"] = "쿠린낙스"
L["Lady Deathwhisper"] = "여교주 데스위스퍼"
L["Large"] = "큰"
--[[Translation missing --]]
L["Latency"] = "Latency"
--[[Translation missing --]]
L["Leader"] = "Leader"
L["Least remaining time"] = "최소 남은 시간"
--[[Translation missing --]]
L["Leatherworking Cast Bar"] = "Leatherworking Cast Bar"
L["Leaving"] = "종료"
L["Leech"] = "마력 흡수"
L["Leech (%)"] = "생기흡수 (%)"
L["Leech Rating"] = "생기흡수"
L["Left"] = "왼쪽"
L["Left to Right"] = "왼쪽에서 오른쪽"
--[[Translation missing --]]
L["Left, then Centered Vertical"] = "Left, then Centered Vertical"
L["Left, then Down"] = "왼쪽으로, 아래로"
L["Left, then Up"] = "왼쪽으로, 위로"
L["Legacy Looking for Raid"] = "낭만 공격대 찾기"
L["Legacy RGB Gradient"] = "과거의 RGB 그라디언트"
L["Legacy RGB Gradient Pulse"] = "과거의 RGB 그라디언트 맥박"
--[[Translation missing --]]
L["Legacy Spellname"] = "Legacy Spellname"
L["Legion"] = "군단"
L["Length"] = "길이"
L["Level"] = "레벨"
--[[Translation missing --]]
L["Limited"] = "Limited"
L["Lines & Particles"] = "라인 & 입자"
L["Load Conditions"] = "조건 불러오기"
L["Loatheb"] = "로데브"
L["Looking for Raid"] = "공격대 찾기"
L["Loop"] = "반복"
L["Lord Jaraxxus"] = "군주 자락서스"
L["Lord Marrowgar"] = "군주 매로우가르"
L["Lost"] = "손실"
L["Low Damage"] = "낮은 피해"
L["Lower Than Tank"] = "탱커보다 낮을 때"
L["Lua error"] = "Lua 오류"
--[[Translation missing --]]
L["Lua error in aura '%s': %s"] = "Lua error in aura '%s': %s"
L["Lucifron"] = "루시프론"
L["Maexxna"] = "맥스나"
L["Magic"] = "마법"
L["Magmadar"] = "마그마다르"
L["Main Stat"] = "주 능력치"
L["Majordomo Executus"] = "청지기 이그젝큐투스"
L["Malformed WeakAuras link"] = "조작된 WeakAuras 링크"
L["Malygos"] = "말리고스"
L["Manual Rotation"] = "수동 회전"
L["Marked First"] = "첫 번째로 표시"
L["Marked Last"] = "마지막으로 표시"
L["Master"] = "주 음량"
L["Mastery (%)"] = "특화 (%)"
L["Mastery Rating"] = "특화"
L["Match Count"] = "일치 횟수"
L["Match Count per Unit"] = "유닛당 일치 횟수"
L["Matches (Pattern)"] = "일치 (패턴)"
L[ [=[Matches stage number of encounter journal.
Intermissions are .5
E.g. 1;2;1;2;2.5;3]=] ] = "던전 도감의 단계 번호와 일치합니다. 사잇단계는 0.5 예를 들어 1;2;1;2;2.5;3"
L["Max Char "] = "최대 글자수"
L["Max Charges"] = "최대 충전량"
--[[Translation missing --]]
L["Max Health"] = "Max Health"
--[[Translation missing --]]
L["Max Power"] = "Max Power"
L["Maximum"] = "최대"
L["Maximum Estimate"] = "최대 예상치"
--[[Translation missing --]]
L["Media"] = "Media"
L["Medium"] = "중간"
--[[Translation missing --]]
L["Melee"] = "Melee"
--[[Translation missing --]]
L["Melee Haste (%)"] = "Melee Haste (%)"
L["Message"] = "메시지"
L["Message Type"] = "메시지 유형"
L["Message type:"] = "메시지 유형:"
L["Meta Data"] = "메타 데이터"
L["Mimiron"] = "미미론"
--[[Translation missing --]]
L["Mine"] = "Mine"
L["Minimum"] = "최소"
L["Minimum Estimate"] = "최소 예상치"
L["Minus (Small Nameplate)"] = "빼기 (작은 이름표)"
--[[Translation missing --]]
L["Mirror"] = "Mirror"
L["Miss"] = "빗나감"
L["Miss Type"] = "적중 실패 유형"
L["Missed"] = "적중 실패"
L["Missing"] = "누락"
L["Mists of Pandaria"] = "판다리아의 안개"
L["Moam"] = "모암"
L["Model"] = "모델"
L["Modern Blizzard (1h 3m | 3m 7s | 10s | 2.4)"] = "현 블리자드 (1h 3m | 3m 7s | 10s | 2.4)"
L["Molten Core"] = "화산 심장부"
L["Monochrome"] = "모노크롬"
L["Monochrome Outline"] = "모노크롬 외곽선"
L["Monochrome Thick Outline"] = "모노크롬 굵은 외곽선"
L["Monster Emote"] = "몬스터 감정 표현"
L["Monster Party"] = "몬스터 파티"
L["Monster Say"] = "몬스터 일반 대화"
L["Monster Whisper"] = "몬스터 귓속말"
L["Monster Yell"] = "몬스터 외침"
L["Most remaining time"] = "최대 남은 시간"
L["Mounted"] = "탈것 탑승 중"
L["Mouse Cursor"] = "마우스 커서"
L["Movement Speed Rating"] = "이동 속도"
L["Multi-target"] = "다중 대상"
L["Mythic Keystone"] = "신화 쐐기돌"
L["Mythic+ Affix"] = "쐐기돌 수정치"
L["Name"] = "이름"
--[[Translation missing --]]
L["Name Function"] = "Name Function"
--[[Translation missing --]]
L["Name Function (fallback state)"] = "Name Function (fallback state)"
L["Name of Caster's Target"] = "시전자 대상의 이름"
L["Name/Realm of Caster's Target"] = "시전자 대상의 이름/서버"
L["Nameplate"] = "이름표"
L["Nameplate Type"] = "이름표 유형"
L["Nameplates"] = "이름표"
L["Names of affected Players"] = "영향 받은 플레이어의 이름"
L["Names of unaffected Players"] = "영향 받지 않은 플레이어의 이름"
L["Nature Resistance"] = "자연 저항"
L["Naxxramas"] = "낙스라마스"
L["Nefarian"] = "네파리안"
L["Neutral"] = "중립"
L["Never"] = "절대 안 함"
L["Next Combat"] = "다음 전투"
L["Next Encounter"] = "다음 교전"
--[[Translation missing --]]
L["No Extend"] = "No Extend"
L["No Instance"] = "인스턴스가 아닐 때"
L["No Profiling information saved."] = "저장된 프로파일링 정보가 없습니다."
L["None"] = "없음"
L["Non-player Character"] = "NPC"
L["Normal"] = "일반"
L["Normal Party"] = "일반 파티"
L["Northrend Beasts"] = "노스렌드의 야수"
L["Not in Group"] = "그룹에 없음"
L["Not in Smart Group"] = "스마트 그룹에 없음"
L["Not on Cooldown"] = "재사용 대기 중이 아닐 때"
L["Not On Threat Table"] = "위협 수준 없음"
L["Note, that cross realm transmission is possible if you are on the same group"] = "참고로, 같은 영역에 있다면 상호 영역 전송이 가능합니다."
--[[Translation missing --]]
L["Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."] = "Note: Due to how complicated the swing timer behavior is and the lack of APIs from Blizzard, results are inaccurate in edge cases."
L["Note: 'Hide Alone' is not available in the new aura tracking system. A load option can be used instead."] = "참고: '혼자 숨기기'는 새로운 효과 추적 시스템에서 사용할 수 없습니다. 대신 불러오기 옵션을 사용하세요."
--[[Translation missing --]]
L["Note: The available text replacements for multi triggers match the normal triggers now."] = "Note: The available text replacements for multi triggers match the normal triggers now."
--[[Translation missing --]]
L["Note: This trigger relies on the WoW API, which returns incorrect information in some cases."] = "Note: This trigger relies on the WoW API, which returns incorrect information in some cases."
--[[Translation missing --]]
L["Note: This trigger type estimates the range to the hitbox of a unit. The actual range of friendly players is usually 3 yards more than the estimate. Range checking capabilities depend on your current class and known abilities as well as the type of unit being checked. Some of the ranges may also not work with certain NPCs.|n|n|cFFAAFFAAFriendly Units:|r %s|n|cFFFFAAAAHarmful Units:|r %s|n|cFFAAAAFFMiscellanous Units:|r %s"] = "Note: This trigger type estimates the range to the hitbox of a unit. The actual range of friendly players is usually 3 yards more than the estimate. Range checking capabilities depend on your current class and known abilities as well as the type of unit being checked. Some of the ranges may also not work with certain NPCs.|n|n|cFFAAFFAAFriendly Units:|r %s|n|cFFFFAAAAHarmful Units:|r %s|n|cFFAAAAFFMiscellanous Units:|r %s"
L["Noth the Plaguebringer"] = "역병술사 노스"
L["NPC"] = "NPC"
L["Npc ID"] = "NPC ID"
L["Number"] = "횟수"
L["Number Affected"] = "영향 받은 횟수"
L["Object"] = "객체"
--[[Translation missing --]]
L[ [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if BigWigs shows it on it's bar]=] ] = [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if BigWigs shows it on it's bar]=]
--[[Translation missing --]]
L[ [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if DBM shows it on it's bar]=] ] = [=[Occurence of the event, reset when aura is unloaded
Can be a range of values
Can have multiple values separated by a comma or a space

Examples:
2nd 5th and 6th events: 2, 5, 6
2nd to 6th: 2-6
every 2 events: /2
every 3 events starting from 2nd: 2/3
every 3 events starting from 2nd and ending at 11th: 2-11/3

Only if DBM shows it on it's bar]=]
L["Officer"] = "길드관리자"
--[[Translation missing --]]
L["Offset from progress"] = "Offset from progress"
--[[Translation missing --]]
L["Offset Timer"] = "Offset Timer"
L["Old Blizzard (2h | 3m | 10s | 2.4)"] = "옛 블리자드 (2h | 3m | 10s | 2.4)"
L["On Cooldown"] = "재사용 대기 중일 때"
--[[Translation missing --]]
L["On Taxi"] = "On Taxi"
--[[Translation missing --]]
L["Only if on a different realm"] = "Only if on a different realm"
L["Only if Primary"] = "주 자원일때만"
L["Onyxia"] = "오닉시아"
L["Onyxia's Lair"] = "오닉시아의 둥지"
L["Opaque"] = "불투명"
L["Option Group"] = "옵션 그룹"
L["Options could not be loaded, the addon is %s"] = "옵션을 불러올 수 없습니다. 애드온은 %s입니다."
L["Options will finish loading after combat ends."] = "옵션은 전투가 끝나면 불러오기가 완료됩니다."
L["Options will open after the login process has completed."] = "접속 과정이 끝난 후 옵션이 열립니다."
L["Or Talent"] = "또는 특성"
L["Orbit"] = "공전"
L["Orientation"] = "방향"
L["Ossirian the Unscarred"] = "무적의 오시리안"
--[[Translation missing --]]
L["Other"] = "Other"
L["Other Addons"] = "다른 애드온"
L["Other Events"] = "다른 이벤트"
L["Ouro"] = "아우로"
L["Outline"] = "외곽선"
L["Overhealing"] = "초과 치유"
L["Overkill"] = "초과 피해"
L["Overlay %s"] = "오버레이 %s"
--[[Translation missing --]]
L["Overlay Charged Combo Points"] = "Overlay Charged Combo Points"
L["Overlay Cost of Casts"] = "주문의 오버레이 수치"
--[[Translation missing --]]
L["Overlay Latency"] = "Overlay Latency"
L["Parry"] = "막음"
L["Parry (%)"] = "무기 막기 (%)"
L["Parry Rating"] = "무기 막기"
L["Party"] = "파티"
L["Party Kill"] = "죽임"
L["Patchwerk"] = "패치워크"
L["Path of Ascension: Courage"] = "승천의 길: 용기"
L["Path of Ascension: Humility"] = "승천의 길: 겸손"
L["Path of Ascension: Loyalty"] = "승천의 길: 충성"
L["Path of Ascension: Wisdom"] = "승천의 길: 지혜"
L["Paused"] = "일시정지됨"
L["Periodic Spell"] = "주기적인 주문"
L["Personal Resource Display"] = "개인 자원 표시"
L["Pet"] = "소환수"
L["Pet Behavior"] = "소환수 행동"
L["Pet Specialization"] = "소환수 전문화"
L["Pet Spell"] = "소환수 주문"
--[[Translation missing --]]
L["Pets only"] = "Pets only"
--[[Translation missing --]]
L["Phase"] = "Phase"
L["Pixel Glow"] = "픽셀 반짝임"
L["Placement"] = "배치"
L["Placement Mode"] = "배치 모드"
L["Play"] = "재생"
L["Player"] = "플레이어"
L["Player Character"] = "플레이어 캐릭터"
L["Player Class"] = "플레이어 직업"
L["Player Effective Level"] = "플레이어 실제 레벨"
L["Player Experience"] = "플레이어 경험치"
L["Player Faction"] = "플레이어 진영"
L["Player Level"] = "플레이어 레벨"
L["Player Name/Realm"] = "플레이어 이름/서버"
L["Player Race"] = "플레이어 종족"
--[[Translation missing --]]
L["Player Rest"] = "Player Rest"
L["Player(s) Affected"] = "영향 받은 플레이어"
L["Player(s) Not Affected"] = "영향 받지 않은 플레이어"
L["Player/Unit Info"] = "플레이어/유닛 정보"
--[[Translation missing --]]
L["Players and Pets"] = "Players and Pets"
L["Poison"] = "독"
L["Power"] = "자원"
L["Power (%)"] = "자원 (%)"
--[[Translation missing --]]
L["Power Deficit"] = "Power Deficit"
L["Power Type"] = "자원 유형"
L["Precision"] = "정밀도"
L["Preset"] = "프리셋"
L["Princess Huhuran"] = "공주 후후란"
L["Print Profiling Results"] = "프로파일링 결과 출력"
L["Professor Putricide"] = "교수 퓨트리사이드"
L["Profiling already started."] = "프로파일링이 이미 시작되었습니다."
L["Profiling automatically started."] = "프로파일링이 자동으로 시작되었습니다."
L["Profiling not running."] = "프로파일링 실행 중이 아닙니다."
L["Profiling started."] = "프로파일링이 시작되었습니다."
L["Profiling started. It will end automatically in %d seconds"] = "프로파일링이 시작되었습니다. %d초 뒤에 자동으로 끝납니다."
L["Profiling still running, stop before trying to print."] = "프로파일링이 아직 실행 중입니다. 출력하기 전에 중지하세요."
L["Profiling stopped."] = "프로파일링이 중지되었습니다."
L["Progress"] = "진행"
L["Progress Total"] = "진행 현황"
L["Progress Value"] = "진행 수치"
L["Pulse"] = "맥박"
L["PvP Flagged"] = "PvP 활성"
L["PvP Talent %i"] = "PvP 특성 %i"
L["PvP Talent selected"] = "선택된 명예 특성"
L["PvP Talent Selected"] = "선택된 명예 특성"
--[[Translation missing --]]
L["Queued Action"] = "Queued Action"
L["Radius"] = "반경"
L["Ragnaros"] = "라그나로스"
L["Raid"] = "공격대"
L["Raid (Heroic)"] = "공격대 (영웅)"
L["Raid (Mythic)"] = "공격대 (신화)"
L["Raid (Normal)"] = "공격대 (일반)"
L["Raid (Timewalking)"] = "공격대 (시간여행)"
--[[Translation missing --]]
L["Raid Mark"] = "Raid Mark"
--[[Translation missing --]]
L["Raid Mark Icon"] = "Raid Mark Icon"
L["Raid Role"] = "공격대 역할"
L["Raid Warning"] = "공격대 경보"
L["Raids"] = "공격대"
L["Range"] = "원거리"
L["Range Check"] = "거리 확인"
--[[Translation missing --]]
L["Ranged"] = "Ranged"
L["Rank"] = "등급"
L["Rare"] = "희귀"
L["Rare Elite"] = "희귀 정예"
L["Rated Arena"] = "평점제 투기장"
L["Rated Battleground"] = "평점제 전장"
--[[Translation missing --]]
L["Raw Threat Percent"] = "Raw Threat Percent"
L["Razorgore the Untamed"] = "폭군 서슬송곳니"
L["Razorscale"] = "칼날비늘"
L["Ready Check"] = "전투 준비"
--[[Translation missing --]]
L["Reagent Quality"] = "Reagent Quality"
--[[Translation missing --]]
L["Reagent Quality Texture"] = "Reagent Quality Texture"
L["Realm"] = "서버"
L["Realm Name"] = "서버명"
L["Realm of Caster's Target"] = "시전자 대상의 서버"
L["Receiving display information"] = "디스플레이 정보 수신 중"
L["Reflect"] = "반사함"
L["Region type %s not supported"] = "영역 유형 %s|1은;는; 지원되지 않습니다"
L["Relative"] = "상대적"
L["Relative X-Offset"] = "상대 X-좌표"
L["Relative Y-Offset"] = "상대 Y-좌표"
L["Remaining Duration"] = "남은 지속시간"
L["Remaining Time"] = "남은 시간"
L["Remove Obsolete Auras"] = "쓸모없는 효과를 제거"
--[[Translation missing --]]
L["Repair"] = "Repair"
L["Repeat"] = "반복"
L["Report Summary"] = "보고서 요약"
L["Requested display does not exist"] = "요청한 디스플레이가 존재하지 않습니다"
L["Requested display not authorized"] = "요청한 디스플레이가 올바르지 않습니다"
L["Requesting display information from %s ..."] = "%s의 디스플레이 정보 요청 중 ..."
L["Require Valid Target"] = "유효 대상 필요"
L["Requires syncing the specialization via LibSpecialization."] = "LibSpecialization을 통해 전문화를 동기화해야 합니다."
--[[Translation missing --]]
L["Resilience Percent"] = "Resilience Percent"
L["Resilience Rating"] = "탄력도"
L["Resist"] = "저항"
L["Resisted"] = "저항함"
--[[Translation missing --]]
L["Rested"] = "Rested"
L["Rested Experience"] = "휴식 경험치"
L["Rested Experience (%)"] = "휴식 경험치 (%)"
L["Resting"] = "휴식 중"
L["Resurrect"] = "부활"
L["Right"] = "오른쪽"
L["Right to Left"] = "오른쪽에서 왼쪽"
--[[Translation missing --]]
L["Right, then Centered Vertical"] = "Right, then Centered Vertical"
L["Right, then Down"] = "오른쪽으로, 아래로"
L["Right, then Up"] = "오른쪽으로, 위로"
L["Role"] = "역할"
--[[Translation missing --]]
L["Rotate Animation"] = "Rotate Animation"
L["Rotate Left"] = "왼쪽으로 회전"
L["Rotate Right"] = "오른쪽으로 회전"
L["Rotation"] = "회전"
L["Rotface"] = "썩은얼굴"
--[[Translation missing --]]
L["Round"] = "Round"
--[[Translation missing --]]
L["Round Mode"] = "Round Mode"
L["Ruins of Ahn'Qiraj"] = "안퀴라즈 폐허"
L["Run Custom Code"] = "사용자 정의 코드 실행"
L["Run Speed (%)"] = "달리기 속도 (%)"
L["Rune"] = "룬"
L["Rune #1"] = "룬 #1"
L["Rune #2"] = "룬 #2"
L["Rune #3"] = "룬 #3"
L["Rune #4"] = "룬 #4"
L["Rune #5"] = "룬 #5"
L["Rune #6"] = "룬 #6"
--[[Translation missing --]]
L["Rune Count"] = "Rune Count"
--[[Translation missing --]]
L["Rune Count - Blood"] = "Rune Count - Blood"
--[[Translation missing --]]
L["Rune Count - Frost"] = "Rune Count - Frost"
--[[Translation missing --]]
L["Rune Count - Unholy"] = "Rune Count - Unholy"
L["Sapphiron"] = "사피론"
L["Sartharion"] = "살타리온"
L["Saviana Ragefire"] = "사비아나 레이지파이어"
L["Say"] = "일반 대화"
L["Scale"] = "크기 비율"
L["Scenario"] = "시나리오"
L["Scenario (Heroic)"] = "시나리오 (영웅)"
L["Scenario (Normal)"] = "시나리오 (일반)"
--[[Translation missing --]]
L["Screen"] = "Screen"
L["Screen/Parent Group"] = "화면/부모 그룹"
L["Second"] = "두 번째"
L["Second Value of Tooltip Text"] = "툴팁 문자의 두 번째 값"
L["Seconds"] = "초"
--[[Translation missing --]]
L[ [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=] ] = [=[Secure frame detected. Find more information:
https://github.com/WeakAuras/WeakAuras2/wiki/Protected-Frames]=]
L["Select Frame"] = "선택 프레임"
--[[Translation missing --]]
L["Separator"] = "Separator"
L["Set IDs can be found on websites such as classic.wowhead.com/item-sets"] = "세트 ID는 classic.wowhead.com/item-sets와 같은 웹사이트에서 찾을 수 있습니다."
L["Set IDs can be found on websites such as wowhead.com/item-sets"] = "세트 ID는 Wowhead.com/item-sets와 같은 웹사이트에서 찾을 수 있습니다."
L["Set IDs can be found on websites such as wowhead.com/wotlk/item-sets"] = "세트 ID는 Wowhead.com/wotlk/item-sets와 같은 웹사이트에서 찾을 수 있습니다."
L["Set Maximum Progress"] = "최대 진행 값 설정"
L["Set Minimum Progress"] = "최소 진행 값 설정"
L["Shadow Resistance"] = "암흑 저항"
L["Shadowlands"] = "어둠땅"
L["Shadron"] = "샤드론"
L["Shake"] = "흔들기"
L["Shazzrah"] = "샤즈라"
L["Shift-Click to resume addon execution."] = "쉬프트-클릭으로 애드온 실행을 다시 시작합니다."
L["Show"] = "표시"
L["Show Absorb"] = "흡수 표시"
L["Show CD of Charge"] = "충전량 재사용 대기시간 표시"
--[[Translation missing --]]
L["Show charged duration for empowered casts"] = "Show charged duration for empowered casts"
L["Show GCD"] = "전역 재사용 대기시간 표시"
L["Show Global Cooldown"] = "전역 재사용 대기시간 표시"
L["Show Heal Absorb"] = "치유 흡수 표시"
L["Show Incoming Heal"] = "받는 치유 표시"
L["Show Loss of Control"] = "제어 상실 표시"
--[[Translation missing --]]
L["Show On"] = "Show On"
--[[Translation missing --]]
L["Show Rested Overlay"] = "Show Rested Overlay"
L["Shrink"] = "축소"
L["Silithid Royalty"] = "실리시드 왕실"
L["Simple"] = "단순"
--[[Translation missing --]]
L["Since Apply"] = "Since Apply"
--[[Translation missing --]]
L["Since Apply/Refresh"] = "Since Apply/Refresh"
--[[Translation missing --]]
L["Since Charge Gain"] = "Since Charge Gain"
--[[Translation missing --]]
L["Since Charge Lost"] = "Since Charge Lost"
--[[Translation missing --]]
L["Since Ready"] = "Since Ready"
--[[Translation missing --]]
L["Since Stack Gain"] = "Since Stack Gain"
L["Since Stack Lost"] = "중첩 손실 이후"
L["Sindragosa"] = "신드라고사"
L["Size & Position"] = "크기 & 위치"
L["Slide Animation"] = "슬라이드 애니메이션"
L["Slide from Bottom"] = "아래부터 슬라이드"
L["Slide from Left"] = "왼쪽부터 슬라이드"
L["Slide from Right"] = "오른쪽부터 슬라이드"
L["Slide from Top"] = "위쪽부터 슬라이드"
L["Slide to Bottom"] = "아래로 슬라이드"
L["Slide to Left"] = "왼쪽으로 슬라이드"
L["Slide to Right"] = "오른쪽으로 슬라이드"
L["Slide to Top"] = "위로 슬라이드"
L["Slider"] = "슬라이더"
L["Small"] = "작음"
L["Smart Group"] = "스마트 그룹"
--[[Translation missing --]]
L["Soft Enemy"] = "Soft Enemy"
--[[Translation missing --]]
L["Soft Friend"] = "Soft Friend"
L["Sound"] = "소리"
L["Sound by Kit ID"] = "Kit ID로 소리 재생"
--[[Translation missing --]]
L["Source"] = "Source"
--[[Translation missing --]]
L["Source Affiliation"] = "Source Affiliation"
L["Source GUID"] = "행위자 GUID"
L["Source Name"] = "행위자 이름"
L["Source NPC Id"] = "행위자 NPC ID"
L["Source Object Type"] = "행위자 객체 유형"
L["Source Raid Mark"] = "행위자 공격대 징표"
L["Source Reaction"] = "행위자 반응"
L["Source Unit"] = "행위자 유닛"
L["Source Unit Name/Realm"] = "행위자 유닛 이름/서버"
--[[Translation missing --]]
L["Source unit's raid mark index"] = "Source unit's raid mark index"
--[[Translation missing --]]
L["Source unit's raid mark texture"] = "Source unit's raid mark texture"
L["Space"] = "공간"
L["Spacing"] = "간격"
L["Spark"] = "섬광"
--[[Translation missing --]]
L["Spec Position"] = "Spec Position"
L["Spec Role"] = "전문화 역할"
L["Specialization"] = "전문화"
L["Specific Type"] = "특정 유형"
L["Specific Unit"] = "특정 유닛"
L["Spell"] = "주문"
L["Spell (Building)"] = "주문 (공성)"
L["Spell Activation Overlay Glow"] = "주문 활성화 강조 표시"
L["Spell Cast Succeeded"] = "주문 시전 성공"
L["Spell Cost"] = "주문 요건"
L["Spell Count"] = "주문 횟수"
L["Spell ID"] = "주문 ID"
L["Spell Id"] = "주문 ID"
L["Spell ID:"] = "주문 ID:"
L["Spell IDs:"] = "주문 ID(s):"
L["Spell in Range"] = "범위 내 주문"
L["Spell Known"] = "습득한 주문"
L["Spell Name"] = "주문 이름"
--[[Translation missing --]]
L["Spell Peneration Percent"] = "Spell Peneration Percent"
L["Spell School"] = "주문 갈래"
L["Spell Usable"] = "주문 사용 가능"
L["Spin"] = "회전"
L["Spiral"] = "소용돌이"
L["Spiral In And Out"] = "회전 소용돌이"
--[[Translation missing --]]
L["Spirit"] = "Spirit"
L["Stack Count"] = "중첩 횟수"
L["Stacks"] = "중첩"
--[[Translation missing --]]
L["Stacks Function"] = "Stacks Function"
--[[Translation missing --]]
L["Stacks Function (fallback state)"] = "Stacks Function (fallback state)"
L["Stage"] = "단계"
L["Stage Counter"] = "단계 카운터"
--[[Translation missing --]]
L["Stagger (%)"] = "Stagger (%)"
--[[Translation missing --]]
L["Stagger against Target (%)"] = "Stagger against Target (%)"
--[[Translation missing --]]
L["Stagger Scale"] = "Stagger Scale"
L["Stamina"] = "체력"
L["Stance/Form/Aura"] = "태세/변신/효과"
--[[Translation missing --]]
L["Standing"] = "Standing"
L["Star Shake"] = "별모양 흔들림"
L["Start Now"] = "지금 시작"
L["Status"] = "상태"
--[[Translation missing --]]
L["Status Bar"] = "Status Bar"
L["Stolen"] = "훔침"
L["Stop"] = "중지"
L["Strength"] = "힘"
L["String"] = "문자열"
--[[Translation missing --]]
L["Subtract Cast"] = "Subtract Cast"
--[[Translation missing --]]
L["Subtract Channel"] = "Subtract Channel"
--[[Translation missing --]]
L["Subtract GCD"] = "Subtract GCD"
--[[Translation missing --]]
L["Success"] = "Success"
L["Sulfuron Harbinger"] = "설퍼론 사자"
L["Summon"] = "소환"
L["Supports multiple entries, separated by commas"] = "쉼표로 구분된 여러 항목을 지원합니다"
L[ [=[Supports multiple entries, separated by commas
]=] ] = "쉼표로 구분된 여러 항목을 지원합니다"
L["Supports multiple entries, separated by commas. Escape ',' with \\"] = "쉼표로 구분된 여러 항목을 지원합니다. \\로 ',' 이스케이프"
L["Supports multiple entries, separated by commas. Group Zone IDs must be prefixed with 'g', e.g. g277."] = "쉼표로 구분된 여러 항목을 지원합니다. 그룹 지역 ID(s)에는 'g' 접두사(예 g277)가 있어야 합니다."
L["Swing"] = "자동 공격"
L["Swing Timer"] = "자동 공격 타이머"
--[[Translation missing --]]
L["Swipe"] = "Swipe"
L["System"] = "시스템"
--[[Translation missing --]]
L["Tab "] = "Tab "
--[[Translation missing --]]
L["Tailoring Cast Bar"] = "Tailoring Cast Bar"
L["Talent"] = "특성"
L["Talent |cFFFF0000Not|r Known"] = "|cFFFF0000배우지 않은|r 특성"
L["Talent |cFFFF0000Not|r Selected"] = "|cFFFF0000선택하지 않은|r 특성"
L["Talent Known"] = "배운 특성"
L["Talent Selected"] = "선택된 특성"
L["Talent selected"] = "선택된 특성"
L["Talent Specialization"] = "특성 전문화"
L["Tanking And Highest"] = "탱커이면서 제일 높을 때"
L["Tanking But Not Highest"] = "탱커지만 제일 높지 않을 때"
L["Target"] = "대상"
--[[Translation missing --]]
L["Targeted"] = "Targeted"
L["Tenebron"] = "테네브론"
L["Text"] = "문자"
--[[Translation missing --]]
L["Text-to-speech"] = "Text-to-speech"
--[[Translation missing --]]
L["Texture Function"] = "Texture Function"
--[[Translation missing --]]
L["Texture Function (fallback state)"] = "Texture Function (fallback state)"
--[[Translation missing --]]
L["Texture Rotation"] = "Texture Rotation"
L["Thaddius"] = "타디우스"
L["The aura has overwritten the global '%s', this might affect other auras."] = "aura가 전역 '%s'|1을;를; 덮어썼습니다, 다른 aura도 영향을 받습니다."
L["The effective level differs from the level in e.g. Time Walking dungeons."] = "실제 레벨은 예를 들어 시간여행 던전의 레벨과는 다릅니다."
L["The Eye of Eternity"] = "영원의 눈"
L["The Four Horsemen"] = "4기사단"
L["The Lich King"] = "리치 왕"
L["The Obsidian Sanctum"] = "흑요석 성소"
L["The Prophet Skeram"] = "예언자 스케람"
L["The Ruby Sanctum"] = "루비 성소"
L["The trigger number is optional, and uses the trigger providing dynamic information if not specified."] = "활성 조건 번호는 선택 사항이며, 지정되지 않은 경우 유동적 정보를 제공하는 활성 조건을 사용합니다."
L["There are %i updates to your auras ready to be installed!"] = "업데이트 %i개를 설치할 수 있습니다!"
L["Thick Outline"] = "굵은 외곽선"
L["Thickness"] = "굵기"
L["Third"] = "세 번째"
L["Third Value of Tooltip Text"] = "툴팁 문자의 세 번째 값"
--[[Translation missing --]]
L["This aura calls GetData a lot, which is a slow function."] = "This aura calls GetData a lot, which is a slow function."
L["This aura has caused a Lua error."] = "이 효과는 Lua 오류를 일으켰습니다."
--[[Translation missing --]]
L["This aura is saving %s KB of data"] = "This aura is saving %s KB of data"
L["This aura plays a sound via a condition."] = "이 효과는 조건을 통해 소리를 재생합니다."
L["This aura plays a sound via an action."] = "이 효과는 동작을 통해 소리를 재생합니다."
L["Thorim"] = "토림"
L["Threat Percent"] = "위협 수준 백분율"
L["Threat Situation"] = "위협 수준 상황"
L["Threat Value"] = "위협 수준 수치"
L["Tick"] = "틱"
L["Time Format"] = "시간 형식"
--[[Translation missing --]]
L["Time in GCDs"] = "Time in GCDs"
L["Timed"] = "일정 시간"
L["Timer Id"] = "타이머 ID"
L["Toggle"] = "토글"
L["Toggle List"] = "목록 토글"
L["Toggle Options Window"] = "옵션창 토글"
L["Toggle Performance Profiling Window"] = "성능 프로파일링 창 토글"
L["Tooltip"] = "툴팁"
L["Tooltip Value 1"] = "툴팁 값 1"
L["Tooltip Value 2"] = "툴팁 값 2"
L["Tooltip Value 3"] = "툴팁 값 3"
L["Top"] = "위"
L["Top Left"] = "왼쪽 위"
L["Top Right"] = "오른쪽 위"
L["Top to Bottom"] = "위에서 아래로"
L["Toravon the Ice Watcher"] = "얼음 감시자 토라본"
L["Torghast"] = "토르가스트"
L["Total"] = "전체"
L["Total Duration"] = "총 지속시간"
--[[Translation missing --]]
L["Total Essence"] = "Total Essence"
L["Total Experience"] = "전체 경험치"
L["Total Match Count"] = "총 일치 횟수"
L["Total Stacks"] = "총 중첩"
--[[Translation missing --]]
L["Total stacks over all matches"] = "Total stacks over all matches"
L["Total Stages"] = "총 단계"
L["Total Unit Count"] = "총 유닛 수"
L["Total Units"] = "총 유닛"
L["Totem"] = "토템"
L["Totem #%i"] = "토템 #%i"
L["Totem Name"] = "토템 이름"
L["Totem Name Pattern Match"] = "토템 이름 패턴 일치"
L["Totem Number"] = "토템 번호"
L["Track Cooldowns"] = "재사용 대기시간 추적"
--[[Translation missing --]]
L["Tracking Charge %i"] = "Tracking Charge %i"
--[[Translation missing --]]
L["Tracking Charge CDs"] = "Tracking Charge CDs"
--[[Translation missing --]]
L["Tracking Only Cooldown"] = "Tracking Only Cooldown"
L["Transmission error"] = "전송 오류"
L["Trial of the Crusader"] = "십자군의 시험장"
L["Trigger"] = "활성 조건"
L["Trigger %i"] = "활성 조건 %i"
L["Trigger %s"] = "활성 조건 %s"
L["Trigger 1"] = "활성 조건 1"
L["Trigger State Updater (Advanced)"] = "활성 조건 상태 업데이터 (고급)"
L["Trigger Update"] = "활성 조건 업데이트"
L["Trigger:"] = "활성 조건:"
--[[Translation missing --]]
L["Trivial (Low Level)"] = "Trivial (Low Level)"
L["True"] = "참"
--[[Translation missing --]]
L["Trying to repair broken conditions in %s likely caused by a WeakAuras bug."] = "Trying to repair broken conditions in %s likely caused by a WeakAuras bug."
L["Twin Emperors"] = "쌍둥이 제왕"
L["Type"] = "유형"
L["Ulduar"] = "울두아르"
L["Unaffected"] = "영향 받지 않음"
L["Undefined"] = "정의 안 됨"
L["Unholy"] = "부정"
L["Unholy Rune #1"] = "부정 룬 #1"
L["Unholy Rune #2"] = "부정 룬 #2"
L["Unit"] = "유닛"
L["Unit Characteristics"] = "유닛 특성"
L["Unit Destroyed"] = "유닛 파괴됨"
L["Unit Died"] = "유닛 죽음"
L["Unit Dissipates"] = "유닛 사라짐"
L["Unit Frame"] = "유닛 프레임"
L["Unit Frames"] = "유닛 프레임"
L["Unit is Unit"] = "유닛 = 유닛"
L["Unit Name"] = "유닛 이름"
L["Unit Name/Realm"] = "유닛 이름/서버"
L["Units Affected"] = "영향 받은 유닛"
L["unknown location"] = "알 수 없는 위치"
L["Unlimited"] = "무제한"
--[[Translation missing --]]
L["Untrigger %s"] = "Untrigger %s"
L["Up"] = "위로"
--[[Translation missing --]]
L["Up, then Centered Horizontal"] = "Up, then Centered Horizontal"
L["Up, then Left"] = "위로, 왼쪽으로"
L["Up, then Right"] = "위로, 오른쪽으로"
--[[Translation missing --]]
L["Update Position"] = "Update Position"
L["Usage:"] = "사용법:"
L["Use /wa minimap to show the minimap icon again."] = "/wa minimap 을 사용하여 미니맵 아이콘을 다시 표시합니다."
L["Use Custom Color"] = "사용자 정의 색상 사용"
--[[Translation missing --]]
L["Use Legacy floor rounding"] = "Use Legacy floor rounding"
--[[Translation missing --]]
L["Use Watched Faction"] = "Use Watched Faction"
L["Using WeakAuras.clones is deprecated. Use WeakAuras.GetRegion(id, cloneId) instead."] = "WeakAuras.clones는 더 이상 사용되지 않습니다. 대신 WeakAuras.GetRegion(id, cloneId)를 사용하세요."
L["Using WeakAuras.regions is deprecated. Use WeakAuras.GetRegion(id) instead."] = "WeakAuras.regions는 더 이상 사용되지 않습니다. 대신 WeakAuras.GetRegion(id)를 사용하세요."
L["Vaelastrasz the Corrupt"] = "타락한 밸라스트라즈"
L["Valithria Dreamwalker"] = "발리스리아 드림워커"
L["Val'kyr Twins"] = "발키르 쌍둥이"
L["Value"] = "값"
L["Values/Remaining Time above this value are displayed as full progress."] = "이 값보다 큰 값/남은 시간은 전체 진행으로 표시됩니다."
L["Values/Remaining Time below this value are displayed as no progress."] = "이 값 미만인 값/남은 시간은 진행되지 않음으로 표시됩니다."
L["Vault of Archavon"] = "아카본 석실"
L["Versatility (%)"] = "유연성 (%)"
L["Versatility Rating"] = "유연성"
--[[Translation missing --]]
L["Vertical"] = "Vertical"
L["Vesperon"] = "베스페론"
L["Viscidus"] = "비시디우스"
L["Visibility"] = "표시"
L["Visions of N'Zoth"] = "느조스의 환영"
L["War Mode Active"] = "전쟁 모드 활성화"
L["Warfront (Heroic)"] = "격전지 (영웅)"
L["Warfront (Normal)"] = "격전지 (일반)"
L["Warlords of Draenor"] = "드레노어의 전쟁군주"
L["Warning"] = "경고"
L["Warning for unknown aura:"] = "알 수 없는 효과에 대한 경고:"
--[[Translation missing --]]
L["Warning: Anchoring to your own child '%s' in aura '%s' is imposssible."] = "Warning: Anchoring to your own child '%s' in aura '%s' is imposssible."
L["Warning: Full Scan auras checking for both name and spell id can't be converted."] = "경고: 이름 및 주문 ID를 모두 확인하는 완전 효과 검사는 변환할 수 없습니다."
L["Warning: Name info is now available via %affected, %unaffected. Number of affected group members via %unitCount. Some options behave differently now. This is not automatically adjusted."] = "경고: %affected, %unaffected 를 통해 이름 정보를 사용할 수 있습니다. 영향을 받은 구성원의 수는 %unitCount 로 통합니다. 일부 옵션은 다르게 동작합니다. 이것은 자동으로 조정되지 않습니다."
L["Warning: Tooltip values are now available via %tooltip1, %tooltip2, %tooltip3 instead of %s. This is not automatically adjusted."] = "경고: 툴팁 값은 이제 %s 대신 %tooltip1, %tooltip2, %tooltip3으로 사용할 수 있습니다. 이것은 자동으로 조정되지 않습니다."
L["WeakAuras Built-In (63:42 | 3:07 | 10 | 2.4)"] = "WeakAuras 내장 (63:42 | 3:07 | 10 | 2.4)"
L[ [=[WeakAuras has detected that it has been downgraded.
Your saved auras may no longer work properly.
Would you like to run the |cffff0000EXPERIMENTAL|r repair tool? This will overwrite any changes you have made since the last database upgrade.
Last upgrade: %s]=] ] = "WeakAuras가 다운그레이드 되었음을 감지했습니다. 저장된 효과가 더 이상 제대로 작동하지 않을 수 있습니다. |cffff0000실험용|r 복구 도구를 실행할까요? 이는 마지막 DB 업그레이드 이후에 수행한 모든 변경 사항을 덮어씁니다. 마지막 업그레이드: %s"
L["WeakAuras has encountered an error during the login process. Please report this issue at https://github.com/WeakAuras/Weakauras2/issues/new."] = "로그인 과정 중 WeakAuras에 문제가 발생했습니다. 이 문제를 https://github.com/WeakAuras/Weakauras2/issues/new 에 보고해주세요."
L["WeakAuras Profiling"] = "WeakAuras 프로파일링"
L["WeakAuras Profiling Report"] = "WeakAuras 프로파일링 보고서"
L["WeakAuras Version: %s"] = "WeakAuras 버전: %s"
L["Weapon"] = "무기"
L["Weapon Enchant"] = "무기 마법부여"
L["Weapon Enchant / Fishing Lure"] = "무기 마법부여 / 낚시 미끼"
L["Whisper"] = "귓속말"
L["Whole Area"] = "전체 영역"
L["Width"] = "너비"
L["Wobble"] = "흔들기"
L["World Boss"] = "월드 보스"
L["Wrap"] = "구속"
L["Wrath of the Lich King"] = "리치 왕의 분노"
L["Writing to the WeakAuras table is not allowed."] = "WeakAuras table에 작성은 허용되지 않습니다."
L["X-Offset"] = "X-좌표"
L["XT-002 Deconstructor"] = "XT-002 해체자"
L["Yell"] = "외침"
L["Y-Offset"] = "Y-좌표"
L["Yogg-Saron"] = "요그사론"
L["You have new auras ready to be installed!"] = "새로운 효과를 설치할 준비가 되었습니다!"
L["Your next encounter will automatically be profiled."] = "다음 교전은 자동으로 프로파일링됩니다."
L["Your next instance of combat will automatically be profiled."] = "다음 인스턴스 전투는 자동으로 프로파일링됩니다."
L["Your scheduled automatic profile has been cancelled."] = "예약된 자동 프로파일이 취소되었습니다."
L["Your threat as a percentage of the tank's current threat."] = "방어 전담의 현재 위협 수준에 대한 당신의 위협 수준의 백분율입니다."
L["Your threat on the mob as a percentage of the amount required to pull aggro. Will pull aggro at 100."] = "몹의 어그로를 획득하는 데 필요한 위협 수준에 대한 당신의 위협 수준입니다. 100일 때 어그로를 획득합니다."
L["Your total threat on the mob."] = "몬스터가 가진 당신의 총 위협 수준입니다."
L["Zone ID(s)"] = "지역 ID(s)"
L["Zone Name"] = "지역 이름"
L["Zoom"] = "확대"
L["Zoom Animation"] = "확대 애니메이션"
L["Zul'Gurub"] = "줄구룹"

