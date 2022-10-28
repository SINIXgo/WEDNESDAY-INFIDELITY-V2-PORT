function onCreate()
makeLuaSprite('stageWhite', '', -550, -100)
makeGraphic('stageWhite', 400, 100,'FFFFFF')
addLuaSprite('stageWhite', false)
scaleLuaSprite('stageWhite', 15, 15);

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

local Cam1 = 1
local Cam2 = 0.8

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

qqq = false

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == '0' then
HudNo()
BarsOn()
noteTweenAlpha("A1", 0, 0, 0.5, "linear")
noteTweenAlpha("A2", 1, 0, 0.5, "linear")
noteTweenAlpha("A3", 2, 0, 0.5, "linear")
noteTweenAlpha("A4", 3, 0, 0.5, "linear")
noteTweenAlpha("A5", 4, 0, 0.5, "linear")
noteTweenAlpha("A6", 5, 0, 0.5, "linear")
noteTweenAlpha("A7", 6, 0, 0.5, "linear")
noteTweenAlpha("A8", 7, 0, 0.5, "linear")
end
if value1 == '1' then
doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')
doTweenAlpha('camGame', 'camGame', 0, 0.01, 'linear')
doTweenAlpha('camOther', 'camOther', 0, 0.01, 'linear')
end
if value1 == '2' then
Cam2 = 1
doTweenColor('dad', 'dad', '000000', 0.001, 'linear');
doTweenAlpha('camHUD', 'camHUD', 1, 1, 'linear')
doTweenAlpha('camGame', 'camGame', 1, 1, 'linear')
doTweenAlpha('camOther', 'camOther', 1, 1, 'linear')
end
if value1 == '3' then
BarsOff()
end
if value1 == 'die' then
doTweenColor('dad', 'dad', 'FFFFFF', 0.01, 'linear');
end
if value1 == '4' then
qqq = true
Cam2 = 0.8
noteTweenAlpha("A1", 0, 1, 0.5, "linear")
noteTweenAlpha("A2", 1, 1, 0.5, "linear")
noteTweenAlpha("A3", 2, 1, 0.5, "linear")
noteTweenAlpha("A4", 3, 1, 0.5, "linear")
noteTweenAlpha("A5", 4, 1, 0.5, "linear")
noteTweenAlpha("A6", 5, 1, 0.5, "linear")
noteTweenAlpha("A7", 6, 1, 0.5, "linear")
noteTweenAlpha("A8", 7, 1, 0.5, "linear")
HudSi()
end
end
end

function opponentNoteHit()
if qqq then
cameraShake('camOther', '0.004', '0.10')	
triggerEvent('Screen Shake', '0.10, 0.007', '0.10, 0.007')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.02);
end
end
end

function BarsOn()
doTweenY('barbot', 'barbot', 650, 0.5, 'linear');
doTweenY('bartop', 'bartop', -100, 0.5, 'linear');  
end

function HudNo()
triggerEvent('Asbel', 'hudvis', '0, 0.5');
doTweenAlpha('healthBarBG', 'healthBarBG', 0, 0.5, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 0.5, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.5, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0, 0.5, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0, 0.5, 'linear')
end

function HudSi()
triggerEvent('Asbel', 'hudvis', '1, 0.5');
doTweenAlpha('healthBarBG', 'healthBarBG', 1, 0.5, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 0.5, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 0.5, 'linear')
doTweenAlpha('iconP1', 'iconP1', 1, 0.5, 'linear')
doTweenAlpha('iconP2', 'iconP2', 1, 0.5, 'linear')
end

function BarsOff()
doTweenY('barbot', 'barbot', 850, 0.5, 'linear');
doTweenY('bartop', 'bartop', -200, 0.5, 'linear');  
end