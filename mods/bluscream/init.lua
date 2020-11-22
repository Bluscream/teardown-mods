-- hook.add("base.command.quickload", "bluscream_quickload", function(cmd, arg0, ...)
	-- The code here will run when handleCommand() receives a quickload command
-- end)

function getFps()
    return math.floor(1/GetTimeStep())
end
last_fps = 0
function lastFPS()
    fps = getFps()
    if lastTime == nil or fps < 30 or (GetTime() - lastTime) >= 0.1 then
        lastTime = GetTime()
        last_fps = fps
    end
    return last_fps
end

function drawHud()
    UiPush()
      UiAlign("left")
      UiColor(0,0,0)
      UiTranslate(-11, UiHeight()/4)
      --                                     w    h    Do not change from 10
      -- UiImageBox("common/box-solid-10.png", 125, 180, 10, 10)
      UiColor(0,.6,.8)
      UiTranslate(11, 18)
      UiFont("font/bold.ttf", 16)
      UiText(lastFPS() .. " FPS")
      -- UiTranslate(5, 3)
      -- UiRect(100, 1)
      -- UiTranslate(-3, hTextY)
    UiPop()
    end

frame = 0

hook.add("base.draw", function(dt)
    drawHud()
end
)