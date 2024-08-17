local notificationSound = Instance.new'Sound'
notificationSound.SoundId = 'rbxassetid://6897623656'
notificationSound.Volume = 1
notificationSound.Parent = game.Players.LocalPlayer.PlayerGui
lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/Library.lua"))()
function notify(Text, Duration)
    lib:Notify(Text, Duration) then
  notificationSound:Play()
end
_spawn = task.spawn
_spawn(function()
while wait(.5) do
for _,v in pairs(workspace.Game.Effects:GetDescendants()) do
if v.Name == "Tickets" then
v:Destroy()
elseif v.Name == "Ingore" then
v:Destroy()
elseif v.Name == "Powerups" then
v:Destroy()
elseif v.Name == "Deployables" then
v:Destroy()
end
end
for _,v in pairs(game.ReplicatedStorage:GetDescendants()) do
if v.Name == "OtherStorage" then
v:Destroy()
end
end
end
end)
notify("[ YOU HUB ] : Remove Tickets Enabled")
notify("[ YOU HUB ] : Remove Ingore Enabled")
notify("[ YOU HUB ] : Remove Powerups Enabled")
notify("[ YOU HUB ] : Remove Deployables Enabled")
notify("[ YOU HUB ] : Remove OtherStorage Enabled")
notify("[ YOU HUB (Warning) ] : Cant Revive Players")
notify("[ YOU HUB (Warning) ] : By rechedmcvn & GV , Goodluck GamePlay")
