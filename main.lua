-- Call the server debugger. Disable it in production.
require('mobdebug').start()

-- RegisterMod("Mod name", 1)
local myMod = RegisterMod("hello-mod", 1)

function myMod:Text()
  --Isaac.RenderText("Your text", x, y, r, g, b, alpha)
  Isaac.RenderText("Hello World!", 45, 15, 255, 255, 255, 255)
end

-- Add a callback funcion called every frame
myMod:AddCallback(ModCallbacks.MC_POST_RENDER, myMod.Text)