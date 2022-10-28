function onCreate()

makeLuaSprite('sky', 'backgrounds/vesania/sky', -843.55, -1130.2);
setScrollFactor('sky', 0.5, 0.5);
scaleLuaSprite('sky', 4, 4);
addLuaSprite('sky', false);

makeLuaSprite('pillar bg', 'backgrounds/vesania/pillar bg', 0, -240);
setScrollFactor('pillar bg', 1, 1);
scaleLuaSprite('pillar bg', 1, 1);
addLuaSprite('pillar bg', false);

makeAnimatedLuaSprite('satan', 'backgrounds/vesania/satan',454.2, -363.45);
addAnimationByPrefix('satan', 'satan', 'CAGADA', 24, true);  
scaleLuaSprite('satan', 2, 2);
addLuaSprite('satan', false);

makeLuaSprite('BG', 'backgrounds/vesania/BG', -640, -340);
setScrollFactor('BG', 1, 1);
scaleLuaSprite('BG', 1, 1);
addLuaSprite('BG', false);

makeAnimatedLuaSprite('demons', 'backgrounds/vesania/demons',-208.95, -201);
addAnimationByPrefix('demons', 'demons', 'diablillos instance 1', 24, true);  
scaleLuaSprite('demons', 2, 2);
addLuaSprite('demons', false);

makeLuaSprite('Skulls', 'backgrounds/vesania/Skulls', -638, -340);
setScrollFactor('Skulls', 1, 1);
scaleLuaSprite('Skulls', 2, 2);
addLuaSprite('Skulls', false);

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

setProperty('defaultCamZoom', 1.2) 

doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')
doTweenAlpha('camGame', 'camGame', 0, 0.01, 'linear')
doTweenAlpha('camOther', 'camOther', 0, 0.01, 'linear')

end

local Cam1 = 0.9
local Cam2 = 0.65

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

function onStepHit()
if curStep == 10 then
HudNo()
noteTweenAlpha("A1", 0, 0, 0.01, "linear")
noteTweenAlpha("A2", 1, 0, 0.01, "linear")
noteTweenAlpha("A3", 2, 0, 0.01, "linear")
noteTweenAlpha("A4", 3, 0, 0.01, "linear")
noteTweenAlpha("A5", 4, 0, 0.01, "linear")
noteTweenAlpha("A6", 5, 0, 0.01, "linear")
noteTweenAlpha("A7", 6, 0, 0.01, "linear")
noteTweenAlpha("A8", 7, 0, 0.01, "linear")

end
if curStep == 70 then
Cam1 = 0.7
doTweenAlpha('camHUD', 'camHUD', 1, 5, 'linear')
doTweenAlpha('camGame', 'camGame', 1, 5, 'linear')
doTweenAlpha('camOther', 'camOther', 1, 5, 'linear')
end
if curStep == 128 then
HudSi()
noteTweenAlpha("A1", 0, 1, 0.01, "linear")
noteTweenAlpha("A2", 1, 1, 0.01, "linear")
noteTweenAlpha("A3", 2, 1, 0.01, "linear")
noteTweenAlpha("A4", 3, 1, 0.01, "linear")
noteTweenAlpha("A5", 4, 1, 0.01, "linear")
noteTweenAlpha("A6", 5, 1, 0.01, "linear")
noteTweenAlpha("A7", 6, 1, 0.01, "linear")
noteTweenAlpha("A8", 7, 1, 0.01, "linear")
end
if curStep == 528 then
BarsOn()
end
if curStep == 784 then
HudNo()
BarsOff()
end
if curStep == 1040 then
HudSi()
end
if curStep == 1301 then
doTweenAlpha('camHUD', 'camHUD', 0, 1, 'linear')
doTweenAlpha('camGame', 'camGame', 0, 1, 'linear')
doTweenAlpha('camOther', 'camOther', 0, 1, 'linear')
end
if curStep == 1408 then
BarsOn()
doTweenAlpha('camHUD', 'camHUD', 1, 1, 'linear')
doTweenAlpha('camGame', 'camGame', 1, 1, 'linear')
doTweenAlpha('camOther', 'camOther', 1, 1, 'linear')
end
if curStep == 1808 then
BarsOff()
end
if curStep == 2064 then
HudNo()
end
if curStep == 2320 then
HudSi()
end
end

function opponentNoteHit()
cameraShake('camOther', '0.004', '0.10')	
triggerEvent('Screen Shake', '0.10, 0.007', '0.10, 0.007')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.02);
end
end

function BarsOn()
doTweenY('barbot', 'barbot', 650, 0.5, 'linear');
doTweenY('bartop', 'bartop', -100, 0.5, 'linear');  
end

function HudNo()
triggerEvent('Asbel', 'hudvis', '0, 0.01');
doTweenAlpha('healthBarBG', 'healthBarBG', 0, 0.01, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 0.01, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.01, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0, 0.01, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0, 0.01, 'linear')
end

function HudSi()
triggerEvent('Asbel', 'hudvis', '1, 0.01');
doTweenAlpha('healthBarBG', 'healthBarBG', 1, 0.01, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 0.01, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.01, 'linear')
doTweenAlpha('iconP1', 'iconP1', 1, 0.01, 'linear')
doTweenAlpha('iconP2', 'iconP2', 1, 0.01, 'linear')
end

function BarsOff()
doTweenY('barbot', 'barbot', 850, 0.5, 'linear');
doTweenY('bartop', 'bartop', -200, 0.5, 'linear');  
end