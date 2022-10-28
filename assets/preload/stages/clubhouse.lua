function onCreate()

  makeLuaSprite('clubhouse', 'backgrounds/clubhouse', -920, -472);
  setScrollFactor('clubhouse', 1, 1);
  scaleLuaSprite('clubhouse', 1, 1);
  addLuaSprite('clubhouse', false);
  
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

  setProperty('defaultCamZoom', 0.9) 
end

function onStepHit()
if curStep == 511 then
BarsOn()
end
if curStep == 623 then
BarsOff()
end
if curStep == 1023 then
BarsOn()
end
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
end

function BarsOff()
doTweenY('barbot', 'barbot', 850, 1, 'linear');
doTweenY('bartop', 'bartop', -200, 1, 'linear')
triggerEvent('Asbel', 'hudvis', '1, 1');
doTweenAlpha('healthBarBG', 'healthBarBG', 1, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear');  
end

local Cam1 = 0.9
local Cam2 = 0.6

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end