function onCreate()

  makeLuaSprite('BG_CHEDDER', 'backgrounds/BG_CHEDDER', -658, -280);
  setScrollFactor('BG_CHEDDER', 1, 1);
  scaleLuaSprite('BG_CHEDDER', 1, 1);
  addLuaSprite('BG_CHEDDER', false);

if songName == 'Cravings' then
  makeLuaSprite('F1', 'backgrounds/frases/F1', 250, 100);
  setScrollFactor('F1', 1, 1);
  scaleLuaSprite('F1', 1, 1);
  addLuaSprite('F1', false);
  setObjectCamera('F1', 'other');

  makeLuaSprite('F2', 'backgrounds/frases/F2', 220, 250);
  setScrollFactor('F2', 1, 1);
  scaleLuaSprite('F2', 1, 1);
  addLuaSprite('F2', false);
  setObjectCamera('F2', 'other');

  makeLuaSprite('F3', 'backgrounds/frases/F3', 450, 250);
  setScrollFactor('F3', 1, 1);
  scaleLuaSprite('F3', 1, 1);
  addLuaSprite('F3', false);
  setObjectCamera('F3', 'other');

  makeLuaSprite('F4', 'backgrounds/frases/F4', 200, 400);
  setScrollFactor('F4', 1, 1);
  scaleLuaSprite('F4', 1, 1);
  addLuaSprite('F4', false);
  setObjectCamera('F4', 'other');
end

if songName == 'Hunger Pangs' then
  makeLuaSprite('F0', 'backgrounds/frases/F5', 250, 20);
  setScrollFactor('F0', 1, 1);
  scaleLuaSprite('F0', 1, 1);
  addLuaSprite('F0', false);
  setObjectCamera('F0', 'other');

  makeLuaSprite('F1', 'backgrounds/frases/F1', 250, 100+75);
  setScrollFactor('F1', 1, 1);
  scaleLuaSprite('F1', 1, 1);
  addLuaSprite('F1', false);
  setObjectCamera('F1', 'other');

  makeLuaSprite('F2', 'backgrounds/frases/F2', 270, 250+75);
  setScrollFactor('F2', 1, 1);
  scaleLuaSprite('F2', 1, 1);
  addLuaSprite('F2', false);
  setObjectCamera('F2', 'other');

  makeLuaSprite('F3', 'backgrounds/frases/F3', 450, 250+75);
  setScrollFactor('F3', 1, 1);
  scaleLuaSprite('F3', 1, 1);
  addLuaSprite('F3', false);
  setObjectCamera('F3', 'other');

  makeLuaSprite('F5', 'backgrounds/frases/F5', 250, 400+75);
  setScrollFactor('F5', 1, 1);
  scaleLuaSprite('F5', 1, 1);
  addLuaSprite('F5', false);
  setObjectCamera('F5', 'other');
end

makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');

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

setProperty('F0.visible', false);  
setProperty('F1.visible', false);  
setProperty('F2.visible', false);  
setProperty('F3.visible', false);  
setProperty('F4.visible', false);  
setProperty('F5.visible', false);  

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
if name == 'Fade Cameras' then
doTweenAlpha('camHUD', 'camHUD', value1, value2, 'linear')
doTweenAlpha('camGame', 'camGame', value1, value2, 'linear')
end
if name == 'Asbel' then
if value1 == 'yo' then
doTweenAlpha('camHUD', 'camHUD', 1, 0.01, 'linear')
doTweenAlpha('camGame', 'camGame', 1, 0.01, 'linear')
end
if value1 == 'FraseAdd' then
setProperty('F'..value2..'.visible', true)
end
if value1 == 'FraseRemove' then
removeLuaSprite('F1')
removeLuaSprite('F2')
removeLuaSprite('F3')
removeLuaSprite('F4')
removeLuaSprite('F5')
removeLuaSprite('F0')
end
if value1 == 'fnp' then
doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')
doTweenAlpha('camGame', 'camGame', 0, 0.01, 'linear')
doTweenAlpha('camOther', 'camOther', 0, 0.01, 'linear')
end
end
end

function onCountdownStarted()
if songName == 'Hunger Pangs' then
noteTweenX('Pendejo0', 0, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo1', 1, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo2', 2, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo3', 3, -1000, 0.01, 'quartInOut')

noteTweenX('Pendejo24', 4, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo25', 5, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo26', 6, -1000, 0.01, 'quartInOut')
noteTweenX('Pendejo27', 7, -1000, 0.01, 'quartInOut')
end
end

function onStepHit()
if songName == 'Cravings' then
if curStep == 496 then
setProperty('Risa.alpha', 1)
objectPlayAnimation('Risa', 'Risa', true)
end
if curStep == 512 then
removeLuaSprite('BG1')
removeLuaSprite('Risa')
runTimer('st1', 0.001, 1);
runTimer('st2', 0.005, 1);
runTimer('st3', 0.0010, 1);
end
end
if songName == 'Hunger Pangs' then
if curStep == 1 then
BarsOn()
HudNo()
Cam2 = 0.9
end
if curStep == 342 then
BarsOff()
HudSi()
noteTweenX('pendejon1', 0, 90, 0.01, 'linear');
noteTweenX('pendejon2', 1, 205, 0.01, 'linear');
noteTweenX('pendejon3', 2, 315, 0.01, 'linear');
noteTweenX('pendejon4', 3, 425, 0.01, 'linear');

noteTweenX('pendejon25', 4, 730, 0.01, 'linear');
noteTweenX('pendejon26', 5, 845, 0.01, 'linear');
noteTweenX('pendejon27', 6, 955, 0.01, 'linear');
noteTweenX('pendejon28', 7, 1065, 0.01, 'linear');
Cam2 = 0.7
end
if curStep == 830 then
BarsOn()
HudNo()
doTweenAlpha('BG_CHEDDER', 'BG_CHEDDER', 0.1, 1, 'linear')
end
if curStep == 1082 then
HudSi()
BarsOff()
doTweenAlpha('BG_CHEDDER', 'BG_CHEDDER', 1, 1, 'linear')
end
end
end

function BarsOn()
doTweenY('barbot', 'barbot', 650, 1, 'linear');
doTweenY('bartop', 'bartop', -100, 1, 'linear');  
end

function HudNo()
triggerEvent('Asbel', 'hudvis', '0, 1');
doTweenAlpha('healthBarBG', 'healthBarBG', 0, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0, 1, 'linear')
end

function HudSi()
triggerEvent('Asbel', 'hudvis', '1, 1');
doTweenAlpha('healthBarBG', 'healthBarBG', 1, 1, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 1, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 1, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 1, 1, 'linear')
end

function BarsOff()
doTweenY('barbot', 'barbot', 850, 1, 'linear');
doTweenY('bartop', 'bartop', -200, 1, 'linear');  
end