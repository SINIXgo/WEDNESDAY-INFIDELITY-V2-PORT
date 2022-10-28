function onCreate()
if isStoryMode then
makeLuaSprite('weekMissesBar', 'weekMissesBar', 1000, 550);
    scaleObject('weekMissesBar', 0.6,0.6);
    setObjectCamera('weekMissesBar', 'hud');
    addLuaSprite('weekMissesBar',true)
    
    makeLuaText('WeekMissesTxt','', 390, 1070, 558);
    setTextFont('WeekMissesTxt','vcr.ttf')
    scaleObject('WeekMissesTxt', 1.35, 1.35);
    setTextSize('WeekMissesTxt', 20)
    setObjectCamera('WeekMissesTxt', 'hud');
    setTextAlignment('WeekMissesTxt', 'Left') 
    addLuaText('WeekMissesTxt');
end
end

function onUpdate()
fallos = getProperty('songMisses')
setTextString('WeekMissesTxt', 'Week Misses: ' .. fallos)
end