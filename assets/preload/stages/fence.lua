Zoom = true

function onCreate()

  makeLuaSprite('BG_OSWALD', 'backgrounds/BG_OSWALD', -600, -300);
  setScrollFactor('BG_OSWALD', 1, 1);
  scaleLuaSprite('BG_OSWALD', 1, 1);
  addLuaSprite('BG_OSWALD', false);

makeLuaSprite('bartop', '' ,0, -200)
makeGraphic('bartop', 1280, 200,'000000')
addLuaSprite('bartop',false)
setObjectCamera('bartop','other')
setScrollFactor('bartop',0,0)

makeLuaSprite('barbot', '', 0, 850)
makeGraphic('barbot', 1280, 200,'000000')
addLuaSprite('barbot',false)
setScrollFactor('barbot',0,0)
setObjectCamera('barbot','other')

  setProperty('defaultCamZoom', 0.66) 
end

function onEvent(name, value1, value2)
	if name == 'lyrics' then
		BarsOn()
		if value1 == '' then
		BarsOff()
		end
	end
end

local Beat = 0
local Zoom1 = 0
local Zoom2 = 0

function onStepHit()
if curStep == 432 then 
setObjectCamera('bartop','hud')
setObjectCamera('barbot','hud')
Zoom1 = 0.15
Zoom2 = 0.06
end
if curStep == 944 then 
Zoom = false
Zoom1 = 0
Zoom2 = 0
noteTweenAlpha("A1", 0, 0, 1, "linear")
noteTweenAlpha("A2", 1, 0, 1, "linear")
noteTweenAlpha("A3", 2, 0, 1, "linear")
noteTweenAlpha("A4", 3, 0, 1, "linear")
noteTweenAlpha("A5", 4, 0, 1, "linear")
noteTweenAlpha("A6", 5, 0, 1, "linear")
noteTweenAlpha("A7", 6, 0, 1, "linear")
noteTweenAlpha("A8", 7, 0, 1, "linear")
doTweenAlpha('healthBarBG', 'healthBarBG', 0, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0, 1, 'linear')
end
if curStep == 1070 then 
noteTweenAlpha("A5", 4, 1, 0.5, "linear")
noteTweenAlpha("A6", 5, 1, 0.5, "linear")
noteTweenAlpha("A7", 6, 1, 0.5, "linear")
noteTweenAlpha("A8", 7, 1, 0.5, "linear")
end
if curStep == 1207 then 
noteTweenAlpha("A1", 0, 1, 0.5, "linear")
noteTweenAlpha("A2", 1, 1, 0.5, "linear")
noteTweenAlpha("A3", 2, 1, 0.5, "linear")
noteTweenAlpha("A4", 3, 1, 0.5, "linear")
noteTweenAlpha("A5", 4, 1, 0.5, "linear")
noteTweenAlpha("A6", 5, 1, 0.5, "linear")
noteTweenAlpha("A7", 6, 1, 0.5, "linear")
noteTweenAlpha("A8", 7, 1, 0.5, "linear")
doTweenAlpha('healthBarBG', 'healthBarBG', 1, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear')
Zoom = true
Zoom1 = 0.25
Zoom2 = 0.082
end
if curStep == 1975 then 
BarsOn()
Zoom1 = 0.30
Zoom2 = 0.090
end
end

function BarsOff()
doTweenY('barbot', 'barbot', 850, 0.5, 'linear');
doTweenY('bartop', 'bartop', -200, 0.5, 'linear');  
end

function BarsOn()
doTweenY('barbot', 'barbot', 640, 0.5, 'linear');
doTweenY('bartop', 'bartop', -100, 0.5, 'linear');  
end

local Cam1 = 0.8
local Cam2 = 0.7

function onMoveCamera(focus)
if Zoom then
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end
end

function opponentNoteHit()
if curStep >= 1207 then
cameraShake('camOther', '0.006', '0.11')	
triggerEvent('Screen Shake', '0.11, 0.009', '0.11, 0.009')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.01);
end
end
end

function onBeatHit()
if curBeat % 1 == 0 then
triggerEvent('Add Camera Zoom', Zoom1, Zoom2)
end
end