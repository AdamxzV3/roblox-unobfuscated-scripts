   function teleportTO(placeCFrame)
    local player = game.Players.LocalPlayer;
    if player.Character then
    player.Character.HumanoidRootPart.CFrame = placeCFrame;
 end
end
teleportTO(xxx.CFrame) --in the xxx part replace with a path you copied, if you want the path you want to teleport too, you need and dex explorer.
--also you need to keep the "CFrame"