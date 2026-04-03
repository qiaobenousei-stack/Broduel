script.lua
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Broduel Hub [Brainrot]", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "BrainrotTest"
})

local Tab = Window:MakeTab({
    Name = "Main Features",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- AUTO PLAY (スピード調整)
Tab:AddToggle({
    Name = "AUTO PLAY",
    Default = false,
    Callback = function(Value)
        _G.AutoPlay = Value
        spawn(function()
            while _G.AutoPlay do
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("Humanoid") then
                    if not char:FindFirstChildOfClass("Tool") then
                        char.Humanoid.WalkSpeed = 70 -- 盗んでない時は70
                    end
                end
                task.wait(0.1)
            end
        end)
    end    
})

-- AIM BAT (自動攻撃 & スピード固定)
Tab:AddToggle({
    Name = "AIM BAT",
    Default = false,
    Callback = function(Value)
        _G.AimBat = Value
        spawn(function()
            while _G.AimBat do
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("Humanoid") then
                    char.Humanoid.WalkSpeed = 53 -- AIM BAT中は強制53
                    local bat = char:FindFirstChildOfClass("Tool")
                    if baこt then bat:Activate() end
                end
                task.wait(0.1)
            end
        end)
    end    
})

OrionLib:Init()
