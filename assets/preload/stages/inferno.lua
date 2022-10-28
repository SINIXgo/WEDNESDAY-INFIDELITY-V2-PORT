function onCreate()

makeLuaSprite('SKY', 'backgrounds/hellhole/SKY', -740, -750);
setScrollFactor('SKY', 0.7, 0.7);
scaleLuaSprite('SKY', 1.3*2, 1.5*2);
addLuaSprite('SKY', false);

makeLuaSprite('Back', 'backgrounds/hellhole/Back', -740, -250);
setScrollFactor('Back', 0.75, 0.75);
scaleLuaSprite('Back', 1.3*2, 1.3*2);
addLuaSprite('Back', false);

makeLuaSprite('infernogroundp1', 'backgrounds/hellhole/infernogroundp1', -800, -450);
setScrollFactor('infernogroundp1', 1, 1);
scaleLuaSprite('infernogroundp1', 1.37, 1.4);
addLuaSprite('infernogroundp1', false);

makeLuaSprite('infernogroundp2', 'backgrounds/hellhole/infernogroundp2', 310, 558);
setScrollFactor('infernogroundp2', 1, 1);
scaleLuaSprite('infernogroundp2', 1.37, 1.4);
setProperty('infernogroundp2.alpha', 1)
addLuaSprite('infernogroundp2', false);
setObjectOrder('infernogroundp2', getObjectOrder('gfGroup'))

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

function onCountdownStarted()
setProperty('gf.visible', false) 
end	

local Cam1 = 1
local Cam2 = 0.8
local Cam3 = 0.5

function onUpdate()
    if mustHitSection == true then
		setProperty('defaultCamZoom', Cam1)
	else
		setProperty('defaultCamZoom', Cam2)
        if gfSection == true then
            setProperty('defaultCamZoom', Cam3)
        end
	end
end

local Drain = 0.0050

function opponentNoteHit(id, noteData, noteType, isSustainNote)
health = getProperty('health')
if not isSustainNote then
if getProperty('health') > 0.1 then
setProperty('health', health- Drain);
end
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'DrainChange' then
Drain = value2
end
if value1 == 'onbars' then
doTweenY('barbot', 'barbot', 650, 1, 'linear');
doTweenY('bartop', 'bartop', -100, 1, 'linear');	
end
if value1 == 'offbars' then
doTweenY('barbot', 'barbot', 850, 1, 'linear');
doTweenY('bartop', 'bartop', -200, 1, 'linear');	
end
if value1 == 'fade' then
doTweenAlpha('camGame', 'camGame', 0, 0.01, 'linear')
doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')
end
if value1 == 'fadent' then
doTweenAlpha('camGame', 'camGame', 1, 0.01, 'linear')
doTweenAlpha('camHUD', 'camHUD', 1, 0.01, 'linear')
end
if value1 == 'fadefinal' then
setObjectCamera('bartop','other')
setObjectCamera('barbot','other')
doTweenAlpha('camHUD', 'camHUD', 0, 1, 'linear')
end
end
if name == 'Play Animation' then
if value1 == 'spawn' then
setProperty('gf.visible', true) 
end
if value1 == 'adios' then
runTimer('eee', 0.65, 1);

end
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'eee' then
setProperty('gf.visible', false) 
end
end