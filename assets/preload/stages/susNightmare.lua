local MaxMisses = 0
local Mixes = 0

function onCreate()

setProperty('scoreTxt.visible', false);

	makeLuaSprite('bg', 'backgrounds/sus/bg', -640, -340);
	setScrollFactor('bg', 1, 1);
	scaleLuaSprite('bg', 1, 1);
	addLuaSprite('bg', false);

makeAnimatedLuaSprite('leansito', 'backgrounds/sus/leansito', -354.95, 129.65);
addAnimationByPrefix('leansito', 'leansito', 'leansito', 24, false);  
scaleLuaSprite('leansito', 1, 1);
addLuaSprite('leansito', false);

makeAnimatedLuaSprite('flacu-nuggy', 'backgrounds/sus/flacu-nuggy', -354.95, 129.65);
addAnimationByPrefix('flacu-nuggy', 'flacu-nuggy', 'flacu-nuggy', 24, false);  
scaleLuaSprite('flacu-nuggy', 1, 1);
addLuaSprite('flacu-nuggy', false);

	makeLuaSprite('FB', 'backgrounds/sus/FB', -639.35, -340);
	setScrollFactor('FB', 1, 1);
	scaleLuaSprite('FB', 1, 1);
	addLuaSprite('FB', false);
	
makeAnimatedLuaSprite('gf-amogus', 'backgrounds/gf-amogus', 1100, 400);
addAnimationByPrefix('gf-amogus', 'gf-amogus', 'amongus-gf', 24, true);  
objectPlayAnimation('gf-amogus', 'gf-amogus', true)
scaleLuaSprite('gf-amogus', 1, 1);
addLuaSprite('gf-amogus', false);

setProperty('defaultCamZoom', 0.8) 
end

local Cam1 = 0.9
local Cam2 = 0.7

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

function onEvent(name,value1,value2)
if name == 'BlackLight' then
cameraFlash('other', '000000', '2')
end
end

function onBeatHit()
local Prob = math.random(1, 20)  
if curBeat % 20 == 0 and Prob <= 10 then
objectPlayAnimation('flacu-nuggy', 'flacu-nuggy', true)
elseif curBeat % 20 == 0 and Prob >= 10 then
objectPlayAnimation('leansito', 'leansito', true)
end
end 