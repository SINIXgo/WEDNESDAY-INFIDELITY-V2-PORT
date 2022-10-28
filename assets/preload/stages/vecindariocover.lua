function onCreate()

  makeLuaSprite('BG_MIKICOVER', 'backgrounds/BG_MIKICOVER', -850, -100);
  setScrollFactor('BG_MIKICOVER', 1, 1);
  scaleLuaSprite('BG_MIKICOVER', 2, 2);
  addLuaSprite('BG_MIKICOVER', false);

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

  setProperty('defaultCamZoom', 0.8) 
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'verga' then
doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')
doTweenAlpha('camGame', 'camGame', 0, 0.01, 'linear')
doTweenAlpha('camOther', 'camOther', 0, 0.01, 'linear')
end
end
end

local Cam1 = 1
local Cam2 = 0.8

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

local Beat = 0
local Zoom1 = 0
local Zoom2 = 0

function opponentNoteHit()
if curStep >= 415 then
cameraShake('camOther', '0.004', '0.10')	
triggerEvent('Screen Shake', '0.10, 0.007', '0.10, 0.007')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.01);
end
end
end

function onStepHit()
if curStep == 931 then 
BarsOn()
HudNo()
noteTweenAlpha("A1", 0, 0, 0.5, "linear")
noteTweenAlpha("A2", 1, 0, 0.5, "linear")
noteTweenAlpha("A3", 2, 0, 0.5, "linear")
noteTweenAlpha("A4", 3, 0, 0.5, "linear")
noteTweenAlpha("A5", 4, 0, 0.5, "linear")
noteTweenAlpha("A6", 5, 0, 0.5, "linear")
noteTweenAlpha("A7", 6, 0, 0.5, "linear")
noteTweenAlpha("A8", 7, 0, 0.5, "linear")
end
if curStep == 1059 then 
BarsOff()
HudSi()
noteTweenAlpha("A1", 0, 1, 0.5, "linear")
noteTweenAlpha("A2", 1, 1, 0.5, "linear")
noteTweenAlpha("A3", 2, 1, 0.5, "linear")
noteTweenAlpha("A4", 3, 1, 0.5, "linear")
noteTweenAlpha("A5", 4, 1, 0.5, "linear")
noteTweenAlpha("A6", 5, 1, 0.5, "linear")
noteTweenAlpha("A7", 6, 1, 0.5, "linear")
noteTweenAlpha("A8", 7, 1, 0.5, "linear")
end
if curStep == 1488 then 
BarsOn()
noteTweenAlpha("A1", 0, 0, 0.5, "linear")
noteTweenAlpha("A2", 1, 0, 0.5, "linear")
noteTweenAlpha("A3", 2, 0, 0.5, "linear")
noteTweenAlpha("A4", 3, 0, 0.5, "linear")
end
if curStep == 1505 then 
BarsOff()
noteTweenAlpha("A1", 0, 1, 0.01, "linear")
noteTweenAlpha("A2", 1, 1, 0.01, "linear")
noteTweenAlpha("A3", 2, 1, 0.01, "linear")
noteTweenAlpha("A4", 3, 1, 0.01, "linear")
end
if curStep >= 415 and curStep <= 931 then 
Zoom1 = 0.2
Zoom2 = 0.07
end
if curStep >= 1059 and curStep <= 1053 then 
Zoom1 = 0.15
Zoom2 = 0.06
end
if curStep >= 1504 then
Zoom1 = 0.25
Zoom2 = 0.082
end
end

function onBeatHit()
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', Zoom1, Zoom2)
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