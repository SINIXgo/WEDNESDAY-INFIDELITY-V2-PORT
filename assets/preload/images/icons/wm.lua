local Ypos = 533
local YTpos = 540
local misses = 0
local Valor = 0
SongsIniciales = {'Wistfulness', 'Carnival in Toyland', 'Cravings'}

function onCreate()
initSaveData('WM')
local default = 0
if downscroll then
Ypos = 150
end
makeLuaSprite('weekMissesBar', 'weekMissesBar', 915, Ypos);
setScrollFactor('weekMissesBar', 1, 1);
scaleLuaSprite('weekMissesBar', 0.63, 0.72);
addLuaSprite('weekMissesBar', false);
setProperty('weekMissesBar.alpha', 0.8);  
setObjectCamera('weekMissesBar', 'other');
if checkList(SongsIniciales, songName) == true then
setDataFromSave('WM', 'misses', 0)
end
end

function checkList(list, value)
    for i=0,table.maxn(list) do
        if list[i]==value then return true end
    end
end

function onCountdownStarted()
misses = getDataFromSave('WM', 'misses')

makeLuaText('WeekM', 'Week Misses: '..misses, 1150, 560, YTpos)
setTextSize('WeekM', 26)   
setObjectCamera('WeekM', 'other')
addLuaText('WeekM');
end

function noteMiss(id, direction, noteType, isSustainNote)
misses = misses + 1
setTextString('WeekM', 'Week Misses: '..misses);
end

local BadEnd = false

function onUpdate(elapsed)
if songName == 'Unknown Suffering' then
if misses >= 30 then
BadEnd = true
end
end
end

function onEndSong()
setDataFromSave('WM', 'misses', 0 + misses) 
flushSaveData('WM')
if isStoryMode then
if songName == 'Unknown Suffering' then
if BadEnd == true then
loadSong('last-day', 'last-day', true);    
else
loadSong('sunsets', 'sunsets', true);
end 
end
end
end