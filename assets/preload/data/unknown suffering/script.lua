function onCreate()
addCharacterToList('smileeeeerposes', 'dad');
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if curStep >= 384 then
triggerEvent('Change Character', 1, 'smileeeeerposes');
runTimer('Idle', 0.25, 1);
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Idle' then
triggerEvent('Change Character', 1, 'smileeeeer');
end
end

function onStepHit()
if curStep == 1670 then
noteTweenAlpha("A5", 4, 0, 0.5, "linear")
noteTweenAlpha("A6", 5, 0, 0.5, "linear")
noteTweenAlpha("A7", 6, 0, 0.5, "linear")
noteTweenAlpha("A8", 7, 0, 0.5, "linear")
end
if curStep == 1859 then
noteTweenAlpha("A5", 4, 1, 0.5, "linear")
noteTweenAlpha("A6", 5, 1, 0.5, "linear")
noteTweenAlpha("A7", 6, 1, 0.5, "linear")
noteTweenAlpha("A8", 7, 1, 0.5, "linear")
end
if curStep == 1872 then
noteTweenAlpha("A1", 0, 0, 0.5, "linear")
noteTweenAlpha("A2", 1, 0, 0.5, "linear")
noteTweenAlpha("A3", 2, 0, 0.5, "linear")
noteTweenAlpha("A4", 3, 0, 0.5, "linear")
end
if curStep == 1920 then
noteTweenAlpha("A1", 0, 1, 0.5, "linear")
noteTweenAlpha("A2", 1, 1, 0.5, "linear")
noteTweenAlpha("A3", 2, 1, 0.5, "linear")
noteTweenAlpha("A4", 3, 1, 0.5, "linear")
end
if curStep == 2256 then
doTweenAlpha('camGame', 'camGame', 0, 0.3, 'linear')
doTweenAlpha('camHUD', 'camHUD', 0, 1, 'linear')
doTweenAlpha('camOther', 'camOther', 0, 1, 'linear')
end
end