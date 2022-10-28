Zoom = true

function onCreate()
  makeLuaSprite('background', 'backgrounds/jank/background', -988, -656);
  setScrollFactor('background', 0.7, 0.7);
  scaleLuaSprite('background', 1.4*2, 1.4*2);
  addLuaSprite('background', false);

  makeLuaSprite('ground', 'backgrounds/jank/ground', -988, -756);
  setScrollFactor('ground', 1, 1);
  scaleLuaSprite('ground', 1.4*2, 1.4*2);
  addLuaSprite('ground', false);

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

  setProperty('defaultCamZoom', 0.55) 
end

function onEvent(name, value1, value2)
	if name == 'lyrics' then
		BarsOn()
		if value1 == '' then
		BarsOff()
		end
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

function opponentNoteHit()
cameraShake('camOther', '0.006', '0.11')	
triggerEvent('Screen Shake', '0.11, 0.009', '0.11, 0.009')
health = getProperty('health')
if getProperty('health') > 0.10 then
setProperty('health', health- 0.015);
end
end