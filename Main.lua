local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Runner_Hub", "Synapse")
----------------------------------
local Tab = Window:NewTab("Main")
----------------------------------
local Section = Tab:NewSection("Main")

Section:NewButton("Click Teleport", "", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/JtgfcxHR'),true))()
end)

Section:NewButton("Pathtool", " ", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/aihLtf0f'),true))()
end)

Section:NewButton("Rejoin", " ", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Section:NewButton("Lagswitch X", " ", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/smart23366/Lagswitch-X/main/LagswitchX.lua'),true))()
end)

Section:NewButton("Max zoom", " ", function()
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 50000
end)
----------------------------------
local Tab = Window:NewTab("Player")
----------------------------------
local Section = Tab:NewSection("player")
players = {}
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
 
Section:NewDropdown("Select Player", " ", players, function(abc)
    Select = abc
end)
 
Section:NewButton("Teleport", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)

players = {}
----------------------------------
local Tab = Window:NewTab("Character")
----------------------------------
local Section = Tab:NewSection("speed")
Section:NewSlider("speed", "you speed", 500, 16, function(s) -- 500 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)
