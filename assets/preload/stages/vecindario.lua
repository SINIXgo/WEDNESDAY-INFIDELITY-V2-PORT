function onCreate()

	makeLuaSprite('VecindarioBG', 'backgrounds/VecindarioBG', -600, -100);
	setScrollFactor('VecindarioBG', 1, 1);
	scaleLuaSprite('VecindarioBG', 1.1, 1.1);
	addLuaSprite('VecindarioBG', false);

setProperty('defaultCamZoom', 0.75) 
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'cmp' then
triggerEvent('Camera Follow Pos', getProperty('dad.x') + 450, getProperty('dad.y') + 400)
end
if value1 == 'cmpo' then
triggerEvent('Camera Follow Pos', '', '')
end
if value1 == 'ni' then
doTweenAlpha('VecindarioBG1', 'VecindarioBG', 0, 0.75, 'linear')
end
if value1 == 'no' then
doTweenAlpha('VecindarioBG2', 'VecindarioBG', 1, 0.75, 'linear')
end
if value1 == 'hno' then
HudNo()
end
if value1 == 'hsi' then
HudSi()
end
end
end

local Cam1 = 1
local Cam2 = 0.7

function onMoveCamera(focus)
if songName == 'Sunsets' then
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end
end

function HudNo()
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

function HudSi()
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
end