Sound library 1:
{
    1: Power bomb explosion
    2: Silence
    3: Missile
    4: Super missile
    5: Grapple start
    6: Grappling
    7: Grapple end
    8: Charging beam
    9: X-ray
    Ah: X-ray end (silence)
    Bh: Uncharged power beam
    Ch: Uncharged ice beam
    Dh: Uncharged wave beam
    Eh: Uncharged ice + wave beam
    Fh: Uncharged spazer beam
    10h: Uncharged spazer + ice beam
    11h: Uncharged spazer + ice + wave beam
    12h: Uncharged spazer + wave beam
    13h: Uncharged plasma beam
    14h: Uncharged plasma + ice beam
    15h: Uncharged plasma + ice + wave beam
    16h: Uncharged plasma + wave beam
    17h: Charged power beam
    18h: Charged ice beam
    19h: Charged wave beam
    1Ah: Charged ice + wave beam
    1Bh: Charged spazer beam
    1Ch: Charged spazer + ice beam
    1Dh: Charged spazer + ice + wave beam
    1Eh: Charged spazer + wave beam
    1Fh: Charged plasma beam / hyper beam
    20h: Charged plasma + ice beam
    21h: Charged plasma + ice + wave beam
    22h: Charged plasma + wave beam / post-credits Samus shoots screen
    23h: Ice SBA
    24h: Ice SBA end
    25h: Spazer SBA
    26h: Spazer SBA end
    27h: Plasma SBA
    28h: Wave SBA
    29h: Wave SBA end (silence)
    2Ah: Selected save file
    2Bh: (Empty)
    2Ch: (Empty)
    2Dh: (Empty)
    2Eh: Saving
    2Fh: Underwater space jump (without gravity suit)
    30h: Resumed spin jump (called by unused code $84:8278)
    31h: Spin jump
    32h: Spin jump end (silence)
    33h: Screw attack
    34h: Screw attack end (silence)
    35h: Samus damaged
    36h: Scrolling map
    37h: Toggle reserve mode / moved cursor
    38h: Pause menu transition / toggled equipment
    39h: Switch HUD item
    3Ah: (Empty)
    3Bh: Hexagon map -> square map transition
    3Ch: Square map -> hexagon map transition
    3Dh: Dud shot
    3Eh: Space jump
    3Fh: Resumed space jump(?) (Unused. Same as resumed spin jump, but space jump and spin jump loop the same audio)
    40h: Mother Brain's rainbow beam (uses song-specific instrument 23h for channel 0)
    41h: Resume charging beam
    42h:  (uses song-specific instrument 24h)
}

Sound library 2:
{
    1: Collected small health drop
    2: Collected big health drop
    3: Collected missile drop
    4: Collected super missile drop
    5: Collected power bomb drop
    6: Block destroyed by contact damage
    7: (Super) missile hit wall
    8: Bomb explosion
    9: Enemy killed
    Ah: Block crumbled or destroyed by shot
    Bh: Enemy killed by contact damage
    Ch: Beam hit wall
    Dh: Splashed into water
    Eh: Splashed out of water
    Fh: Low pitched air bubbles
    10h: Lava/acid damaging Samus
    11h: High pitched air bubbles
    12h: Plays at random in heated rooms (uses song-specific instrument 22h)
    13h: Plays at random in heated rooms (uses song-specific instrument 22h)
    14h: Plays at random in heated rooms (uses song-specific instrument 22h)
    15h: Maridia elevatube (silence, also uses song-specific instrument 25h)
    16h:  (uses song-specific instrument 25h)
    17h: Morph ball eye's ray
    18h: Ambient sound in Red Brinstar mainstreet
    19h: Tourian statue unlocking particle
    1Ah: n00b tube shattering (uses song-specific instrument 25h)
    1Bh: Spikey platform stops
    1Ch: Chozo grabs Samus
    1Dh: Dachora cry
    1Eh:  (uses song-specific instrument 25h for channel 1)
    1Fh: Fune spits (uses song-specific instrument 25h)
    20h: Shot fly
    21h: Shot skree / wall/ninja space pirate
    22h: Shot pipe bug / high-rising slow-falling enemy
    23h: Shot slug / sidehopper / zoomer
    24h: Small explosion (enemy death)
    25h: Ceres door explosion / Crocomire flailing / Crocomire's wall explodes (also used by Mother Brain)
    26h: 
    27h: Shot torizo
    28h: 
    29h: Mother Brain rising into phase 2 / Crocomire's wall explodes
    2Ah: 
    2Bh: Ridley's fireball hit surface / Crocomire post-death rumble / Phantoon exploding
    2Ch: Shot Spore Spawn (uses song-specific instrument 25h)
    2Dh: Crocomire dying cry (uses song-specific instrument 25h)
    2Eh: Kraid's dying cry (uses song-specific instrument 25h)
    2Fh: Yapping maw
    30h: Shot super-desgeega / Crocomire destroys wall (uses song-specific instrument 25h)
    31h: Brinstar plant chewing
    32h: Etecoon wall-jump (uses song-specific instrument 1Dh)
    33h: Etecoon cry (uses song-specific instrument 1Dh)
    34h: Spike shooting plant spikes
    35h: Etecoon's theme (uses song-specific instrument 1Dh)
    36h: Shot rio / Norfair lava-jumping enemy / lava seahorse
    37h: Refill/map station engaged
    38h: Refill/map station disengaged
    39h: Dachora speed booster
    3Ah: 
    3Bh: Dachora shinespark
    3Ch: Dachora shinespark ended
    3Dh: Dachora stored shinespark
    3Eh: Shot Maridia spikey shells / Norfair erratic fireball / ripper / kamer / Maridia snail / yapping maw / Wrecked Ship orbs
    3Fh: Walking lava seahorse spit
    40h: 
    41h: (Empty)
    42h: Boulder explodes - initial
    43h: Boulder explodes - continued
    44h: (Empty)
    45h: Typewriter stroke - Ceres self destruct sequence
    46h: Lavaquake
    47h: Shot waver
    48h: Torizo sonic boom
    49h: Shot fish / crab / Maridia refill candy
    4Ah: Shot mini-Draygon (uses song-specific instrument 24h)
    4Bh: Chozo footsteps
    4Ch: Ki-hunter / eye door acid spit
    4Dh: Gunship hover
    4Eh: Ceres Ridley getaway
    4Fh: 
    50h: Metroid draining Samus / random Metroid cry (uses song-specific instrument 24h)
    51h: Shot Wrecked Ship ghost (uses song-specific instrument 19h)
    52h: Shitroid feels remorse (uses song-specific instrument 22h)
    53h: Shot mini-Crocomire
    54h: 
    55h: Shot beetom
    56h: Acquired suit
    57h: Shot door/gate with dud shot / shot reflec
    58h: Shot mochtroid / random Metroid cry (uses song-specific instrument 24h)
    59h: Ridley's roar (uses song-specific instrument 25h)
    5Ah: Shot metroid / random Metroid cry (uses song-specific instrument 24h)
    5Bh: Skree launches attack
    5Ch: Skree hits the ground
    5Dh: Sidehopper jumped
    5Eh: Sidehopper landed
    5Fh: Shot Lower Norfair rio / desgeega / Norfair slow fireball / walking lava seahorse / Botwoon
    60h:  Ridley's roar (uses song-specific instrument 25h)
    61h: Lava seahorse / lavaman spit / fire column
    62h: 
    63h: Mother Brain's ketchup beam Ridley's roar (uses song-specific instrument 18h for channel 1)
    64h: Lower Norfair rio cry
    65h: Rio cry
    66h: Shot ki-hunter / walking space pirate
    67h: Space pirate / Mother Brain / Torizo laser
    68h: Shot Wrecked Ship robot (uses song-specific instrument 1Bh)
    69h: Shot Shaktool
    6Ah: Shot Maridia floater
    6Bh: 
    6Ch: 
    6Dh: Ceres tiles falling from ceiling
    6Eh: Shot Mother Brain phase 1 (uses song-specific instrument 23h)
    6Fh: Mother Brain's cry - low pitch (uses song-specific instruments 24h/25h)
    70h: Maridia snail bounce (uses song-specific instrument 1Ah)
    71h: Silence
    72h: Shitroid's cry (uses song-specific instrument 24h)
    73h: Phantoon's cry (uses song-specific instrument 25h)
    74h:  (uses song-specific instrument 25h/26h)
    75h: Crocomire's skeleton collapses
    76h: Crocomire moves / Ridley's tail hits floor
    77h: Crocomire melting cry (uses song-specific instrument 25h/26h)
    78h: Shitroid draining (uses song-specific instrument 24h)
    79h: Phantoon appears 1 (uses song-specific instrument 26h)
    7Ah: Phantoon appears 2 (uses song-specific instrument 26h)
    7Bh: Phantoon appears 3 (uses song-specific instrument 26h)
    7Ch: Botwoon spit (uses song-specific instrument 24h)
    7Dh: Shitroid feels guilty (uses song-specific instrument 22h)
    7Eh: Mother Brain's cry - high pitch / Phantoon's dying cry (uses song-specific instrument 25h)
    7Fh: Mother Brain charging her rainbow (uses song-specific instrument 24h)
}

Sound library 3:
{
    1: Silence
    2: Low health beep
    3: Speed booster
    4: Samus landed hard
    5: Samus landed / wall-jumped
    6: Samus' footsteps
    7: Door opened
    8: Door closed
    9: Missile door shot with missile / shot Zebetite
    Ah: Enemy frozen
    Bh: Elevator
    Ch: Stored shinespark
    Dh: Typewriter stroke - intro
    Eh: Gate opening/closing
    Fh: Shinespark
    10h: Shinespark ended
    11h: (shorter version of shinespark ended)
    12h: (Empty)
    13h: Mother Brain's / Torizo's projectile hits surface / Shitroid exploding
    14h: Gunship elevator activated
    15h: Gunship elevator deactivated
    16h: 
    17h: Mother Brain's blue rings
    18h: (Empty)
    19h: Shitroid dies (uses song-specific instrument 25h)
    1Ah: (Empty)
    1Bh: Draygon dying cry (uses song-specific instrument 25h)
    1Ch: Crocomire spits
    1Dh: Phantoon's flame
    1Eh: Kraid's earthquake
    1Fh: 
    20h: (Empty)
    21h: Ridley whips its tail
    22h: Crocomire acid damage
    23h: Baby metroid cry 1 (uses song-specific instrument 25h)
    24h: Baby metroid cry - Ceres (uses song-specific instrument 24h)
    25h: Silence (clear speed booster / elevator sound)
    26h: Baby metroid cry 2 (uses song-specific instrument 25h)
    27h: Baby metroid cry 3 (uses song-specific instrument 25h)
    28h: Phantoon materialises attack
    29h: Phantoon's super missiled attack
    2Ah: Pause menu ambient beep
    2Bh: Resume shinespark(?) Happens when shinesparking through message box sometimes
    2Ch: Ceres door opening
    2Dh: Gaining/losing incremental health
    2Eh: Mother Brain's glass shattering (uses song-specific instrument 25h for channel 1)
    2Fh: (Empty)
}


Sound library 1 calls
{
$80:9C92 ; Queue sound 39h, max queued sounds allowed = 6
$81:917F ; Queue sound 37h, max queued sounds allowed = 6
$81:9700 ; Queue sound 37h, max queued sounds allowed = 6
$81:9715 ; Queue sound 37h, max queued sounds allowed = 6
$81:9732 ; Queue sound 37h, max queued sounds allowed = 6
$81:973D ; Queue sound 37h, max queued sounds allowed = 6
$81:9836 ; Queue sound 37h, max queued sounds allowed = 6
$81:9872 ; Queue sound 37h, max queued sounds allowed = 6
$81:987C ; Queue sound 37h, max queued sounds allowed = 6
$81:989E ; Queue sound 37h, max queued sounds allowed = 6
$81:99A7 ; Queue sound 38h, max queued sounds allowed = 6
$81:99D0 ; Queue sound 37h, max queued sounds allowed = 6
$81:99E5 ; Queue sound 37h, max queued sounds allowed = 6
$81:9B05 ; Queue sound 37h, max queued sounds allowed = 6
$81:9B9F ; Queue sound 37h, max queued sounds allowed = 6
$81:9BAA ; Queue sound 37h, max queued sounds allowed = 6
$81:9BCE ; Queue sound 37h, max queued sounds allowed = 6
$81:9BD9 ; Queue sound 37h, max queued sounds allowed = 6
$81:9C52 ; Queue sound 38h, max queued sounds allowed = 6
$81:9C6E ; Queue sound 37h, max queued sounds allowed = 6
$81:9C85 ; Queue sound 37h, max queued sounds allowed = 6
$81:9D31 ; Queue sound 37h, max queued sounds allowed = 6
$81:A1FA ; Queue sound 37h, max queued sounds allowed = 6
$81:A207 ; Queue sound 37h, max queued sounds allowed = 6
$81:A21C ; Queue sound 2Ah, max queued sounds allowed = 6
$81:A2B5 ; Queue sound 37h, max queued sounds allowed = 6
$81:A2D4 ; Queue sound 37h, max queued sounds allowed = 6
$81:A2EE ; Queue sound 37h, max queued sounds allowed = 6
$81:A834 ; Queue sound 38h, max queued sounds allowed = 6
$81:A866 ; Queue sound 37h, max queued sounds allowed = 6
$81:A891 ; Queue sound 37h, max queued sounds allowed = 6
$81:ABA2 ; Queue sound 3Bh, max queued sounds allowed = 6
$81:ADAE ; Queue sound 38h, max queued sounds allowed = 6
$81:ADDB ; Queue sound 3Ch, max queued sounds allowed = 6
$81:ADE3 ; Queue sound 38h, max queued sounds allowed = 6
$81:B001 ; Queue sound 3Ch, max queued sounds allowed = 6
$82:83FD ; Queue sound 2,   max queued sounds allowed = 15
$82:847C ; Queue sound 2,   max queued sounds allowed = 15
$82:8519 ; Queue sound 2,   max queued sounds allowed = 15
$82:92AA ; Queue sound 36h, max queued sounds allowed = 6
$82:A567 ; Queue sound 38h, max queued sounds allowed = 6
$82:A5C5 ; Queue sound 38h, max queued sounds allowed = 6
$82:ACE1 ; Queue sound 37h, max queued sounds allowed = 6
$82:ACFA ; Queue sound 37h, max queued sounds allowed = 6
$82:AE9D ; Queue sound 37h, max queued sounds allowed = 6
$82:B44D ; Queue sound 37h, max queued sounds allowed = 6
$82:B483 ; Queue sound 37h, max queued sounds allowed = 6
$82:B4A5 ; Queue sound 37h, max queued sounds allowed = 6
$82:B4D1 ; Queue sound 37h, max queued sounds allowed = 6
$82:B4FF ; Queue sound 37h, max queued sounds allowed = 6
$82:B52D ; Queue sound 37h, max queued sounds allowed = 6
$82:B556 ; Queue sound 37h, max queued sounds allowed = 6
$82:B577 ; Queue sound 38h, max queued sounds allowed = 6
$82:BE1C ; Queue sound 2,   max queued sounds allowed = 6
$82:BE4E ; Queue sound 41h, max queued sounds allowed = 6
$82:DD45 ; Queue sound 2,   max queued sounds allowed = 15
$82:ED4F ; Queue sound 37h, max queued sounds allowed = 6
$82:ED6A ; Queue sound 37h, max queued sounds allowed = 6
$82:ED91 ; Queue sound 38h, max queued sounds allowed = 6
$82:F02E ; Queue sound 37h, max queued sounds allowed = 6
$82:F049 ; Queue sound 37h, max queued sounds allowed = 6
$82:F066 ; Queue sound 38h, max queued sounds allowed = 6
$82:F07B ; Queue sound 38h, max queued sounds allowed = 6
$82:F163 ; Queue sound 37h, max queued sounds allowed = 6
$82:F189 ; Queue sound 37h, max queued sounds allowed = 6
$82:F1B8 ; Queue sound 38h, max queued sounds allowed = 6
$84:826B ; Queue sound 32h, max queued sounds allowed = 15
$84:828B ; Queue sound 30h, max queued sounds allowed = 15
$85:811E ; Queue sound 2Eh, max queued sounds allowed = 6
$85:84EF ; Queue sound 37h, max queued sounds allowed = 6
$88:8A67 ; Queue sound Ah,  max queued sounds allowed = 6
$88:8AAC ; Queue sound 1,   max queued sounds allowed = 15
$88:A304 ; Queue sound 1,   max queued sounds allowed = 6
$8B:F64A ; Queue sound 22h, max queued sounds allowed = 15
$90:80B1 ; Queue sound 30h, max queued sounds allowed = 6
$90:8455 ; Queue sound 31h, max queued sounds allowed = 6
$90:8466 ; Queue sound 3Eh, max queued sounds allowed = 6
$90:847A ; Queue sound 33h, max queued sounds allowed = 6
$90:A4F1 ; Queue sound 2Fh, max queued sounds allowed = 6
$90:B8A4 ; Queue sound 2,   max queued sounds allowed = 15
$90:B8E1 ; Queue sound [$C2A7 + ([projectile type] & Fh) * 2], max queued sounds = 15
$90:B99B ; Queue sound 2, max queued sounds allowed = 15
$90:B9DB ; Queue sound [$C2A7 + ([projectile type] & Fh) * 2], max queued sounds = 15
$90:BB43 ; Queue sound 8, max queued sounds allowed = 9
$90:BD07 ; Queue sound 1Fh, max queued sounds = 15
$90:BEEF ; Queue sound [$C2BF + ([HUD item index] & Fh) * 2], max queued sounds allowed = 6
$90:BFBA ; Queue sound 2,   max queued sounds allowed = 9
$90:C0E1 ; Queue sound 2,   max queued sounds allowed = 9
$90:C118 ; Queue sound 2,   max queued sounds allowed = 9
$90:CD85 ; Queue sound 28h, max queued sounds allowed = 6
$90:CE0E ; Queue sound 23h, max queued sounds allowed = 6
$90:CE82 ; Queue sound 25h, max queued sounds allowed = 6
$90:CF03 ; Queue sound 27h, max queued sounds allowed = 6
$90:CF14 ; Queue sound 24h, max queued sounds allowed = 6
$90:CF6C ; Queue sound 24h, max queued sounds allowed = 6
$90:D05B ; Queue sound 2,   max queued sounds allowed = 9
$90:D339 ; Queue sound 35h, max queued sounds allowed = 5
$90:DA1A ; Queue sound 29h, max queued sounds allowed = 6
$90:DAF8 ; Queue sound 28h, max queued sounds allowed = 6
$90:DC23 ; Queue sound 26h, max queued sounds allowed = 6
$90:DE53 ; Queue sound 41h, max queued sounds allowed = 5
$90:F1C1 ; Queue sound 2,   max queued sounds allowed = 15
$90:F349 ; Queue sound 6,   max queued sounds allowed = 6
$90:F376 ; Queue sound 31h, max queued sounds allowed = 6
$90:F37F ; Queue sound 3Eh, max queued sounds allowed = 6
$90:F388 ; Queue sound 33h, max queued sounds allowed = 6
$90:F459 ; Queue sound 31h, max queued sounds allowed = 9
$90:F462 ; Queue sound 3Eh, max queued sounds allowed = 9
$90:F46B ; Queue sound 33h, max queued sounds allowed = 9
$90:F484 ; Queue sound 32h, max queued sounds allowed = 15
$90:F49C ; Queue sound 2,   max queued sounds allowed = 15
$90:F4CA ; Queue sound 41h, max queued sounds allowed = 9
$90:F529 ; Queue sound 41h, max queued sounds allowed = 9
$90:F58A ; Queue sound 41h, max queued sounds allowed = 9
$90:F5CB ; Queue sound 32h, max queued sounds allowed = 15
$91:D54D ; Queue sound 32h, max queued sounds allowed = 9
$91:D625 ; Queue sound 32h, max queued sounds allowed = 9
$91:D8D0 ; Queue sound 35h, max queued sounds allowed = 6
$91:D947 ; Queue sound 6,   max queued sounds allowed = 9
$91:E697 ; Queue sound 6,   max queued sounds allowed = 6
$91:E6C7 ; Queue sound 41h, max queued sounds allowed = 6
$91:EF34 ; Queue sound 9,   max queued sounds allowed = 6
$91:F06B ; Queue sound 32h, max queued sounds allowed = 6
$91:F074 ; Queue sound 34h, max queued sounds allowed = 6
$91:F6CE ; Queue sound 31h, max queued sounds allowed = 6
$91:F6D7 ; Queue sound 3Eh, max queued sounds allowed = 6
$91:F72F ; Queue sound 31h, max queued sounds allowed = 6
$91:F738 ; Queue sound 3Eh, max queued sounds allowed = 6
$91:F752 ; Queue sound 33h, max queued sounds allowed = 6
$9B:B3BC ; Queue sound 32h, max queued sounds allowed = 6
$9B:B8AD ; Queue sound 7,   max queued sounds allowed = 6
$9B:C696 ; Queue sound 5,   max queued sounds allowed = 1
$9B:C73E ; Queue sound 6,   max queued sounds allowed = 6
$9B:C859 ; Queue sound 7,   max queued sounds allowed = 15
$9B:C8C8 ; Queue sound 7,   max queued sounds allowed = 15
$9B:C9D1 ; Queue sound 7,   max queued sounds allowed = 15
$9B:CB8E ; Queue sound 7,   max queued sounds allowed = 15
$A0:9A55 ; Queue sound 3Dh, max queued sounds allowed = 6
$A0:A7CE ; Queue sound 3Dh, max queued sounds allowed = 3
$A0:A8DB ; Queue sound 3Dh, max queued sounds allowed = 3
$A3:955F ; Queue sound 32h, max queued sounds allowed = 6
$A3:BC3E ; Queue sound [$C2A7 + ([projectile type] & Fh) * 2], max queued sounds allowed = 6
$A6:E13F ; Queue sound 3Dh, max queued sounds allowed = 6
$A7:B0EE ; Queue sound 3Dh, max queued sounds allowed = 6
$A9:876C ; Queue sound 40h, max queued sounds allowed = 6
$A9:BAA5 ; Queue sound 2,   max queued sounds allowed = 6
$A9:BB3C ; Queue sound 40h, max queued sounds allowed = 6
$A9:BEE3 ; Queue sound 2,   max queued sounds allowed = 6
$A9:C8D6 ; Queue sound 40h, max queued sounds allowed = 6
}

Sound library 2 calls
{
$82:8404 ; Queue sound 71h, max queued sounds allowed = 15
$82:8483 ; Queue sound 71h, max queued sounds allowed = 15
$82:8520 ; Queue sound 71h, max queued sounds allowed = 15
$82:BE23 ; Queue sound 71h, max queued sounds allowed = 6
$82:DD4C ; Queue sound 71h, max queued sounds allowed = 15
$82:E272 ; Queue sound 71h, max queued sounds allowed = 15
$84:BD48 ; Queue sound 57h, max queued sounds allowed = 6
$84:BD77 ; Queue sound 57h, max queued sounds allowed = 6
$84:BDAA ; Queue sound 57h, max queued sounds allowed = 6
$84:BDCC ; Queue sound 57h, max queued sounds allowed = 6
$84:C561 ; Queue sound 57h, max queued sounds allowed = 6
$84:C580 ; Queue sound 57h, max queued sounds allowed = 6
$84:C5A4 ; Queue sound 57h, max queued sounds allowed = 6
$84:C5C8 ; Queue sound 57h, max queued sounds allowed = 6
$84:C5E7 ; Queue sound 57h, max queued sounds allowed = 6
$84:C605 ; Queue sound 57h, max queued sounds allowed = 6
$84:D788 ; Queue sound 4Ch, max queued sounds allowed = 6
$86:91A2 ; Queue sound 29h, max queued sounds allowed = 6
$86:91BE ; Queue sound 25h, max queued sounds allowed = 6
$86:93C5 ; Queue sound 2Bh, max queued sounds allowed = 6
$86:943D ; Queue sound 2Bh, max queued sounds allowed = 6
$86:972F ; Queue sound 6Dh, max queued sounds allowed = 6
$86:A049 ; Queue sound 67h, max queued sounds allowed = 6
$86:D0C3 ; Queue sound 6Ch, max queued sounds allowed = 6
$86:D3B9 ; Queue sound 67h, max queued sounds allowed = 6
$86:EB99 ; Queue sound 24h, max queued sounds allowed = 6
$86:EE90 ; Queue sound 9,   max queued sounds allowed = 1
$86:EE9C ; Queue sound 24h, max queued sounds allowed = 1
$86:EEA8 ; Queue sound Bh,  max queued sounds allowed = 1
$86:F0C5 ; Queue sound 1,   max queued sounds allowed = 1
$86:F0D4 ; Queue sound 2,   max queued sounds allowed = 1
$86:F0E3 ; Queue sound 5,   max queued sounds allowed = 1
$86:F0F2 ; Queue sound 3,   max queued sounds allowed = 1
$86:F101 ; Queue sound 4,   max queued sounds allowed = 1
$88:B23B ; Queue sound [$B256 + [X]], max queued sounds allowed = 6
$88:B446 ; Queue sound [$B3A1 + [random number] % 8], max queued sounds allowed = 6
$8B:A952 ; Queue sound Bh, max queued sounds allowed = 6
$8F:C1BE ; Queue sound [$C1DE + [X]], max queued sounds allowed = 6
$90:8092 ; Queue sound Eh,  max queued sounds allowed = 6
$90:80E2 ; Queue sound Dh,  max queued sounds allowed = 6
$90:8187 ; Queue sound [A], max queued sounds allowed = 6
$90:82BF ; Queue sound 10h, max queued sounds allowed = 6
$90:C14D ; Queue sound 8,   max queued sounds allowed = 6
$91:D593 ; Queue sound 56h, max queued sounds allowed = 6
$91:D66B ; Queue sound 56h, max queued sounds allowed = 6
$93:80F2 ; Queue sound Ch,  max queued sounds allowed = 6
$93:8100 ; Queue sound 7,   max queued sounds allowed = 6
$A0:A55D ; Queue sound Bh,  max queued sounds allowed = 1
$A0:A843 ; Queue enemy cry, max queued sounds allowed = 3
$A2:88D3 ; Queue sound Eh,  max queued sounds allowed = 6
$A2:907E ; Queue sound 1Bh, max queued sounds allowed = 6
$A2:94D4 ; Queue sound 3Ah, max queued sounds allowed = 6
$A2:9F2F ; Queue sound 34h, max queued sounds allowed = 6
$A2:A766 ; Queue sound 4Dh, max queued sounds allowed = 6
$A2:BC2D ; Queue sound 65h, max queued sounds allowed = 6
$A2:BF39 ; Queue sound Dh,  max queued sounds allowed = 6
$A2:C35C ; Queue sound 65h, max queued sounds allowed = 6
$A2:C828 ; Queue sound 64h, max queued sounds allowed = 6
$A2:CB70 ; Queue sound Eh,  max queued sounds allowed = 6
$A2:CFDA ; Queue sound 63h, max queued sounds allowed = 6
$A2:D3BB ; Queue sound 57h, max queued sounds allowed = 6
$A2:E712 ; Queue sound 61h, max queued sounds allowed = 6
$A3:89EE ; Queue sound 5Bh, max queued sounds allowed = 6
$A3:8A57 ; Queue sound 5Ch, max queued sounds allowed = 6
$A3:BA7D ; Queue sound 56h, max queued sounds allowed = 6
$A3:C711 ; Queue sound 5Bh, max queued sounds allowed = 6
$A3:C77A ; Queue sound 5Ch, max queued sounds allowed = 6
$A3:D22C ; Queue sound 70h, max queued sounds allowed = 3
$A3:D3E6 ; Queue sound 70h, max queued sounds allowed = 3
$A3:D49A ; Queue sound 70h, max queued sounds allowed = 3
$A3:DC75 ; Queue sound 57h, max queued sounds allowed = 6
$A3:EAAA ; Queue sound 50h, max queued sounds allowed = 6
$A3:EABF ; Queue sound [$EAD6 + [random number] % 8], max queued sounds allowed = 6
$A3:F03D ; Queue sound 5Ah, max queued sounds allowed = 6
$A4:88CD ; Queue sound 54h, max queued sounds allowed = 6
$A4:8A25 ; Queue sound 3Bh, max queued sounds allowed = 6
$A4:8D00 ; Queue sound 74h, max queued sounds allowed = 6
$A4:8D0C ; Queue sound 25h, max queued sounds allowed = 6
$A4:8D18 ; Queue sound 75h, max queued sounds allowed = 6
$A4:8E94 ; Queue sound 3Bh, max queued sounds allowed = 6
$A4:8FD8 ; Queue sound 76h, max queued sounds allowed = 6
$A4:9500 ; Queue sound 77h, max queued sounds allowed = 6
$A4:950B ; Queue sound 2Dh, max queued sounds allowed = 6
$A4:98AF ; Queue sound 2Bh, max queued sounds allowed = 6
$A4:9985 ; Queue sound 29h, max queued sounds allowed = 6
$A4:99C3 ; Queue sound 30h, max queued sounds allowed = 6
$A4:9A81 ; Queue sound 25h, max queued sounds allowed = 6
$A5:E9AA ; Queue sound 29h, max queued sounds allowed = 6
$A5:E9EE ; Queue sound 25h, max queued sounds allowed = 6
$A6:88AC ; Queue sound 42h, max queued sounds allowed = 6
$A6:88D8 ; Queue sound 43h, max queued sounds allowed = 6
$A6:899E ; Queue sound 42h, max queued sounds allowed = 6
$A6:89B9 ; Queue sound 43h, max queued sounds allowed = 6
$A6:8C1B ; Queue sound 1Bh, max queued sounds allowed = 6
$A6:8DB4 ; Queue sound 61h, max queued sounds allowed = 6
$A6:994B ; Queue sound 5Eh, max queued sounds allowed = 6
$A6:9B21 ; Queue sound 3Fh, max queued sounds allowed = 6
$A6:9BBF ; Queue sound 16h, max queued sounds allowed = 6
$A6:AAD0 ; Queue sound 4Eh, max queued sounds allowed = 6
$A6:B74F ; Queue sound 76h, max queued sounds allowed = 6
$A6:C374 ; Queue sound 45h, max queued sounds allowed = 3
$A6:C669 ; Queue sound 24h, max queued sounds allowed = 3
$A6:E4C5 ; Queue sound 59h, max queued sounds allowed = 6
$A6:F83B ; Queue sound 25h, max queued sounds allowed = 6
$A7:AF98 ; Queue sound 2Dh, max queued sounds allowed = 6
$A7:AFA3 ; Queue sound 2Eh, max queued sounds allowed = 6
$A7:B330 ; Queue sound [A], max queued sounds allowed = 6
$A7:B653 ; Queue sound 76h, max queued sounds allowed = 6
$A7:CEF6 ; Queue sound [$CDED + [$7E:9032] * 2], max queued sounds allowed = 6
$A7:D9E1 ; Queue sound 24h, max queued sounds allowed = 6
$A7:D9EA ; Queue sound 2Bh, max queued sounds allowed = 6
$A7:DA81 ; Queue sound 7Eh, max queued sounds allowed = 6
$A7:DDBC ; Queue sound 73h, max queued sounds allowed = 6
$A7:DDDF ; Queue sound 73h, max queued sounds allowed = 6
$A7:E9CF ; Queue sound 35h, max queued sounds allowed = 15
$A7:EA32 ; Queue sound 33h, max queued sounds allowed = 6
$A7:EB91 ; Queue sound 32h, max queued sounds allowed = 6
$A7:EE39 ; Queue sound 33h, max queued sounds allowed = 6
$A7:EE8F ; Queue sound 33h, max queued sounds allowed = 6
$A7:F5B7 ; Queue sound 1Dh, max queued sounds allowed = 15
$A7:F670 ; Queue sound 71h, max queued sounds allowed = 15
$A7:F6C1 ; Queue sound 3Dh, max queued sounds allowed = 6
$A7:F6E8 ; Queue sound 39h, max queued sounds allowed = 6
$A7:F7CD ; Queue sound 3Bh, max queued sounds allowed = 6
$A7:F895 ; Queue sound 3Ch, max queued sounds allowed = 6
$A8:8794 ; Queue sound 5Eh, max queued sounds allowed = 6
$A8:9138 ; Queue sound 17h, max queued sounds allowed = 6
$A8:9177 ; Queue sound 71h, max queued sounds allowed = 6
$A8:962A ; Queue sound 1Fh, max queued sounds allowed = 9
$A8:A141 ; Queue sound 2Fh, max queued sounds allowed = 6
$A8:D0BB ; Queue sound 68h, max queued sounds allowed = 6
$A8:DDBF ; Queue sound 5Eh, max queued sounds allowed = 6
$A8:DF2D ; Queue sound 3Fh, max queued sounds allowed = 6
$A8:F6DF ; Queue sound 4Ch, max queued sounds allowed = 6
$A9:8924 ; Queue sound 24h, max queued sounds allowed = 3
$A9:8BC6 ; Queue sound 24h, max queued sounds allowed = 3
$A9:8F78 ; Queue sound 29h, max queued sounds allowed = 3
$A9:9AF4 ; Queue sound 63h, max queued sounds allowed = 6
$A9:9E09 ; Queue sound 6Fh, max queued sounds allowed = 6
$A9:9F9B ; Queue sound 7Fh, max queued sounds allowed = 6
$A9:B252 ; Queue sound 10h, max queued sounds allowed = 3
$A9:B38E ; Queue sound 24h, max queued sounds allowed = 3
$A9:B52E ; Queue sound 6Eh, max queued sounds allowed = 6
$A9:B947 ; Queue sound 71h, max queued sounds allowed = 6
$A9:BCA1 ; Queue sound 24h, max queued sounds allowed = 6
$A9:BE10 ; Queue sound 71h, max queued sounds allowed = 6
$A9:C7C7 ; Queue sound 72h, max queued sounds allowed = 6
$A9:C9DD ; Queue sound 52h, max queued sounds allowed = 6
$A9:CB16 ; Queue sound 72h, max queued sounds allowed = 6
$A9:D5E4 ; Queue sound 10h, max queued sounds allowed = 6
$A9:DC3A ; Queue sound 10h, max queued sounds allowed = 3
$A9:F2DC ; Queue sound 7Dh, max queued sounds allowed = 6
$A9:F363 ; Queue sound 52h, max queued sounds allowed = 6
$A9:F782 ; Queue sound 78h, max queued sounds allowed = 6
$A9:F99C ; Queue sound 52h, max queued sounds allowed = 6
$AA:C613 ; Queue sound 27h, max queued sounds allowed = 6
$AA:C61B ; Queue sound 4Bh, max queued sounds allowed = 6
$AA:D392 ; Queue sound 34h, max queued sounds allowed = 6
$AA:D39A ; Queue sound 67h, max queued sounds allowed = 6
$AA:D3A2 ; Queue sound 48h, max queued sounds allowed = 6
$AA:E582 ; Queue sound 1Ch, max queued sounds allowed = 6
$AA:E58A ; Queue sound 4Bh, max queued sounds allowed = 6
$AD:F417 ; Queue sound 25h, max queued sounds allowed = 6
$B2:889B ; Queue sound 66h, max queued sounds allowed = 6
$B2:EF98 ; Queue sound 66h, max queued sounds allowed = 6
$B3:9575 ; Queue sound 7Ch, max queued sounds allowed = 6
$B3:957E ; Queue sound 24h, max queued sounds allowed = 6
}

Sound library 3 calls
{
$81:8D24 ; Queue sound 1,   max queued sounds allowed = 6
$81:9463 ; Queue sound 1,   max queued sounds allowed = 6
$82:840B ; Queue sound 1,   max queued sounds allowed = 15
$82:848A ; Queue sound 1,   max queued sounds allowed = 15
$82:8527 ; Queue sound 1,   max queued sounds allowed = 15
$82:A957 ; Queue sound 2Ah, max queued sounds allowed = 6
$82:AF7D ; Queue sound 2Dh, max queued sounds allowed = 6
$82:BC0F ; Queue sound 23h, max queued sounds allowed = 6
$82:BC18 ; Queue sound 26h, max queued sounds allowed = 6
$82:BC21 ; Queue sound 27h, max queued sounds allowed = 6
$82:BE2A ; Queue sound 1,   max queued sounds allowed = 6
$82:BE3F ; Queue sound 2Bh, max queued sounds allowed = 6
$82:DC41 ; Queue sound 2Dh, max queued sounds allowed = 3
$82:DD53 ; Queue sound 1,   max queued sounds allowed = 15
$84:D30E ; Queue sound 2Eh, max queued sounds allowed = 15
$86:9AA3 ; Queue sound 1Dh, max queued sounds allowed = 6
$86:9AD5 ; Queue sound 1Dh, max queued sounds allowed = 6
$86:9D50 ; Queue sound 1Eh, max queued sounds allowed = 6
$86:C42A ; Queue sound 13h, max queued sounds allowed = 6
$86:C54B ; Queue sound 13h, max queued sounds allowed = 6
$86:C74C ; Queue sound 13h, max queued sounds allowed = 6
$8B:88B2 ; Queue sound Dh,  max queued sounds allowed = 6
$8B:A25E ; Queue sound 23h, max queued sounds allowed = 6
$8B:A266 ; Queue sound 26h, max queued sounds allowed = 6
$8B:A26E ; Queue sound 27h, max queued sounds allowed = 6
$8B:BAA2 ; Queue sound 23h, max queued sounds allowed = 6
$8B:BB4D ; Queue sound 23h, max queued sounds allowed = 6
$8D:E3A7 ; Queue sound 2Dh, max queued sounds allowed = 6
$90:81F3 ; Queue sound 2Dh, max queued sounds allowed = 3
$90:8235 ; Queue sound 2Dh, max queued sounds allowed = 3
$90:85A6 ; Queue sound 3,   max queued sounds allowed = 6
$90:A41E ; Queue sound 6,   max queued sounds allowed = 6
$90:D0A6 ; Queue sound Fh,  max queued sounds allowed = 9
$90:D340 ; Queue sound 10h, max queued sounds allowed = 6
$90:D6AA ; Queue sound 1,   max queued sounds allowed = 15
$90:EA92 ; Queue sound 1,   max queued sounds allowed = 6
$90:EAA0 ; Queue sound 2,   max queued sounds allowed = 6
$90:F33C ; Queue sound 2,   max queued sounds allowed = 6
$90:F5A4 ; Queue sound 25h, max queued sounds allowed = 15
$91:DAD3 ; Queue sound Ch,  max queued sounds allowed = 9
$91:E6DA ; Queue sound 2,   max queued sounds allowed = 6
$91:F08F ; Queue sound 5,   max queued sounds allowed = 6
$91:F09D ; Queue sound 4,   max queued sounds allowed = 6
$91:F2EB ; Queue sound 5,   max queued sounds allowed = 6
$91:FAF6 ; Queue sound Fh,  max queued sounds allowed = 9
$A0:A7E0 ; Queue sound Ah,  max queued sounds allowed = 3
$A0:A8AE ; Queue sound Ah,  max queued sounds allowed = 3
$A2:A93D ; Queue sound 14h, max queued sounds allowed = 6
$A2:A982 ; Queue sound 15h, max queued sounds allowed = 6
$A2:AA4A ; Queue sound 14h, max queued sounds allowed = 6
$A2:AA8F ; Queue sound 15h, max queued sounds allowed = 6
$A2:AB5B ; Queue sound 14h, max queued sounds allowed = 6
$A2:ABA0 ; Queue sound 15h, max queued sounds allowed = 6
$A2:EF63 ; Queue sound Eh,  max queued sounds allowed = 6
$A3:9558 ; Queue sound Bh,  max queued sounds allowed = 6
$A3:9601 ; Queue sound 25h, max queued sounds allowed = 6
$A3:A986 ; Queue sound 2Dh, max queued sounds allowed = 6
$A3:EE78 ; Queue sound 2Dh, max queued sounds allowed = 6
$A3:F00B ; Queue sound Ah,  max queued sounds allowed = 6
$A4:87A1 ; Queue sound 1Ch, max queued sounds allowed = 6
$A4:8D38 ; Queue sound 22h, max queued sounds allowed = 6
$A6:BFDA ; Queue sound 24h, max queued sounds allowed = 6
$A6:C37D ; Queue sound Dh,  max queued sounds allowed = 3
$A6:D2CA ; Queue sound 21h, max queued sounds allowed = 6
$A6:F6C0 ; Queue sound 2Ch, max queued sounds allowed = 6
$A6:FDB0 ; Queue sound 9,   max queued sounds allowed = 6
$A7:B896 ; Queue sound 1Fh, max queued sounds allowed = 6
$A7:BC1E ; Queue sound 1Eh, max queued sounds allowed = 6
$A7:C52B ; Queue sound 1Eh, max queued sounds allowed = 6
$A7:CF6B ; Queue sound 1Dh, max queued sounds allowed = 6
$A7:CF86 ; Queue sound 28h, max queued sounds allowed = 6
$A7:D4BD ; Queue sound 1Dh, max queued sounds allowed = 6
$A7:D8E9 ; Queue sound 29h, max queued sounds allowed = 6
$A8:BE8F ; Queue sound 2Dh, max queued sounds allowed = 6
$A9:95B1 ; Typo. Should be JSL for queue sound 16h, max queued sounds allowed = 6
$A9:B094 ; Queue sound 13h, max queued sounds allowed = 3
$A9:C55A ; Queue sound 2Dh, max queued sounds allowed = 3
$A9:CC02 ; Queue sound 19h, max queued sounds allowed = 6
$A9:CDF7 ; Queue sound 13h, max queued sounds allowed = 3
}
