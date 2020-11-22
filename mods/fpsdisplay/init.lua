function getFps()
    return math.floor(1/GetTimeStep())
end

local lastFPS = function()
    if lastTime == nil or (GetTime() - lastTime) >= 0.1 then
        local lastTime = GetTime()
        local last_fps = getFps()
    end
    return last_fps
end

local drawHud = function()
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