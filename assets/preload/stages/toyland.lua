function onCreate()

  makeLuaSprite('BG_JULIAN', 'backgrounds/BG_JULIAN', -1240, -335);
  setScrollFactor('BG_JULIAN', 1, 1);
  scaleLuaSprite('BG_JULIAN', 1, 1);
  addLuaSprite('BG_JULIAN', false);

setProperty('defaultCamZoom', 0.5) 
end

function onCountdownStarted()
setProperty('boyfriend.scale.x', 0.75)
setProperty('boyfriend.scale.y', 0.75) 
end