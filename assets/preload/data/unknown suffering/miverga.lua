local PuedeEsquivar = false
local Esquivado = false
local healthdrain = 0

function onCreate()
makeAnimatedLuaSprite('warningshit', 'warning', -140, 250)
addAnimationByPrefix('warningshit', 'warning', 'Advertencia', 24, false)
objectPlayAnimation('warningshit', 'warning')
setObjectCamera('warningshit', 'other')
addLuaSprite('warningshit', true)
setProperty('warningshit.alpha', 0)

makeAnimatedLuaSprite('Ataque', 'characters/WeekSuicide/Ataque', defaultOpponentX-280, defaultOpponentY-100);
addAnimationByPrefix('Ataque', 'Ataque', 'Hit Mouse', 24, false);  
objectPlayAnimation('Ataque', 'Ataque', true)
scaleLuaSprite('Ataque', 1.2, 1.2);
addLuaSprite('Ataque', true);
setProperty('Ataque.alpha', 0)
end

function onCreatePost()
    --addHaxeLibrary('FlxRandom', 'flixel.math')
    for i = 0, getProperty('eventNotes.length') - 1 do
        if getPropertyFromGroup('eventNotes', i, 'event') == 'Do Syringe' then
            setPropertyFromGroup('eventNotes', i, 'strumTime', getPropertyFromGroup('eventNotes', i, 'strumTime')-(((60 / 200) * 3) * 1000))
        end
    end
end

function onEvent(name, value1, value2)
if name == 'Do Syringe' then
playSound('Warning', 2)
objectPlayAnimation('warningshit', 'warning')
setProperty('dad.alpha', 0)
setProperty('Ataque.alpha', 1)
objectPlayAnimation('Ataque', 'Ataque', true)
PuedeEsquivar = true
runTimer('Esquive', 0.45)
end
end

function onUpdate(elapsed)
if PuedeEsquivar == true then
if keyJustPressed('space') or botPlay or mouseReleased() then
cancelTimer('Anim');
triggerEvent('Play Animation', 'dodge', 'bf')
Esquivado = true
setProperty('warningshit.alpha', 0)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Esquive' and Esquivado == false then
Esquivado = false;
PuedeEsquivar = false
triggerEvent('Play Animation', 'at', 'bf')
setProperty('dad.alpha', 1)
setProperty('Ataque.alpha', 0)
setProperty('warningshit.alpha', 1)
Efecto()
elseif tag == 'Esquive' and Esquivado == true then
setProperty('dad.alpha', 1)
setProperty('Ataque.alpha', 0)
setProperty('warningshit.alpha', 1)
Esquivado = false;
PuedeEsquivar = false
end
end

function Efecto()
 local timesAngle = 0
    local timesXY = 0
    local timesCam = 0
    local int = getRandomInt(0,3) --testing stuff rn

    if int == 1 then
        local arrow0 = getPropertyFromGroup('strumLineNotes', 0, 'angle')
        local arrow1 = getPropertyFromGroup('strumLineNotes', 1, 'angle')
        local arrow2 = getPropertyFromGroup('strumLineNotes', 2, 'angle')
        local arrow3 = getPropertyFromGroup('strumLineNotes', 3, 'angle')

        local arrow4 = getPropertyFromGroup('strumLineNotes', 4, 'angle')
        local arrow5 = getPropertyFromGroup('strumLineNotes', 5, 'angle')
        local arrow6 = getPropertyFromGroup('strumLineNotes', 6, 'angle')
        local arrow7 = getPropertyFromGroup('strumLineNotes', 7, 'angle')
        for i = 0, timesAngle do
            cancelTween('tweenAngle1'..i)
            cancelTween('tweenAngle2'..i)
            cancelTween('tweenAngle3'..i)
            cancelTween('tweenAngle4'..i)

            cancelTween('tweenAngle5'..i)
            cancelTween('tweenAngle6'..i)
            cancelTween('tweenAngle7'..i)
            cancelTween('tweenAngle8'..i)
        end
        noteTweenAngle('tweenAngle1'..timesAngle, 0, arrow0+getRandomFloat(-40,40), getRandomFloat(15,20))
        noteTweenAngle('tweenAngle2'..timesAngle, 1, arrow1+getRandomFloat(-40,40), getRandomFloat(15,20))
        noteTweenAngle('tweenAngle3'..timesAngle, 2, arrow2+getRandomFloat(-40,40), getRandomFloat(15,20))
        noteTweenAngle('tweenAngle4'..timesAngle, 3, arrow3+getRandomFloat(-40,40), getRandomFloat(15,20))

        noteTweenAngle('tweenAngle5'..timesAngle, 4, arrow4+getRandomFloat(-40,40), getRandomFloat(15,20))
        noteTweenAngle('tweenAngle6'..timesAngle, 5, arrow5+getRandomFloat(-40,40), getRandomFloat(15,20))
        noteTweenAngle('tweenAngle7'..timesAngle, 6, arrow6+getRandomFloat(-40,40), getRandomFloat(15,20))
        noteTweenAngle('tweenAngle8'..timesAngle, 7, arrow7+getRandomFloat(-40,40), getRandomFloat(15,20))
        --debugPrint("ANGLE movement code ran")
    elseif int == 2 then
        local arrow0 = getPropertyFromGroup('strumLineNotes', 0, 'x')
        local arrow1 = getPropertyFromGroup('strumLineNotes', 1, 'x')
        local arrow2 = getPropertyFromGroup('strumLineNotes', 2, 'x')
        local arrow3 = getPropertyFromGroup('strumLineNotes', 3, 'x')

        local arrow4 = getPropertyFromGroup('strumLineNotes', 4, 'x')
        local arrow5 = getPropertyFromGroup('strumLineNotes', 5, 'x')
        local arrow6 = getPropertyFromGroup('strumLineNotes', 6, 'x')
        local arrow7 = getPropertyFromGroup('strumLineNotes', 7, 'x')

        local arrow02 = getPropertyFromGroup('strumLineNotes', 0, 'y')
        local arrow12 = getPropertyFromGroup('strumLineNotes', 1, 'y')
        local arrow22 = getPropertyFromGroup('strumLineNotes', 2, 'y')
        local arrow32 = getPropertyFromGroup('strumLineNotes', 3, 'y')

        local arrow42 = getPropertyFromGroup('strumLineNotes', 4, 'y')
        local arrow52 = getPropertyFromGroup('strumLineNotes', 5, 'y')
        local arrow62 = getPropertyFromGroup('strumLineNotes', 6, 'y')
        local arrow72 = getPropertyFromGroup('strumLineNotes', 7, 'y')
        for i = 0, timesXY do
            cancelTween('tweenX1'..i)
            cancelTween('tweenX2'..i)
            cancelTween('tweenX3'..i)
            cancelTween('tweenX4'..i)

            cancelTween('tweenY1'..i)
            cancelTween('tweenY2'..i)
            cancelTween('tweenY3'..i)
            cancelTween('tweenY4'..i)

            --player's strums

            cancelTween('tweenX5'..i)
            cancelTween('tweenX6'..i)
            cancelTween('tweenX7'..i)
            cancelTween('tweenX8'..i)

            cancelTween('tweenY5'..i)
            cancelTween('tweenY6'..i)
            cancelTween('tweenY7'..i)
            cancelTween('tweenY8'..i)
        end
        noteTweenX('tweenX1'..timesXY, 0, arrow0+getRandomFloat(-30,30), getRandomFloat(15,20))
        noteTweenX('tweenX2'..timesXY, 1, arrow1+getRandomFloat(-30,30), getRandomFloat(15,20))
        noteTweenX('tweenX3'..timesXY, 2, arrow2+getRandomFloat(-30,30), getRandomFloat(15,20))
        noteTweenX('tweenX4'..timesXY, 3, arrow3+getRandomFloat(-30,30), getRandomFloat(15,20))

        noteTweenY('tweenY1'..timesXY, 0, arrow02+getRandomFloat(-35,35), getRandomFloat(15,20))
        noteTweenY('tweenY2'..timesXY, 1, arrow12+getRandomFloat(-35,35), getRandomFloat(15,20))
        noteTweenY('tweenY3'..timesXY, 2, arrow22+getRandomFloat(-35,35), getRandomFloat(15,20))
        noteTweenY('tweenY4'..timesXY, 3, arrow32+getRandomFloat(-35,35), getRandomFloat(15,20))

        --player's strums

        noteTweenX('tweenX5'..timesXY, 4, arrow4+getRandomFloat(-30,30), getRandomFloat(15,20))
        noteTweenX('tweenX6'..timesXY, 5, arrow5+getRandomFloat(-30,30), getRandomFloat(15,20))
        noteTweenX('tweenX7'..timesXY, 6, arrow6+getRandomFloat(-30,30), getRandomFloat(15,20))
        noteTweenX('tweenX8'..timesXY, 7, arrow7+getRandomFloat(-30,30), getRandomFloat(15,20))

        noteTweenY('tweenY5'..timesXY, 4, arrow42+getRandomFloat(-35,35), getRandomFloat(15,20))
        noteTweenY('tweenY6'..timesXY, 5, arrow52+getRandomFloat(-35,35), getRandomFloat(15,20))
        noteTweenY('tweenY7'..timesXY, 6, arrow62+getRandomFloat(-35,35), getRandomFloat(15,20))
        noteTweenY('tweenY8'..timesXY, 7, arrow72+getRandomFloat(-35,35), getRandomFloat(15,20))

        --debugPrint("XY movement code ran")
    elseif int == 3 then
        local randomcam = getRandomInt(0,2)
        local randomint = getRandomInt(0,2)

        local randomnum1 = getRandomFloat(2,7)
        local randomnum2 = getRandomFloat(-2,-7)
        
        local camname = ''
        if randomcam >= 1 then
            camname = 'camGame'
            --debugPrint(camname)
        end
        if randomcam >= 2 then
            camname = 'camHUD'
            --debugPrint(camname)
        end

        for i = 0, timesCam do
            cancelTween('tweenCamAngle'..i)
        end
        if randomint >= 1 then
            doTweenAngle('tweenCamAngle'..timesCam, camname, randomnum1, getRandomFloat(15,20))
            --debugPrint(randomint..' tween done')
        end
        if randomint >= 2 then
            doTweenAngle('tweenCamAngle'..timesCam, camname, randomnum2, getRandomFloat(15,20))
            --debugPrint(randomint..' tween done')
        end

        --debugPrint("camera angle code ran")
    end
    --reasoning to avoid them
    healthdrain = healthdrain+0.0075
    --debugPrint(healthdrain)
    timesAngle = timesAngle+1
    timesCam = timesCam+1
    timesXY = timesXY+1
end

function onStepHit()
    setProperty('health', getProperty('health')-healthdrain)

    if healthdrain > 0 then
        healthdrain = healthdrain-0.0001 --gradually lowering it
    end
end