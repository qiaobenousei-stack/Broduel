script.lualocal Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "MY CUSTOM HUB",
   LoadingTitle = "Script Loading...",
   LoadingSubtitle = "by Broduel",
   ConfigurationSaving = { Enabled = false }
})

local MainTab = Window:CreateTab("MAIN", 4483345998)

MainTab:CreateToggle({
   Name = "AIM BOT",
   CurrentValue = false,
   Callback = function(Value)
      print("AIM BOT: " .. tostring(Value))
   end,
})

MainTab:CreateSlider({
   Name = "SPEED",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
