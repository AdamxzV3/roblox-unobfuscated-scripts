local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Raise a Noob",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = MysHub, -- Create a custom folder for your hub/game
      FileName = "Mystific Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "xx"-- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Mystific Hub",
      Subtitle = "Key System",
      Note = "Join the discord for the key (https://discord.gg/xx)",
      FileName = "Mystific Key",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "RaiseANoob"
   }
})

local Tab = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Auto Farming")


local Button = Tab:CreateButton({
   Name = "Inf Jump",
   Callback = function()
   game:GetService("UserInputService").JumpRequest:connect(function() game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
    end)
   end,
})


local Toggle = Tab:CreateToggle({
   Name = "Auto Click",
   CurrentValue = false,
   Flag = "Auto Clicker", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       getgenv().AutoClick = (Value);
       while getgenv().AutoClick == true do
   game:GetService("ReplicatedStorage").ClickNoob:FireServer()
   wait()
      end
   end,
})
Toggle:Set(false)


local Slider = Tab:CreateSlider({
   Name = "Speed",
   Range = {10, 100},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       getgenv().Speed = (Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Tab = Window:CreateTab("Teleports", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Teleports!")



local Button = Tab:CreateButton({
   Name = "Basement Door",
   Callback = function()
      function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").BasementDoor.Part.CFrame)
   end,
})

local Button = Tab:CreateButton({
   Name = "Quandale Dingle Obby (end)",
   Callback = function()
      function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").Obby.EndPart.CFrame)
   end,
})


local Button = Tab:CreateButton({
   Name = "Art Gallery (Start, Safe Area)",
   Callback = function()
   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace")["Art Gallery"].StartWall.CFrame)
  end,
})


local Button = Tab:CreateButton({
   Name = "Backrooms Exit",
   Callback = function()
   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").BackroomsExit.CFrame)
   end,
})







local Button = Tab:CreateButton({
   Name = "Enchanced Noob Cola",
   Callback = function()
   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").Poolrooms["Enhanced Noob Cola"].CFrame)
   end,
})

local Button = Tab:CreateButton({
   Name = "Haunted House Exit",
   Callback = function()
   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(game:GetService("Workspace").HauntedHouseExit.CFrame)
   end,
})

local Tab = Window:CreateTab("The Noob Food Market", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Click and buy food!")




local Button = Tab:CreateButton({
   Name = "Noob Food",
   Callback = function()
   local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Noob Food"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Enchanced Noob Food",
   Callback = function()
   local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Enhanced Noob Food"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Ice Cream",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Ice Cream"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})



local Tab = Window:CreateTab("The noob narket", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Click and buy Powerfull Things!")



local Button = Tab:CreateButton({
   Name = "Bouncy Ball",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Bouncy Ball"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})




local Button = Tab:CreateButton({
   Name = "Calendar",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Calender"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})



local Button = Tab:CreateButton({
   Name = "Sussy Trash Can",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Sussy Trash Can"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Blocky Hat",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Blocky Hat"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Guest Friend",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Guest Friend"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Thermometer",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Thermometer"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Target Practice",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Target Practice"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Tix Toilet",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Tix Toilet"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})



local Button = Tab:CreateButton({
   Name = "Black Hole",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Black Hole"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})




local Button = Tab:CreateButton({
   Name = "Bed",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Bed"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})



local Button = Tab:CreateButton({
   Name = "Talking Ben",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Talking Ben"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Auto Clicker",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Autoclicker"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Box The 2nd",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Box The 2nd"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Unjam Fancy TV",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Unjam Fancy TV"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Real Couch (Requires Imaginary Couch)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Real Couch"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Upgraded Box The 2nd (Requires Box The 2nd)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Upgraded Box The 2nd"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Fan",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Fan"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Talking Tom (Requires Talking Ben)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Talking Tom"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Bacon Hair Friend",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Bacon Hair Friend"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Fire Place",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Fireplace"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})



local Button = Tab:CreateButton({
   Name = "Improved Autoclicker",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Improved Autoclicker"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})



local Button = Tab:CreateButton({
   Name = "Talking Angela (Requires Talking Tom)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Talking Angela"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Quandale Supporter",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Quandale Supporter"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})


local Button = Tab:CreateButton({
   Name = "Buffed Items",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Buffed Items"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Autoclicker Powerhouse",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Autoclicker Powerhouse"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "AC Unit  (Requires Fan)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "AC Unit"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Jeep (Requires Outside)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Jeep"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})


local Button = Tab:CreateButton({
   Name = "Baller (Requires Fireplace)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Baller"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Floppa",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Floppa"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Caught In 4k Ultra HD TV (Requires Fancy TV Unjammed)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Caught in 4k Ultra HD TV"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Angry Dad From India (Requires Magic Box)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Angry Dad from India"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Upgraded Jeep (Requires Jeep)",
   Callback = function()
local args = {
    [1] = "narket",
    [2] = 1,
    [3] = "Upgraded Jeep"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
   end,
})




local Tab = Window:CreateTab("the Outside narket", 4483362458)
local Section = Tab:CreateSection("Buy outside Things!")

local Button = Tab:CreateButton({
   Name = "Front Door Key",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Front Door Key"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
         end,
})

local Button = Tab:CreateButton({
   Name = "Match",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Match"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
         end,
})

local Button = Tab:CreateButton({
   Name = "Umbrella",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Umbrella"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

         end,
})

local Button = Tab:CreateButton({
   Name = "Sword",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Sword"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
         end,
})

local Button = Tab:CreateButton({
   Name = "Road Barricades",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Road Barricades"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
         end,
})

local Button = Tab:CreateButton({
   Name = "Controllable Bobux Turret",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Controllable Bobux Turret"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
         end,
})

local Button = Tab:CreateButton({
   Name = "Noob-Controlled Bobux Turret",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 2,
    [3] = "Noob-Controlled Bobux Turret"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
         end,
})

local Tab = Window:CreateTab("the bobux farm market", 4483362458)
local Section = Tab:CreateSection("Buy Farm Things!")



local Button = Tab:CreateButton({
   Name = "Tix (Requires Bobux Farm A)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 3,
    [3] = "Tix"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})

local Button = Tab:CreateButton({
   Name = "Bobux Farm A (Requires outside)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 3,
    [3] = "Bobux Farm A"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})

local Button = Tab:CreateButton({
   Name = "Bobux Farm B (Requires Bobux Farm B)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 3,
    [3] = "Bobux Farm B"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})

local Button = Tab:CreateButton({
   Name = "Minecraft Farmers (Requires Bobux Farm A)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 3,
    [3] = "Minecraft Farmers"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})

local Button = Tab:CreateButton({
   Name = "Tix Sprinklers (Requires Bobux Farm A)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 3,
    [3] = "Tix Sprinklers"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})

local Button = Tab:CreateButton({
   Name = "Tix GreenHouse (Requires Tix Sprinklers)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 3,
    [3] = "Tix Greenhouse"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

   end,
})

local Tab = Window:CreateTab("the toaster narket", 4483362458)
local Section = Tab:CreateSection("Buy toaster Things!")


local Button = Tab:CreateButton({
   Name = "Toaster 2.0 (Requires Toaster 1.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 2.0"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
          end,
})


local Button = Tab:CreateButton({
   Name = "Toaster 3.0 (Requires Toaster 2.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 3.0"
}
game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
          end,
})

local Button = Tab:CreateButton({
   Name = "Toaster 4.0 (Requires Toaster 3.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 4.0"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

          end,
})

local Button = Tab:CreateButton({
   Name = "Toaster 5.0 (Requires Toaster 4.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 5.0"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

          end,
})

local Button = Tab:CreateButton({
   Name = "Toaster 6.0 (Requires Toaster 5.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 6.0"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

          end,
})

local Button = Tab:CreateButton({
   Name = "Toaster 7.0 (Requires Toaster 6.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 7.0"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

          end,
})

local Button = Tab:CreateButton({
   Name = "Toaster 8.0 (Requires Toaster 7.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 8.0"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

          end,
})

local Button = Tab:CreateButton({
   Name = "Toaster 9.0 (Requires Toaster 8.0)",
   Callback = function()
       local args = {
    [1] = "narket",
    [2] = 4,
    [3] = "Toaster 9.0"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))

          end,
})