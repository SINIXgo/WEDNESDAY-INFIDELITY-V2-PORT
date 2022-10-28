function onCreate()
makeLuaSprite('Saturacion','', 0, 0)
makeGraphic('Saturacion', screenWidth, screenHeight, '2C4747')
setObjectCamera('Saturacion', 'other')
setProperty('Saturacion.alpha', 0)
addLuaSprite('Saturacion', true)
setBlendMode('Saturacion','SUBTRACT')
end

function onEvent(name, value1, value2)
if name == 'Asbel Lights v3' then
if value1 == '1' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '2C4747', 0.5, 'linear');
elseif value1 == '2' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '2C3847', 0.5, 'linear');
elseif value1 == '3' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '2F3147', 0.5, 'linear');
elseif value1 == '4' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '372F47', 0.5, 'linear');
elseif value1 == '5' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '472F3C', 0.5, 'linear');
elseif value1 == '6' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '472F2F', 0.5, 'linear');
elseif value1 == '7' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '47362F', 0.5, 'linear');
elseif value1 == '8' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '47472F', 0.5, 'linear');
elseif value1 == '9' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '37472F', 0.5, 'linear');
elseif value1 == '10' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '394A31', 0.5, 'linear');
elseif value1 == '11' then     
setProperty('Saturacion.alpha', 1);
doTweenColor('Saturacion', 'Saturacion', '2F4738', 0.5, 'linear');
elseif value1 == '0' then     
setProperty('Saturacion.alpha', 0);
doTweenColor('Saturacion', 'Saturacion', '000000', 0.5, 'linear');
end
end
end