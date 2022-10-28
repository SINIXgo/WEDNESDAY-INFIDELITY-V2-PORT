local Zoom = true
local Idle = {150-150, 100}
local Left = {30-150, 20}
local Down = {100-150, 140}
local Up = {30-150, -50}
local Right = {30-150, 100}

function onCreate()

makeLuaSprite('bg', 'backgrounds/leakers/bg', -1300, -290);
setScrollFactor('bg', 1.05, 1.05);
scaleLuaSprite('bg', 2, 2.05);
addLuaSprite('bg', false);

makeAnimatedLuaSprite('DEVS', 'backgrounds/leakers/DEVS', -50, 105);
addAnimationByPrefix('DEVS', 'idle', 'DEVS instancia 1', 24, true);  
objectPlayAnimation('DEVS', 'idle', true)
setScrollFactor('DEVS', 1.05, 1.05);
scaleLuaSprite('DEVS', 1.8, 1.8);
addLuaSprite('DEVS', false);

makeAnimatedLuaSprite('DEMONS', 'backgrounds/leakers/DEMONS', 150, 420);
addAnimationByPrefix('DEMONS', 'idle', 'DEMONS IDLE', 24, true);  
addAnimationByPrefix('DEMONS', 'idle2', 'DEMONS TROMPETA', 24, true);  
objectPlayAnimation('DEMONS', 'idle', true)
scaleLuaSprite('DEMONS', 2, 2);
addLuaSprite('DEMONS', false);

makeAnimatedLuaSprite('DEAD', 'characters/leakers/DEAD', defaultBoyfriendX-450, defaultBoyfriendY-80);
addAnimationByPrefix('DEAD', 'dead', 'LEAKERS BALACEADOS', 24, false);  
objectPlayAnimation('DEAD', 'dead', true)
setProperty('DEAD.alpha', 0)
scaleLuaSprite('DEAD', 2.4, 2.4);
addLuaSprite('DEAD', true);

makeAnimatedLuaSprite('oswald', 'backgrounds/leakers/oswald', 1300, 110);
addAnimationByIndices('oswald', 'Idle', 'OSWALD MANCO NO PUSO PARED instancia 1', '1', 24)
addAnimationByPrefix('oswald', 'OSWALDO', 'OSWALD MANCO NO PUSO PARED instancia 1', 24, false);  
objectPlayAnimation('oswald', 'Idle', true)
setScrollFactor('oswald', 1.05, 1.05);
scaleLuaSprite('oswald', 1.5, 1.5);
addLuaSprite('oswald', false);

makeAnimatedLuaSprite('Satan', 'characters/leakers/Satan', -200, 100);
addAnimationByPrefix('Satan', 'Idle', 'SATAN IDLE', 24, true);  
addAnimationByPrefix('Satan', 'Down', 'SATAN DOWN', 24, true);  
addAnimationByPrefix('Satan', 'Left', 'SATAN LEFT', 24, true);  
addAnimationByPrefix('Satan', 'Right', 'SATAN RIGHT', 24, true);  
addAnimationByPrefix('Satan', 'Up', 'SATAN UP', 24, true);  
addAnimationByPrefix('Satan', 'Dialogue', 'SATAN DIALOGUE 1', 24, false);  
objectPlayAnimation('Satan', 'Idle', true)
scaleLuaSprite('Satan', 2, 2);
addLuaSprite('Satan', false);

makeLuaSprite('mesa2', 'backgrounds/leakers/mesa2', 1600, 550);
setScrollFactor('mesa2', 1.05, 1.05);
scaleLuaSprite('mesa2', 4, 4);
addLuaSprite('mesa2', true);

makeLuaSprite('bartop', '' ,0, -200)
makeGraphic('bartop', 1280, 200,'000000')
addLuaSprite('bartop',false)
setObjectCamera('bartop','hud')
setScrollFactor('bartop',0,0)

makeLuaSprite('barbot', '', 0, 850)
makeGraphic('barbot', 1280, 200,'000000')
addLuaSprite('barbot',false)
setScrollFactor('barbot',0,0)
setObjectCamera('barbot','hud')

setProperty('defaultCamZoom', 0.7) 
end

function onEvent(name, value1, value2)
if name == 'Idle Diablo Leakers' then
objectPlayAnimation('DEMONS', 'idle', true)
end
if name == 'Trompeta Diablo Leakers' then
objectPlayAnimation('DEMONS', 'idle2', true)
end
if name == 'Asbel' then
if value1 == 'humans' then
objectPlayAnimation('Satan', 'Dialogue', true)
runTimer('idle', 7, 1)
end
if value1 == 's1' then
BarsOn()
end
if value1 == 's2' then
BarsOn2()
end
if value1 == 'n' then
BarsOff()
end
if value1 == 'oswaldo' then
objectPlayAnimation('oswald', 'OSWALDO', true)
end
if value1 == 'ded' then
setProperty('DEAD.alpha', 1)
setProperty('boyfriend.visible', false)
setProperty('gf.visible', false)
objectPlayAnimation('DEAD', 'dead', true)
end
end 
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Devil Sing' then
local animToPlay = '';
if noteData == 0 then
objectPlayAnimation('Satan', 'Left', true)
setProperty('Satan.x', Left[1])
setProperty('Satan.y', Left[2])
elseif noteData == 1 then
objectPlayAnimation('Satan', 'Down', true)
setProperty('Satan.x', Down[1])
setProperty('Satan.y', Down[2])
elseif noteData == 2 then
objectPlayAnimation('Satan', 'Up', true)
setProperty('Satan.x', Up[1])
setProperty('Satan.y', Up[2])
elseif noteData == 3 then
objectPlayAnimation('Satan', 'Right', true)
setProperty('Satan.x', Right[1])
setProperty('Satan.y', Right[2])
end
runTimer('idle', 0.4, 1)
end
end

function onTimerCompleted(tag)
if tag == "idle" then
objectPlayAnimation('Satan' , 'Idle')
setProperty('Satan.x', Idle[1])
setProperty('Satan.y', Idle[2])
end
end

function onSongStart()
noteTweenX('Pendejo0', 0, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo1', 1, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo2', 2, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo3', 3, -1000, 0.01, 'quartInOut')

noteTweenX('Pendejo24', 4, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo25', 5, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo26', 6, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo27', 7, -1000, 0.01, 'quartInOut')

BarsOn()
end

function BarsOn()
doTweenY('barbot', 'barbot', 650, 1, 'linear');
doTweenY('bartop', 'bartop', -100, 1, 'linear');  
triggerEvent('Asbel', 'hudvis', '0, 1');
doTweenAlpha('healthBarBG', 'healthBarBG', 0, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0, 1, 'linear')
noteTweenAlpha("A1", 0, 0, 1, "linear")
noteTweenAlpha("A2", 1, 0, 1, "linear")
noteTweenAlpha("A3", 2, 0, 1, "linear")
noteTweenAlpha("A4", 3, 0, 1, "linear")
noteTweenAlpha("A5", 4, 0, 1, "linear")
noteTweenAlpha("A6", 5, 0, 1, "linear")
noteTweenAlpha("A7", 6, 0, 1, "linear")
noteTweenAlpha("A8", 7, 0, 1, "linear")
end


function BarsOn2()
doTweenY('barbot', 'barbot', 650, 1, 'linear');
doTweenY('bartop', 'bartop', -100, 1, 'linear');  
triggerEvent('Asbel', 'hudvis', '0, 1');
doTweenAlpha('healthBarBG', 'healthBarBG', 0, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0, 1, 'linear')
noteTweenAlpha("A1", 0, 0, 1, "linear")
noteTweenAlpha("A2", 1, 0, 1, "linear")
noteTweenAlpha("A3", 2, 0, 1, "linear")
noteTweenAlpha("A4", 3, 0, 1, "linear")
end

function BarsOff()
doTweenY('barbot', 'barbot', 850, 1, 'linear');
doTweenY('bartop', 'bartop', -200, 1, 'linear');  
triggerEvent('Asbel', 'hudvis', '1, 1');
doTweenAlpha('healthBarBG', 'healthBarBG', 1, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear')
noteTweenAlpha("A1", 0, 1, 1, "linear")
noteTweenAlpha("A2", 1, 1, 1, "linear")
noteTweenAlpha("A3", 2, 1, 1, "linear")
noteTweenAlpha("A4", 3, 1, 1, "linear")
noteTweenAlpha("A5", 4, 1, 1, "linear")
noteTweenAlpha("A6", 5, 1, 1, "linear")
noteTweenAlpha("A7", 6, 1, 1, "linear")
noteTweenAlpha("A8", 7, 1, 1, "linear")
noteTweenX('pendejon1', 0, 90, 0.01, 'linear');
noteTweenX('pendejon2', 1, 205, 0.01, 'linear');
noteTweenX('pendejon3', 2, 315, 0.01, 'linear');
noteTweenX('pendejon4', 3, 425, 0.01, 'linear');
noteTweenX('pendejon25', 4, 730, 0.01, 'linear');
noteTweenX('pendejon26', 5, 845, 0.01, 'linear');
noteTweenX('pendejon27', 6, 955, 0.01, 'linear');
noteTweenX('pendejon28', 7, 1065, 0.01, 'linear');
end