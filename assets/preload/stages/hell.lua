function onCreate()

Sprite('BG1', 'backgrounds/iratus/bgintro', -608, -482, 2, 2, 'camGame', 1, 1)

Sprite('Cielo', 'backgrounds/iratus/INFERNO_SKY', -608, -482, 2, 2, 'camGame', 0.5, 0.5)

makeAnimatedLuaSprite('SKULLS', 'backgrounds/iratus/SKULLS', -506, 164);
addAnimationByPrefix('SKULLS', 'SKULLS', 'SKULLS', 24, false);  
setScrollFactor('SKULLS', 0.85, 0.9);
scaleLuaSprite('SKULLS', 2.2, 2);
addLuaSprite('SKULLS', false);

Sprite('Piso', 'backgrounds/iratus/ROCK_BG', -608, 324, 2.05, 2, 'camGame', 1, 1)

makeAnimatedLuaSprite('Risa', 'characters/Iratus/Risa', defaultOpponentX-280, defaultOpponentY-100);
addAnimationByPrefix('Risa', 'Risa', 'demon fire juju instancia ', 24, false);  
objectPlayAnimation('Risa', 'Risa', true)
scaleLuaSprite('Risa', 2, 2);
addLuaSprite('Risa', true);
setProperty('Risa.alpha', 0)

makeAnimatedLuaSprite('SATANAnim', 'backgrounds/iratus/SATAN_LAUGH_SCREEN', 0, 0);
addAnimationByPrefix('SATANAnim', 'SATANAnim', 'SATAN', 24, false);  
objectPlayAnimation('SATANAnim', 'SATANAnim', true)
scaleLuaSprite('SATANAnim', 2, 2);
addLuaSprite('SATANAnim', true);
setObjectCamera('SATANAnim', 'hud');
setProperty('SATANAnim.alpha', 0)

makeLuaSprite('bartop','',0,-30)
makeGraphic('bartop',1280,100,'000000')
addLuaSprite('bartop',false)
setObjectCamera('bartop','hud')
setScrollFactor('bartop', 0, 0)

makeLuaSprite('barbot','',0,650)
makeGraphic('barbot',1280,100,'000000')
addLuaSprite('barbot',false)
setScrollFactor('barbot', 0, 0)
setObjectCamera('barbot','hud')

setProperty('bartop.alpha', 0)
setProperty('barbot.alpha', 0)

setProperty('SKULLS.visible', false)
setProperty('Cielo.visible', false)
setProperty('Piso.visible', false)

makeLuaSprite('BS','', 0, 0)
makeGraphic('BS', screenWidth, screenHeight, '000000')
setObjectCamera('BS', 'hud')
setProperty('BS.alpha', 1)
addLuaSprite('BS', false)

setProperty('defaultCamZoom', 0.7) 
end

function onStepHit()
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

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'st1' then
setProperty('SKULLS.visible', true)
elseif tag == 'st2' then
setProperty('Cielo.visible', true)
elseif tag == 'st3' then
setProperty('Piso.visible', true)
end
end

function onBeatHit()
if curBeat % 2 == 0 then
objectPlayAnimation('SKULLS', 'SKULLS', true)
end
end 

function Sprite(objeto, imagen, xPos, yPos, escalaX, escalaY, Camara, ScrollX, ScrollY)
makeLuaSprite(objeto, imagen, xPos, yPos);
scaleLuaSprite(objeto, escalaX, escalaY);
setObjectCamera(objeto, Camara)
setScrollFactor(objeto, ScrollX, ScrollY)
addLuaSprite(objeto);
end

function opponentNoteHit()
if curStep >= 395 then
triggerEvent('Screen Shake', '0.10, 0.007', '0.10, 0.007')
cameraShake('camOther', '0.004', '0.10')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.021);
end
end
end

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'inicio' then   
removeLuaSprite('BS')
end
if value1 == 'midsongevent' then   
setProperty('SATANAnim.alpha', 1)
objectPlayAnimation('SATANAnim', 'SATANAnim', true)
end
if value1 == 'midno' then   
removeLuaSprite('SATANAnim')
end
end
end  