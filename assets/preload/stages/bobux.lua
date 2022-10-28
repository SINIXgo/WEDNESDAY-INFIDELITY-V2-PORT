local IT = 0
local Cam1 = 0.9
local Cam2 = 0.65

function onCreate()

	makeLuaSprite('Destruido', 'backgrounds/Destruido', -850, -300);
	setScrollFactor('Destruido', 1, 1);
	scaleLuaSprite('Destruido', 1.1, 1.1);
	addLuaSprite('Destruido', false);

makeLuaSprite('bartop','',0,-30)
makeGraphic('bartop',1280,100,'000000')
addLuaSprite('bartop',false)
setObjectCamera('bartop','hud')
setScrollFactor('bartop',0,0)

makeLuaSprite('barbot','',0,650)
makeGraphic('barbot',1280,100,'000000')
addLuaSprite('barbot',false)
setScrollFactor('barbot',0,0)
setObjectCamera('barbot','hud')

if songName == 'Unknown Suffering' then
setProperty('defaultCamZoom', 0.55) 
IT = 250
elseif songName == 'Last Day' then
setProperty('defaultCamZoom', 0.65) 
doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')
setObjectCamera('bartop','other')
setObjectCamera('barbot','other')
Cam1 = 0.9
Cam2 = 0.65
elseif songName == 'Battered' then
Cam1 = 0.9
Cam2 = 0.6
setProperty('bartop.alpha', 0)
setProperty('barbot.alpha', 0)
end
end

function onUpdate()
    if mustHitSection == true then
		setProperty('defaultCamZoom', Cam1)
	else
		setProperty('defaultCamZoom', Cam2)
	end
end

function onStepHit()
if songName == 'Last Day' then
if curStep == 128 then
setObjectCamera('bartop','hud')
setObjectCamera('barbot','hud')
end
end
end

function opponentNoteHit()
if songName == 'Unknown Suffering' or songName == 'Battered' then
if curStep >= IT then
cameraShake('camOther', '0.004', '0.10')	
triggerEvent('Screen Shake', '0.10, 0.007', '0.10, 0.007')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.01);
end
end
end
end