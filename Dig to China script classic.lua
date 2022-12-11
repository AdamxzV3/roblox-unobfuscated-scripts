local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
   Name = "Dig to China script",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Mystific Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "xxx", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord for the key (discord.gg/xxx)",
      FileName = "Mystific Hub",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "DigToChina"
   }
})

Rayfield:Notify({
   Title = "Join The Discord for more scripts",
   Content = "More scripts in our discord",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Why are you reading this?!")
      end
   },
},
})



local Tab = Window:CreateTab("Main Autofarm", 4483362458)
local Section = Tab:CreateSection("Autofarm")

local Button = Tab:CreateButton({
   Name = "Win the game",
   Callback = function()
      function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").ChinaDetector.CFrame)
end,
})


local Button = Tab:CreateButton({
   Name = "Premium Bomb Shop",
   Callback = function()
   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").PremiumOwner.Head.CFrame)
end,
})

local Button = Tab:CreateButton({
   Name = "Normal Bomb Shop",
   Callback = function()
   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace")["i dont even know"]["bomb store"].CFrame)
   end,
   })
   
   
local Button = Tab:CreateButton({
   Name = "Speed (50)",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
   end,
})



Rayfield:LoadConfiguration()