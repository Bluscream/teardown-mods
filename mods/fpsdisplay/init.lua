function getFps()
    return math.floor(1/GetTimeStep())
end

last_fps = 0
function lastFPS()
    if lastTime == nil or (GetTime() - lastTime) >= 0.1 then
        lastTime = GetTime()
        last_fps = getFps()
    end
    return last_fps
end

function drawHud()
    UiPush()
      UiAlign("left")
      UiColor(0,0,0)
      UiTranslate(-11, UiHeight()/4)
      UiColor(0,.6,.8)
      UiTranslate(11, 18)
      UiFont("font/bold.ttf", 16)
      UiText(lastFPS() .. " FPS")
    UiPop()
end

hook.add("base.draw", function(dt)
    drawHud()
end
)